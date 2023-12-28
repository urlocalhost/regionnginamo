<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

use App\Http\Controllers\RegionProvinceCityController;


Route::get('region-province-city', [RegionProvinceCityController::class, 'index']);
Route::post('get-provinces-by-region', [RegionProvinceCityController::class, 'getProvince']);
Route::post('get-cities-by-province', [RegionProvinceCityController::class, 'getCity']);
