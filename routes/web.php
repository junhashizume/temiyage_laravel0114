<?php

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
//商品一覧
Route::get('/', 'PostsController@index');

//商品一覧JSON表示
Route::apiResource('/items', 'ItemController');

//商品登録
Route::post('items/store', 'PostsController@store');

//店舗一覧
Route::get('stores/view', 'StoresController@index');

//店舗一覧JSON表示
Route::apiResource('/stores', 'ItemController');

//店舗登録
Route::post('stores/store', 'StoresController@store');

//ピエール・エルメ　マカロン商品情報JSON表示
Route::apiResource('pierreherme/items', 'ItemDetailController');

//ピエール・エルメ　店舗JSON表示
Route::apiResource('pierreherme/stores', 'StoreDetailController');

//お祝い女性向け可愛い予算~3,000円JSON表示
Route::apiResource('party/female/cute/u3000', 'ItemChosenDetailController');

