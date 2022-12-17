<?php

namespace Database\Factories;

use App\Models\Category;
use App\Models\InnerCategory;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class InnerCategoryFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = InnerCategory::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $categories = Category::pluck('id');

        return [
            'name_ar' => $this->faker->word,
            'name_en' => $this->faker->word,
            'photo' => 'example.jpg',
            'category_id' => $categories->random()
        ];
    }
}
