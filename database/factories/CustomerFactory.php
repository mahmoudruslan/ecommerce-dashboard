<?php

namespace Database\Factories;

use App\Models\Customer;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;


class CustomerFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Customer::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'phone' => '010' . rand('10000000', '99999999'),
            'other_phone' => '010' . rand('10000000', '99999999'),
            'governorate' => $this->faker->word,
            'district' => $this->faker->word,
            'activity_type' => $this->faker->word,
            'password' => '00000000',
            'address' => $this->faker->sentence,
        ];
    }
}
