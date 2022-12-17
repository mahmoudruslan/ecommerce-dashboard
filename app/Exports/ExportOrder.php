<?php

namespace App\Exports;

use App\Models\Order;
use App\Models\OrderProduct;
use Maatwebsite\Excel\Concerns\FromCollection;

class ExportOrder implements FromCollection
{

    public function collection()
    {
        $products = Order::get()->map(function ($table) {
            $table->makeHidden(['product_id']);
            $table->makeHidden(['id']);
                $table->customer_name = $table->customer->name;
                $table->customer_phone = $table->customer->phone;
                $table->product_names = __('Product names') .' : '. $table->products->map(function($product){
                    return $product->name_ar =  $product->name_ar;
                });
                $table->customer_address = $table->customer->address;
            return $table;
        });
        return $products;
    }
}
