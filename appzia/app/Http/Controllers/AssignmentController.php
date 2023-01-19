<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\DB;
use App\Models\Vehicle;
use App\Models\Order;

class AssignmentController extends Controller
{
    public function storeApiData(){
    	$api_url = 'https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/5UXWX7C5*BA?format=json&modelyear=2011';
    	$response = Http::get($api_url);
    	$response = json_decode($response->body(), true)['Results'];
    	foreach($response as $res){
		Vehicle::updateOrCreate(['VariableId' => $res['VariableId']],['Value' => $res['Value'], 'ValueId' => $res['ValueId'], 'Variable' => $res['Variable'], 'VariableId' => $res['VariableId']]);
    	}

    	$data = Vehicle::paginate(5);
    	return view('store', ['data' => $data]);	
    }

    public function fetchData($sid=null, $rid=null){

    	if($sid != null && $rid != null){
    		$whereCond = ['sender_u_id' => $sid, 'receiver_u_id' => $rid];
    	}else if($sid != null){
    		$whereCond = ['sender_u_id' => $sid];

    	}else if($rid != null){
    		$whereCond = ['receiver_u_id' => $rid];
    	}
    	if($sid == null && $rid == null){
    		$messages = DB::table('user_mssages')->paginate(5);
    	}else{
    		$messages = DB::table('user_mssages')->where($whereCond)->paginate(5);
    	}
    	return view('fetch', ['data' => $messages]);
    }


    public function searchVendorId(){
    	$vid = isset($_POST['keyword']) ? $_POST['keyword'] : null;
    	if($vid != null){
    		$data = Order::where('vendor_ids', 'like', '%'.$vid.'%')->paginate();
    	}else{
    		$data = Order::paginate(5);
    	}
    	return view('search', ['data' => $data]);
    }
}
