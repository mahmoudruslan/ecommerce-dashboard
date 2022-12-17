<?php

namespace Database\Factories;

use App\Models\InnerCategory;
use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $categories = InnerCategory::pluck('id');

        return [
            // 'first_appearing' => rand('0', '2'),
            'name_ar' => $this->faker->word,
            'name_en' => $this->faker->word,
            'details_ar' => $this->faker->sentence,
            'details_en' => $this->faker->sentence,
            'amount' => rand('10', '100'),
            'photo' => 'example.jpg',
            'price' => rand('111', '999'),
            'discount_price' => rand('5', '30'),
            'inner_category_id' => $categories->random(),
        ];
    }
}
