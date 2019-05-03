<?php namespace App\Http\Controllers;

		use Session;
		use Request;
		use DB;
		use CRUDBooster;

		class ApiScheduleController extends \crocodicstudio\crudbooster\controllers\ApiController {

		    function __construct() {    
				$this->table       = "cp_schedule";        
				$this->permalink   = "schedule";    
				$this->method_type = "post";    
		    }
		

		    public function hook_before(&$postdata) {
		        //This method will be execute before run the main process
				if(scheduleCheck($postdata['doctor_id'], $postdata['schedule_date']) > 0) {
					$resp = response()->json(['api_status'=>0,'api_message'=>'Slot already booked']);
					$resp->send();
					exit;
				}
		    }

		    public function hook_query(&$query) {
		        //This method is to customize the sql query

		    }

		    public function hook_after($postdata,&$result) {
		        //This method will be execute after run the main process

		    }

		}