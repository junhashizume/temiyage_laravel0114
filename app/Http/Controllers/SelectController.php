<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Item;
use App\Post;
use App\User;

class SelectController extends Controller
{
    public function index()
    {
        return view('select');
    }
}
