<?php

use Illuminate\Support\Facades\Route;

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


Route::get('/', 'HomeController@index')->name('home');
Route::get('/package-travel', 'HomeController@pakettravel')->name('package-travel');

Route::get('/detail/{slug}', 'DetailController@index')->name('detail');

Route::post('/checkout/{id}', 'CheckoutController@process')
    ->name('checkoutprocess')
    ->middleware(['auth','verified']);

Route::get('/checkout/{id}', 'CheckoutController@index')
        ->name('checkout')
        ->middleware(['auth','verified']);

Route::get('/checkout/create/{detail_id}', 'CheckoutController@create')
        ->name('checkout-create')
        ->middleware(['auth','verified']);

Route::get('/checkout/remove/{detail_id}', 'CheckoutController@remove')
        ->name('checkout-remove')
        ->middleware(['auth','verified']);

Route::get('/checkout/confirm/{id}', 'CheckoutController@success')
        ->name('checkout_success')
        ->middleware(['auth','verified']);


Route::prefix('admin')
    ->namespace('Admin')
    ->middleware(['auth','admin'])
    ->group(function(){
        route::get('/','DashboardController@index')->name('dashboard');

        Route::resource('travel-package', 'TravelPackageController');
        Route::resource('gallery', 'GalleryController');
        Route::resource('transaction', 'TransactionController');
    });

    Auth::routes(['verify' => true]);


