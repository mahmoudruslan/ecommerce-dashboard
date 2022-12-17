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
        foreach($products as $product)
        {
            $product->update([
                'product_id' => rand(1, 50),
                'first_appearing' => $product->id,
            ]);
        }

    }
}
