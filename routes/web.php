<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\InnerCategoryController;
use App\Http\Controllers\MessageController;
use App\Http\Controllers\NotificationController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductTypeController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PrintController;
use App\Models\Customer;
use App\Models\Order;
use App\Models\OrderProduct;
use Illuminate\Support\Facades\Auth;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

define('PAGINATION', 50);

Route::get('/', function () {
    return view('auth.login');
})->middleware('guest');
Auth::routes(['verify' => true]);

Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath', 'auth']
    ],
    function () {
        Route::get('customers/documentation', [CustomerController::class, 'allUnverifiedAccounts'])->name('customers.documentation');
        Route::get('customer/edit/{id}', [CustomerController::class, 'edit'])->name('customer.edit');


        Route::group(['as' => 'admin.', 'prefix' => 'admin'], function () {

            Route::get('dashboard', [HomeController::class, 'index'])->name('dashboard');
            Route::resource('admins', AdminController::class);
            Route::resource('categories', CategoryController::class);
            Route::resource('inner_categories', InnerCategoryController::class);
            Route::resource('products', ProductController::class);
            Route::resource('product_types', ProductTypeController::class);
            Route::resource('orders', OrderController::class);
            Route::resource('notifications', NotificationController::class);
            Route::resource('messages', MessageController::class);


            Route::get('/export-orders-excel', [OrderController::class, 'exportExcel'])->name('export.excel');
            Route::get('/export-orders-csv', [OrderController::class, 'exportCSV'])->name('export.csv');
            Route::get('/print-orders', [PrintController::class, 'printOrders']);
            Route::post('/view/message', [MessageController::class, 'viewMessage'])->name('view.message');

        });
    }
);