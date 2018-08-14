<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Session;
use Auth;
/**
 * Change session locale
 * @param  Request $request
 * @return Response
 */
class TranslationController extends Controller
{
    public function changeLocale(Request $request)
    {
      
        $this->validate($request, ['locale' => 'required|in:ja,en']);

        \Session::put('locale', $request->locale);
    
        return redirect()->back();
    }
}