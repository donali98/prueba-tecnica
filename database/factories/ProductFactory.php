<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    protected $model = Product::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'barcode' => $this->faker->ean13(),
            'name' => $this->faker->name(),
            'url' =>$this->faker->imageUrl(),
            'price' => $this->faker->randomFloat(2, 0, 10000),
            'description' => $this->faker->sentence(),

        ];
    }
}
