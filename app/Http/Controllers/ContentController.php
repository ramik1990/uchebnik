<?php

namespace App\Http\Controllers;

use App\Models\Content;
use Illuminate\Http\Request;

class ContentController extends Controller
{
    public function getContent() {
        $content = Content::all();
        return response()->json($content);
    }

    public function getContentOne($id) {
        $content = Content::where('id', $id)->first();
        return response()->json($content);
    }
}
