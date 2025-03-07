<?php

use App\Http\Controllers\AuthController;
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
Route::post('/editSettings', [SettingController::class, 'editSettings']);
Route::get('/getContent', [ContentController::class, 'getContent']);
Route::get('/getContent/{id}', [ContentController::class, 'getContentOne']);
Route::get('/delete/{id}', [ContentController::class, 'deleteContentOne']);
Route::post('/addContent', [ContentController::class, 'addContent']);

//=================AuthController=======================================
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);
Route::post('/logout', [AuthController::class, 'logout'])->middleware('auth:sanctum');
Route::get('/user', [AuthController::class, 'user'])->middleware('auth:sanctum');
