<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * Clase heredada de Factory que será utilizada para la 
 * creación de registros aleatorios en la db.
 *
 * @author  Alejandro Hernández
 */
class ProductFactory extends Factory
{
    /**
     * Variable que representa el modelo a emplear
     * para generar los registros aleatorios
     *
     * @var string
     */
    protected $model = Product::class;
    
    /**
     * Define la forma específica que deben tener los campos a generar
     *
     * @return array
     */
    public function definition()
    {
        return [
            'barcode' => $this->faker->ean13(),
            'name' => $this->faker->unique()->words(2, true),
            'url' => $this->faker->imageUrl(),
            'price' => $this->faker->randomFloat(2, 0.01, 9999.99),
            'description' => $this->faker->sentence(),

        ];
    }
}
