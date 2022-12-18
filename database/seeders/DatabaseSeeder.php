<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // User::factory(10)->create();
        $this->call(UserTableSeeder::class);
        $this->call(CustomerTableSeeder::class);
        $this->call(CategoryTableSeeder::class);
        $this->call(InnerCategoryTableSeeder::class);
        $this->call(ProductTableSeeder::class);
        $this->call(OrderTableSeeder::class);
        $this->call(OrderProductTableSeeder::class);
        $this->call(OrderPriceSeeder::class);
        $this->call(AdTableSeeder::class);

    }
}
