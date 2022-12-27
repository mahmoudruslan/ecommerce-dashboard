<?php

namespace App\Http\Controllers\Api\Admin;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Traits\GeneralTrait;

class InnerCategoryController extends Controller
{
    use GeneralTrait;

    public function show($id)
    {
        try {
            $products = Product::where('inner_category_id', $id)->with(['types' => function ($query) {
                $query->select(
                    'id',
                    'name_ar',
                    'details_ar',
                    'photo',
                    'price',
                    'unit',
                    'discount_price',
                    'product_id',
                    'amount'
                );
            }])
            
            ->get(['id', 'name_ar', 'details_ar', 'photo', 'price', 'unit', 'discount_price', 'product_id', 'amount']);
            if (!$products) {
                return $this->returnError('404', 'categories not found');
            }
            return $this->returnData('products', $products, 'success');
        } catch (\Exception $e) {
            return $this->returnError($e->getCode(), $e->getMessage());
        }
    }
}
