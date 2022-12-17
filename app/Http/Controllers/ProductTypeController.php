<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Traits\HtmlTrait;

class ProductTypeController extends Controller
{
    use HtmlTrait;

    public function show(Request $request, $id)
    {
        try {
            $product = Product::findOrFail($id);
            $product_types = $product->products;
            return view('admin.product_types.show', compact('product_types', 'product'));
        } catch (\Exception $e) {
            return $e->getMessage();
        }
    }
}
