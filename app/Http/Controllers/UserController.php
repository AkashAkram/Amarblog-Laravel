<?php

namespace App\Http\Controllers;
use App\User;
use Illuminate\Support\Facades\Auth;
use App\Article;
use App\Category;
use App\Http\Requests;
//use Illuminate\Http\Request;
use Request;
use Illuminate\Support\Facades\DB;
use PhpParser\Node\Expr\New_;
//use Illuminate\Foundation\Validator;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Input;


class UserController extends Controller
{
    public function getlogin()
    {
        if(Auth::guest())
        {
            $categories = Category::all();
            return view('auth.login',compact('categories'));
        }
        else
            return redirect('/');
    }

    public function postlogin()
    {
        $rules = array(
            'email'    => 'required|email',
            'password' => 'required|alphaNum|min:3'
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return Redirect::to('login')
                ->withErrors($validator)// send back all errors to the login form
                ->withInput(Input::except('password'));
        }

        else {

            // create our user data for the authentication
            $userdata = array(
                'email' => Input::get('email'),
                'password' => Input::get('password')
            );
        }

        if (Auth::attempt($userdata)) {

            return redirect('/');

        } else {

            // validation not successful, send back to form
            return Redirect::to('login');

        }
    }

    public function logout()
    {
        $this->middleware('auth');
        Auth::logout();
        return redirect('login');


    }

    public function getregister()
    {
        if(Auth::guest())
        {
            $categories = Category::all();
            return view('auth.register',compact('categories'));
        }
        else
            return redirect('/');
    }

    public function postregister()
    {
        if(Auth::guest())
        {
            $categories = Category::all();
            return view('auth.register',compact('categories'));
        }
        else
            return redirect('/');
    }


}
