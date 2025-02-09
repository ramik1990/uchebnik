<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;


class SettingController extends Controller
{
    public function getSettings() {
        $settings = Setting::first();
        return response()->json($settings);
    }

    public function editSettings(Request $request) {
        $setting = Setting::first();
        $setting->update($request->all());
        return response()->json(['message' => 'Данные обновлены!']);
    }
}
