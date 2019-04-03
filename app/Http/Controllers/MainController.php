<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use CRUDBooster;
use Session;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use PDFm;

class MainController extends Controller
{
    public function getDashboard() {
        $data = [];
        return view ('pages.main',$data);
    }
    
}
