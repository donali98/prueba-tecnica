<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Clase que representa el modelo Producto 
 *
 * @author  Alejandro Hernández
 */
class Product extends Model
{
    use HasFactory,SoftDeletes;

    protected $primaryKey = 'barcode';


    protected $fillable = [
        'barcode',
        'name',
        'url',
        'price',
        'description'       
    ];
}
