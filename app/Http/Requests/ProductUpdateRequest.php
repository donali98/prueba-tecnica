<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'string|min:2|max:2000',
            'url' => 'string|max:7000|min:2',
            'price' => 'numeric|min:0.01',
            'description' => 'string|min:2|max:7000',
        ];
    }

    public function attributes()
    {
        return [
            'name' => 'nombre del producto',
            'url' => 'url de la foto del producto',
            'price' => 'precio de venta',
            'description' => 'descripción del producto'
        ];
    }
}
