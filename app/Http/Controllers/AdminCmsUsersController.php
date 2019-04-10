<?php namespace App\Http\Controllers;

use Carbon\Carbon;
use crocodicstudio\crudbooster\controllers\CBController;
use crocodicstudio\crudbooster\helpers\CRUDBooster;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Request;
use Session;
use Illuminate\Support\Facades\Validator;

class AdminCmsUsersController extends CBController {
	
	
	public function cbInit() {
		# START CONFIGURATION DO NOT REMOVE THIS LINE
		$this->table               = 'cms_users';
		$this->primary_key         = 'id';
		$this->title_field         = "name";
		$this->button_action_style = 'button_icon';
		$this->button_import       = false;
		$this->button_export       = false;
		# END CONFIGURATION DO NOT REMOVE THIS LINE
		
		# START COLUMNS DO NOT REMOVE THIS LINE
		$this->col   = array();
		$this->col[] = array( "label" => "Name", "name" => "name" );
		$this->col[] = array( "label" => "Email", "name" => "email" );
		$this->col[] = array( "label" => "Mobile", "name" => "mobile" );
		$this->col[] = array( "label" => "Privilege", "name" => "id_cms_privileges", "join" => "cms_privileges,name" );
		$this->col[] = array( "label" => "Photo", "name" => "photo", "image" => 1 );
		# END COLUMNS DO NOT REMOVE THIS LINE
		
		# START FORM DO NOT REMOVE THIS LINE
		$this->form   = array();
		$this->form[] = array(
			"label"      => "Name",
			"name"       => "name",
			'required'   => true,
			'validation' => 'required|alpha_spaces|min:3'
		);
		$this->form[] = array(
			"label"      => "Email",
			"name"       => "email",
			'required'   => true,
			'type'       => 'email',
			'validation' => 'required|email|unique:cms_users,email,' . CRUDBooster::getCurrentId()
		);
		$this->form[] = array(
			"label"      => "Mobile",
			"name"       => "mobile",
			'required'   => true,
			'type'       => 'text',
			'validation' => 'required'
		);
		$this->form[] = array(
			"label"         => "Photo",
			"name"          => "photo",
			"type"          => "upload",
			"help"          => "Recommended resolution is 200x200px",
			'required'      => true,
			'validation'    => 'required|image|max:1000',
			'resize_width'  => 90,
			'resize_height' => 90
		);
		$this->form[] = array(
			"label"     => "Privilege",
			"name"      => "id_cms_privileges",
			"type"      => "select",
			"datatable" => "cms_privileges,name",
			'required'  => true
		);
		$this->form[] = array(
			"label" => "Password",
			"name"  => "password",
			"type"  => "password",
			"help"  => "Please leave empty if not change"
		);
		# END FORM DO NOT REMOVE THIS LINE
		
	}
	
	public function getProfile() {
		
		$this->button_addmore = false;
		$this->button_cancel  = false;
		$this->button_show    = false;
		$this->button_add     = false;
		$this->button_delete  = false;
		$this->hide_form      = [ 'id_cms_privileges' ];
		
		$data['page_title'] = trans( "crudbooster.label_button_profile" );
		$data['row']        = CRUDBooster::first( 'cms_users', CRUDBooster::myId() );
		$this->cbView( 'crudbooster::default.form', $data );
	}
	
	public function postApiLogin() {
		if ( is_numeric( Request::input( "email" ) ) ) {
			$validator = Validator::make( Request::all(), [
				'mobile'   => 'required|exists:' . config( 'crudbooster.USER_TABLE' ),
				'password' => 'required',
			] );
		} else {
			$validator = Validator::make( Request::all(), [
				'email'    => 'required|email|exists:' . config( 'crudbooster.USER_TABLE' ),
				'password' => 'required',
			] );
		}
		if ( $validator->fails() ) {
			$message = $validator->errors()->all();
			
			return response()->json( [ 'message' => implode( ', ', $message ), 'message_type' => 'danger' ], 400 );
		}
		
		$email    = Request::input( "email" );
		$password = Request::input( "password" );
		if ( is_numeric( Request::input( "email" ) ) ) {
			$users = DB::table( config( 'crudbooster.USER_TABLE' ) )->where( "mobile", $email )->first();
		} else {
			$users = DB::table( config( 'crudbooster.USER_TABLE' ) )->where( "email", $email )->first();
		}
		if ( $users->id_cms_privileges == 2 && $users->is_verified != 1 ) {
			$data = [
				'login_status' => 'Error',
				'message'      => 'User not verified',
			];
			
			return response()->json( $data, 200 );
		} elseif ( \Hash::check( $password, $users->password ) ) {
			$priv  = DB::table( "cms_privileges" )->where( "id", $users->id_cms_privileges )->first();
			$roles = DB::table( 'cms_privileges_roles' )->where( 'id_cms_privileges', $users->id_cms_privileges )->join( 'cms_moduls', 'cms_moduls.id', '=', 'id_cms_moduls' )->select( 'cms_moduls.name', 'cms_moduls.path', 'is_visible', 'is_create', 'is_read', 'is_edit', 'is_delete' )->get();
			$photo = ( $users->photo ) ? asset( $users->photo ) : asset( 'vendor/crudbooster/avatar.jpg' );
			Session::put( 'admin_id', $users->id );
			Session::put( 'admin_is_superadmin', $priv->is_superadmin );
			Session::put( 'admin_name', $users->name );
			Session::put( 'admin_photo', $photo );
			Session::put( 'admin_privileges_roles', $roles );
			Session::put( "admin_privileges", $users->id_cms_privileges );
			Session::put( 'admin_privileges_name', $priv->name );
			Session::put( 'admin_lock', 0 );
			Session::put( 'theme_color', $priv->theme_color );
			Session::put( "appname", CRUDBooster::getSetting( 'appname' ) );
			CRUDBooster::insertLog( trans( "crudbooster.log_login", [
				'email' => $users->email,
				'ip'    => Request::server( 'REMOTE_ADDR' )
			] ) );
			$cb_hook_session = new \App\Http\Controllers\CBHook;
			$cb_hook_session->afterLogin();
			$data = [
				'login_status' => 'OK',
				'message'      => 'Success',
				'data'         => $users,
			];
			
			return response()->json( $data, 200 );
		} else {
			$data = [
				'login_status' => 'Error',
				'message'      => trans( 'crudbooster.alert_password_wrong' ),
			];
			
			return response()->json( $data, 200 );
		}
	}
	
	public function getLogin() {
		$data = [];
		if ( CRUDBooster::myId() ) {
			return redirect( CRUDBooster::adminPath() );
		}
		
		$this->cbView( 'pages.login', $data );
	}
	
	public function postLogin() {
		if ( is_numeric( Request::input( "email" ) ) ) {
			$validator = Validator::make( Request::all(), [
				'mobile'   => 'required|exists:' . config( 'crudbooster.USER_TABLE' ),
				'password' => 'required',
			] );
		} else {
			$validator = Validator::make( Request::all(), [
				'email'    => 'required|email|exists:' . config( 'crudbooster.USER_TABLE' ),
				'password' => 'required',
			] );
		}
		if ( $validator->fails() ) {
			$message = $validator->errors()->all();
			
			return redirect()->back()->with( [ 'message' => implode( ', ', $message ), 'message_type' => 'danger' ] );
		}
		
		$email    = Request::input( "email" );
		$password = Request::input( "password" );
		if ( is_numeric( Request::input( "email" ) ) ) {
			$users = DB::table( config( 'crudbooster.USER_TABLE' ) )->where( "mobile", $email )->first();
		} else {
			$users = DB::table( config( 'crudbooster.USER_TABLE' ) )->where( "email", $email )->first();
		}
		if ( $users->id_cms_privileges == 2 && $users->is_verified != 1 ) {
			return redirect()->back()->with( [ 'message' => 'User not verified', 'message_type' => 'danger' ] );
		} elseif ( \Hash::check( $password, $users->password ) ) {
			$priv = DB::table( "cms_privileges" )->where( "id", $users->id_cms_privileges )->first();
			
			$roles = DB::table( 'cms_privileges_roles' )->where( 'id_cms_privileges', $users->id_cms_privileges )->join( 'cms_moduls', 'cms_moduls.id', '=', 'id_cms_moduls' )->select( 'cms_moduls.name', 'cms_moduls.path', 'is_visible', 'is_create', 'is_read', 'is_edit', 'is_delete' )->get();
			
			$photo = ( $users->photo ) ? asset( $users->photo ) : asset( 'vendor/crudbooster/avatar.jpg' );
			Session::put( 'admin_id', $users->id );
			Session::put( 'admin_is_superadmin', $priv->is_superadmin );
			Session::put( 'admin_name', $users->name );
			Session::put( 'admin_photo', $photo );
			Session::put( 'admin_privileges_roles', $roles );
			Session::put( "admin_privileges", $users->id_cms_privileges );
			Session::put( 'admin_privileges_name', $priv->name );
			Session::put( 'admin_lock', 0 );
			Session::put( 'theme_color', $priv->theme_color );
			Session::put( "appname", CRUDBooster::getSetting( 'appname' ) );
			
			CRUDBooster::insertLog( trans( "crudbooster.log_login", [
				'email' => $users->email,
				'ip'    => Request::server( 'REMOTE_ADDR' )
			] ) );
			
			$cb_hook_session = new \App\Http\Controllers\CBHook;
			$cb_hook_session->afterLogin();
			
			return redirect( 'customer-dashboard' );
		} else {
			return redirect()->route( 'getLogin' )->with( 'message', trans( 'crudbooster.alert_password_wrong' ) );
		}
	}
	
	public function getForgot() {
		if ( CRUDBooster::myId() ) {
			return redirect( CRUDBooster::adminPath() );
		}
		
		return view( 'crudbooster::forgot' );
	}
	
	public function postForgot() {
		$validator = Validator::make( Request::all(), [
			'email' => 'required|email|exists:' . config( 'crudbooster.USER_TABLE' ),
		] );
		
		if ( $validator->fails() ) {
			$message = $validator->errors()->all();
			
			return redirect()->back()->with( [ 'message' => implode( ', ', $message ), 'message_type' => 'danger' ] );
		}
		
		$rand_string = str_random( 5 );
		$password    = \Hash::make( $rand_string );
		
		DB::table( config( 'crudbooster.USER_TABLE' ) )->where( 'email', Request::input( 'email' ) )->update( [ 'password' => $password ] );
		
		$appname        = CRUDBooster::getSetting( 'appname' );
		$user           = CRUDBooster::first( config( 'crudbooster.USER_TABLE' ), [ 'email' => g( 'email' ) ] );
		$user->password = $rand_string;
		CRUDBooster::sendEmail( [ 'to' => $user->email, 'data' => $user, 'template' => 'forgot_password_backend' ] );
		
		CRUDBooster::insertLog( trans( "crudbooster.log_forgot", [
			'email' => g( 'email' ),
			'ip'    => Request::server( 'REMOTE_ADDR' )
		] ) );
		
		return redirect()->route( 'getLogin' )->with( 'message', trans( "crudbooster.message_forgot_password" ) );
	}
	
	public function getRegister() {
		
		if ( CRUDBooster::myId() ) {
			return redirect( CRUDBooster::adminPath() );
		}
		$data         = [];
		$data['opne'] = "registration";
		$data['ip']   = Request::ip();
		
		$this->cbView( 'pages.register', $data );
	}
	
	public function postRegister() {
		$validator = Validator::make( Request::all(), [
			'name'     => 'required|min:3|max:50',
			'mobile'   => 'required|min:3|max:10',
			'email'    => 'required|email|unique:cms_users,email',
			'password' => 'required|confirmed|min:6',
		] );
		if ( $validator->fails() ) {
			$message = $validator->errors()->all();
			
			return redirect()->back()->with( [ 'message' => implode( ', ', $message ), 'message_type' => 'danger' ] );
		}
		
		$user_verification = $this->postSmsVerify( Request::all() );
		
		if ( ! isset( $user_verification['error'] ) ) {
			$user_data = [
				'name'              => Request::input( "name" ),
				'mobile'            => isset( $user_verification['details']['phone'] ) ? $user_verification['details']['phone']['number'] : Request::input( "mobile" ),
				'email'             => Request::input( "email" ),
				'password'          => Hash::make( Request::input( "password" ) ),
				'id_cms_privileges' => 2,
				'is_verified'       => 1,
				'created_at'        => Carbon::now(),
			];
			DB::table( 'cms_users' )->insertGetId( $user_data );
			$users = DB::table( config( 'crudbooster.USER_TABLE' ) )->where( "email", Request::input( "email" ) )->first();
			$priv  = DB::table( "cms_privileges" )->where( "id", $users->id_cms_privileges )->first();
			
			$roles = DB::table( 'cms_privileges_roles' )->where( 'id_cms_privileges', $users->id_cms_privileges )->join( 'cms_moduls', 'cms_moduls.id', '=', 'id_cms_moduls' )->select( 'cms_moduls.name', 'cms_moduls.path', 'is_visible', 'is_create', 'is_read', 'is_edit', 'is_delete' )->get();
			
			$photo = ( $users->photo ) ? asset( $users->photo ) : asset( 'vendor/crudbooster/avatar.jpg' );
			Session::put( 'admin_id', $users->id );
			Session::put( 'admin_is_superadmin', $priv->is_superadmin );
			Session::put( 'admin_name', $users->name );
			Session::put( 'admin_photo', $photo );
			Session::put( 'admin_privileges_roles', $roles );
			Session::put( "admin_privileges", $users->id_cms_privileges );
			Session::put( 'admin_privileges_name', $priv->name );
			Session::put( 'admin_lock', 0 );
			Session::put( 'theme_color', $priv->theme_color );
			Session::put( "appname", CRUDBooster::getSetting( 'appname' ) );
			
			CRUDBooster::insertLog( trans( "crudbooster.log_login", [
				'email' => $users->email,
				'ip'    => Request::server( 'REMOTE_ADDR' )
			] ) );
			
			$cb_hook_session = new \App\Http\Controllers\CBHook;
			$cb_hook_session->afterLogin();
			
			return redirect( 'customer-dashboard' );
		} else {
			return redirect()->back()->with( 'message', $user_verification['error']['message'] );
		}
		
	}
	
	public function getLogout() {
		$me = CRUDBooster::me();
		CRUDBooster::insertLog( trans( "crudbooster.log_logout", [ 'email' => $me->email ] ) );
		
		Session::flush();
		
		return redirect()->route( 'getLogin' )->with( 'message', trans( "crudbooster.message_after_logout" ) );
	}
	
	public function postSmsVerify( $form_data ) {
		
		$app_id  = env( 'app_id' );
		$secret  = env( 'secret' );
		$version = env( 'version' );
		
		function doCurl( $url ) {
			$ch = curl_init();
			curl_setopt( $ch, CURLOPT_URL, $url );
			curl_setopt( $ch, CURLOPT_RETURNTRANSFER, true );
			$data = json_decode( curl_exec( $ch ), true );
			curl_close( $ch );
			
			return $data;
		}
		
		$token_exchange_url = 'https://graph.accountkit.com/' . $version . '/access_token?' .
		                      'grant_type=authorization_code' .
		                      '&code=' . $form_data['code'] .
		                      "&access_token=AA|$app_id|$secret";
		
		$data = doCurl( $token_exchange_url );
		
		$user_access_token = $data['access_token'];
		$me_endpoint_url   = 'https://graph.accountkit.com/' . $version . '/me?' .
		                     'access_token=' . $user_access_token;
		$data['details']   = doCurl( $me_endpoint_url );
		
		return $data;
	}
	
}
