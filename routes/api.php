<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\UserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::middleware(['auth:api'])->group(function () {

    Route::post('logout', [AuthController::class, 'logout']);

    Route::get('chart', [DashboardController::class, 'chart']);

    Route::get('user', [UserController::class, 'user']);
    Route::put('users/info', [UserController::class, 'updateInfo']);
    Route::put('users/password', [UserController::class, 'updatePassword']);

    Route::apiResource('users', UserController::class);
    Route::apiResource('products', ProductController::class);
    Route::post('upload', [ImageController::class, 'upload']);

    Route::apiResource('orders', OrderController::class)->only('index', 'show');
    Route::get('export', [OrderController::class, 'export']);

    Route::apiResource('permissions', PermissionController::class)->only('index');
    Route::apiResource('roles', RoleController::class);
});



Route::post('login', [AuthController::class, 'login']);
Route::post('register', [AuthController::class, 'register']);
