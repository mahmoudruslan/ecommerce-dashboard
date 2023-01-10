<?php

namespace Database\Seeders;

use App\Models\InnerCategory;
use Illuminate\Database\Seeder;
use App\Models\Product;
use Illuminate\Support\Str;


class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Product::factory()->count(100)->create();

        $products = Product::get();
        $i = 0;
        foreach($products as $product)
        {
            $i++;
            if($i > 15){
                $product->update([
                    'product_id' => rand(1, 15),
                    'first_appearing' => $product->id,
                ]);
            }
            
        }

    }
}
