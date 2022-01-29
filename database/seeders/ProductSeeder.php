<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Genera 50 Productos
     * @return void
     */
    public function run()
    {
        Product::factory()->count(50)->create();
    }
}
