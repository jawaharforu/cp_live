<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Request;
use CRUDBooster;
use Session;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class MainController extends Controller
{
    public function getDashboard() {
        $data = [];
        return view ('pages.main',$data);
    }

    public function getBookAppoinment() {
        $data = [];
        return view ('pages.book-appoinment',$data);
    }

    public function postBookAppoinment() {
        if(scheduleCheck(Request::input( "doctor_id" ), Request::input( "schedule_date" )) > 0) {
            return redirect()->back()->with( [ 'message' => 'Slot already booked', 'message_type' => 'danger' ] );
        } else {
            DB::table('cp_schedule')->insert([
                'customer_id' => CRUDBooster::myId(),
                'doctor_id' => Request::input( "doctor_id" ),
                'registred_by' => CRUDBooster::myId(),
                'schedule_date' => date('Y-m-d h:i:s', strtotime(Request::input( "schedule_date" ))),
                'created_at' => date("Y-m-d h:i:s"),
                'updated_at' => date("Y-m-d h:i:s")
            ]);
            return redirect()->back()->with( [ 'message' => 'Slot booked', 'message_type' => 'success' ] );
        }
    }
    
}
