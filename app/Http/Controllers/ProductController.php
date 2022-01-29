<?php

namespace App\Http\Controllers;

use App\Http\Helpers\Constants;
use App\Http\Requests\ProductCreateRequest;
use App\Http\Requests\ProductUpdateRequest;
use App\Models\Product;
use Exception;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Database\QueryException;

class ProductController extends Controller
{
    /**
     * Muestra todos los productos
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {

            return response()->json([Constants::SUCCESS_PLURAL_KEY, Product::paginate(15)], 200);
        } catch (Exception $e) {
            return response()->json([Constants::ERROR_KEY => Constants::SERVER_ERROR_MESSAGE], 500);
        }
    }


    /**
     * Crea y guarda un nuevo producto
     *
     * @param  \App\Http\Requests\ProductCreateRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductCreateRequest $request)
    {

        try {

            $product = new Product([
                'barcode' => $request->barcode,
                'name' => $request->name,
                'url' => $request->url,
                'price' => $request->price,
                'description' => $request->description,
            ]);

            $product->save();
            return response()->json([Constants::SUCCESS_SINGLE_KEY => $product], 200);
        } catch (QueryException $dbError) {
            return response()->json([Constants::ERROR_KEY => Constants::DB_ERROR_MESSAGE], 400);
        } catch (Exception $e) {
            return response()->json([Constants::ERROR_KEY => Constants::SERVER_ERROR_MESSAGE], 500);
        }
    }

    /**
     * Busca un producto por su id o barcode
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        try {
            $product = Product::findOrFail($id);
            return response()->json([Constants::SUCCESS_SINGLE_KEY => $product], 200);
        } catch (ModelNotFoundException $notFound) {
            return response()->json([Constants::ERROR_KEY => Constants::NOT_FOUND_MESSAGE], 404);
        } catch (Exception $e) {
            return response()->json([Constants::ERROR_KEY => Constants::SERVER_ERROR_MESSAGE], 500);
        }
    }

    /**
     * Modifica los datos de un producto
     *
     * @param  @param  \App\Http\Requests\ProductUpdateRequest $request
     * @param  string  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductUpdateRequest $request, $id)
    {
        try {
            $productToBeUpdated = Product::findOrFail($id);
            /*
                Si viene en la request el parametro a modificar, se usa el mismo,
                de lo contrario se conserva el antiguo valor
             */
            $productToBeUpdated->name = $request->name ? $request->name : $productToBeUpdated->name;
            $productToBeUpdated->url = $request->url ? $request->url : $productToBeUpdated->url;
            $productToBeUpdated->price = $request->price ? $request->price : $productToBeUpdated->price;
            $productToBeUpdated->description = $request->description ? $request->description : $productToBeUpdated->description;

            if ($productToBeUpdated->save())
                return response()->json([Constants::SUCCESS_SINGLE_KEY => $productToBeUpdated], 200);
            else return response()->json([Constants::ERROR_KEY => Constants::DB_ERROR_MESSAGE], 400);
        } catch (ModelNotFoundException $notFound) {
            return response()->json([Constants::ERROR_KEY => Constants::NOT_FOUND_MESSAGE], 404);
        } catch (QueryException $dbError) {
            return response()->json([Constants::ERROR_KEY => Constants::DB_ERROR_MESSAGE], 400);
        } catch (Exception $e) {
            return response()->json([Constants::ERROR_KEY => Constants::SERVER_ERROR_MESSAGE], 500);
        }
    }

    /**
     * Elimina (mediante softDelete) un producto específico por su id (o barcode)
     *
     * @param  string  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        try {
            $productToBeDeleted = Product::findOrFail($id);
            if ($productToBeDeleted->delete())
                return response()->json([Constants::SUCCESS_SINGLE_KEY => $productToBeDeleted], 200);
            else return response()->json([Constants::ERROR_KEY => Constants::DB_ERROR_MESSAGE], 400);
        } catch (ModelNotFoundException $notFound) {
            return response()->json([Constants::ERROR_KEY => Constants::NOT_FOUND_MESSAGE], 404);
        } catch (QueryException $dbError) {
            return response()->json([Constants::ERROR_KEY => Constants::DB_ERROR_MESSAGE], 400);
        } catch (Exception $e) {
            return response()->json([Constants::ERROR_KEY => Constants::SERVER_ERROR_MESSAGE], 500);
        }
    }
    /**
     * Encontrar el producto por nombre,descrip. y código de barrar.
     *
     * @param  string  $param
     * @return \Illuminate\Http\Response
     */
    public function findByParam($param)
    {
        try {
            $products = Product::where('name', 'like', '%' . $param . '%')
                ->orWhere('barcode', 'like', '%' . $param . '%')
                ->orWhere('description', 'like', '%' . $param . '%')
                ->paginate(15);
            return response()->json([Constants::SUCCESS_PLURAL_KEY => $products], 200);
        } catch (ModelNotFoundException $notFound) {
            return response()->json([Constants::ERROR_KEY => Constants::NOT_FOUND_MESSAGE], 404);
        } catch (QueryException $dbError) {
            return response()->json([Constants::ERROR_KEY => Constants::DB_ERROR_MESSAGE], 400);
        } catch (Exception $e) {
            return response()->json([Constants::ERROR_KEY => Constants::SERVER_ERROR_MESSAGE], 500);
        }
    }
}
