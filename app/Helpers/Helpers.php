<?php
function scheduleCheck($doctor_id, $schedule) {
    $count = DB::table('cp_schedule')->where('doctor_id',$doctor_id)->whereBetween('schedule_date', [date("Y-m-d h:i:s", strtotime($schedule)), date('Y-m-d h:i:s', strtotime('+15 minutes', strtotime($schedule)))])->get()->count();
    return $count;
}

function getUserDetails() {
    return DB::table('cms_users')->where('id', CRUDBooster::myId())->get()->first();
}

function getPasentSchedule() {
    return DB::table('cp_schedule')->where('customer_id', CRUDBooster::myId())->where('schedule_date','>=', date("Y-m-d h:i:s"))->get()->all();
}