<?php namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Request;
use Session;
use CRUDBooster;
use Exception;

class ApiCheckAccountController extends \crocodicstudio\crudbooster\controllers\ApiController {
	
	function __construct() {
		$this->table       = "cms_users";
		$this->permalink   = "check_account";
		$this->method_type = "get";
	}
	
	public function execute_api( $output = 'JSON' ) {
		try {
			$exist = DB::table( 'cms_users' )->where( 'email', Request::get( 'email' ) )->get()->first();
			if ( $exist ) {
				return response()->json( [ 'api_status' => 0, 'api_message' => 'Email already exist' ], 409 );
			} else {
				return response()->json( [ 'api_status' => 0, 'api_message' => 'Email is unique' ], 200 );
			}
		} catch ( Exception $e ) {
			$response['api_status']  = 0;
			$response['api_message'] = 'error';
			$response['exception']   = get_class( $e );
			$response['message']     = $e->getMessage();
			$response['trace']       = $e->getTrace();
			
			return response()->json( $response, 400 );
		}
	}
	
	public function hook_before( &$postdata ) {
		//This method will be execute before run the main process
		
	}
	
	public function hook_query( &$query ) {
		//This method is to customize the sql query
		
	}
	
	public function hook_after( $postdata, &$result ) {
		//This method will be execute after run the main process
		
	}
	
}