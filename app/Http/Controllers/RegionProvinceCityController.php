<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator,Redirect,Response;
use App\Models\{Region,Province,City};

class RegionProvinceCityController extends Controller
{

    public function index()
    {
        $data['region'] = Region::get(["name","id"]);
        return view('region-province-city',$data);
    }
    public function getProvince(Request $request)
    {
        $data['provinces'] = Province::where("region_id",$request->region_id)
                    ->get(["name","id"]);
        return response()->json($data);
    }
    public function getCity(Request $request)
    {
        $data['cities'] = City::where("province_id",$request->province_id)
                    ->get(["name","id"]);
        return response()->json($data);
    }

}