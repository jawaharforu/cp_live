<?php

namespace App\Http\Controllers;

use CRUDBooster;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Request;

class MainController extends Controller
{
    public function getDashboard()
    {
        $data = [];
        $data['pasentSchedule'] = getPasentSchedule();
        return view('pages.main', $data);
    }

    public function profile()
    {
        $data = [];
        $data['profile'] = getUserDetails();
        return view('pages.profile', $data);
    }

    public function getBookAppoinment()
    {
        $data = [];
        return view('pages.book-appoinment', $data);
    }

    public function postBookAppoinment()
    {
        if (scheduleCheck(Request::input("doctor_id"), Request::input("schedule_date")) > 0) {
            return redirect()->back()->with(['message' => 'Slot already booked', 'message_type' => 'danger']);
        } else {
            $basicDetails = \Session::get('basic_details');
            DB::table('cp_schedule')->insert([
                'customer_id' => CRUDBooster::myId(),
                'doctor_id' => Request::input("doctor_id"),
                'registred_by' => CRUDBooster::myId(),
                'schedule_date' => date('Y-m-d h:i:s', strtotime(Request::input("schedule_date"))),
                'created_at' => date("Y-m-d h:i:s"),
                'updated_at' => date("Y-m-d h:i:s"),
                'age' => $basicDetails['age'],
                'sex' => $basicDetails['sex'],
                'problem' => $basicDetails['problem'],
            ]);
            return redirect('make-payment')->with(['message' => 'Slot booked', 'message_type' => 'success']);
        }
    }

    public function updateProfile()
    {
        $requestData = Request::all();
        $input = [];
        if (!empty($requestData['password']) && strlen($requestData['password']) >= 6) {
            if ($requestData['password'] != $requestData['password_confirmation']) {
                return redirect()->back()->with(['message' => "Password doesn't match", 'message_type' => 'danger']);
            } else {
                $input['password'] = Hash::make($requestData['password']);
            }
        }
        $input['name'] = $requestData['name'];
        $input['updated_at'] = date("Y-m-d h:i:s");
        DB::table('cms_users')
            ->where('id', CRUDBooster::myId())
            ->update($input);
        return redirect()->back()->with(['message' => "Profile Updated", 'message_type' => 'success']);
    }

}
