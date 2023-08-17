<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TravelPackage;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        //$items = TravelPackage::with(['galleries'])->get();
        $items = TravelPackage::with(['galleries'])->latest()->take(4)->get();
        //$items = TravelPackage::with(['galleries'])->orderBy('created_at','desc')->get()->random(4);
        return view('pages.home',[
            'items' => $items
        ]);
    }
    public function pakettravel(Request $request)
    {
        $items = TravelPackage::with(['galleries'])->latest()->get();
        return view('pages.packagetravel',[
            'items' => $items
        ]);
    }
}
