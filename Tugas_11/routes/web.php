<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/lat1', [App\Http\Controllers\Lat1Controller::class, 'index']);
Route::get('/lat1/m2', [App\Http\Controllers\Lat1Controller::class, 'method2']);
