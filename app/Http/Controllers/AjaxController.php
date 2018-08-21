<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class AjaxController extends Controller {
   public function index(){
      $content = "<br /><input type='checkbox' name='section[]'>Section 1 <input type='checkbox' name='section[]'>Section 2 ";
      return response()->json($content, 200);
   }
}