<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductCreateRequest extends FormRequest
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
            'barcode' => 'required|string|max:250',
            'name' => 'required|string|min:2|max:2000',
            'url' => 'string|max:7000|min:2',
            'price' => 'required|numeric|min:0.01',
            'description' => 'string|min:2|max:7000',
        ];
    }

    public function attributes()
    {
        return [
            'barcode' => 'código de barra',
            'name' => 'nombre del producto',
            'url' => 'url de la foto del producto',
            'price' => 'precio de venta',
            'description' => 'descripción del producto'
        ];
    }

}
