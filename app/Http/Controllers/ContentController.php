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

    public function addContent(Request $request) {
        $content = Content::create($request->all());
        return response()->json(['message' => 'Новая тема добавлена!'], 200);
    }

    public function deleteContentOne($id){
        $content = Content::where('id', $id)->first();
        $content->delete();
        return response()->json(['message' => 'Тема удалена!'], 200);
    }
}
