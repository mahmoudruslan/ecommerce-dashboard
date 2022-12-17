<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\InnerCategory;
use Illuminate\Support\Str;


class InnerCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        InnerCategory::factory()->count(10)->create();
    }
}
