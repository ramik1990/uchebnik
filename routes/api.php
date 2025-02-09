<?php

use App\Http\Controllers\SettingController;
use App\Http\Controllers\ContentController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/getSettings', [SettingController::class, 'getSettings']);
Route::get('/getContent', [ContentController::class, 'getContent']);
Route::get('/getContent/{id}', [ContentController::class, 'getContentOne']);
