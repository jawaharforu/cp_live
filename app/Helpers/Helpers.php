<?php
function scheduleCheck($doctor_id, $schedule) {
    return DB::table('cp_schedule')->where('doctor_id',$doctor_id)->whereBetween('schedule_date', [date("Y-m-d h:i:s", strtotime($schedule)), date('Y-m-d h:i:s', strtotime('+15 minutes', $schedule))])->get()->count();
}