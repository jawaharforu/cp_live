<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;

class ApiRegistrationController extends \crocodicstudio\crudbooster\controllers\ApiController {
	
	function __construct() {
		$this->table       = "cms_users";
		$this->permalink   = "registration";
		$this->method_type = "post";
	}
	
	
	public function hook_before( &$postdata ) {
		$exist = DB::table( 'cms_users' )->where( 'email', $postdata['email'] )->get()->first();
		if ( $exist ) {
			$resp = response()->json( [ 'api_status' => 0, 'api_message' => 'Email already exist' ] );
			$resp->send();
			exit;
		}
	}
	
	public function hook_query( &$query ) {
		//This method is to customize the sql query
		
	}
	
	public function hook_after( $postdata, &$result ) {
		//This method will be execute after run the main process
		
	}
	
}