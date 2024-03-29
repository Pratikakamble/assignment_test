<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AssignmentController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index');
});



Route::get('/store-api-data', [AssignmentController::class, 'storeApiData'])->name('store');

Route::get('/search-vendorid', [AssignmentController::class, 'searchVendorId'])->name('search');
Route::post('/search-vendorid', [AssignmentController::class, 'searchVendorId'])->name('search');

