<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProductCreateRequest;
use App\Http\Requests\ProductUpdateRequest;
use App\Models\Product;
use Exception;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

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

            return response()->json(['products', Product::paginate(15)], 200);
        } catch (ModelNotFoundException $e) {
            return response()->json(['error' => $e->getMessage()], 404);
        } catch (QueryException $dbError) {
            return response()->json(['error' => $dbError->getMessage()], 500);
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
            return response()->json(['product' => $product], 200);
        } catch (QueryException $dbError) {
            return response()->json(['error' => $dbError->getMessage()], 500);
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
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
            return response()->json(['product' => $product], 200);
        } catch (ModelNotFoundException $notFound) {
            return response()->json(['error' => 'No se han encontrado resultados'], 404);
        } catch (Exception $e) {
            return response()->json(['error' => 'Error de servidor'], 500);
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
                return response()->json(['product' => $productToBeUpdated], 200);
            else return response()->json(['error' => 'Algo ha salido mal, intentar más tarde'], 400);
        } catch (ModelNotFoundException $notFound) {
            return response()->json(['error' => $notFound->getMessage()], 404);
        } catch (QueryException $dbError) {
            return response()->json(['error' => $dbError->getMessage()], 500);
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
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
                return response()->json(['product' => $productToBeDeleted], 200);
            else return response()->json(['error' => 'Algo ha salido mal, intentar más tarde'], 400);
        } catch (ModelNotFoundException $notFound) {
            return response()->json(['error' => $notFound->getMessage()], 404);
        } catch (QueryException $dbError) {
            return response()->json(['error' => $dbError->getMessage()], 500);
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
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
            return response()->json(['products' => $products], 200);
        } catch (ModelNotFoundException $notFound) {
            return response()->json(['error' => 'No se han encontrado resultados'], 404);
        } catch (QueryException $dbError) {
            return response()->json(['error' => $dbError->getMessage()], 500);
        } catch (Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
}
