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
            return Redirect('login')
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
            return Redirect('login');

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

 

         $rules = array(
            'name' =>     'required|max:255|unique:users',
            'email'    => 'required|email|max:255|unique:users',
            'password' => 'required|min:6|confirmed'
        );

       
        // $validator = $this->validator($request->all());
          $validator = Validator::make(Input::all(), $rules);

   
        if ($validator->fails()) {
            return Redirect('register')
                ->withErrors($validator)// send back all errors to the reg form
                ->withInput(Input::except('password'));
        }
     else {

           
           /* $userdata = array(
                'name' => Input::get('name'),
                'email' => Input::get('email'),
                'password' => bcrypt(Input::get('password'))
            );
            */

            $user = new User();

            $user->name = Input::get('name');
            $user->email = Input::get('email');
            $user->password = bcrypt(Input::get('password'));


        }
       // User::create($userdata);
            $user->save();
            Auth::login($user);
            return redirect('/');

       /* 
       if (Auth::attempt($userdata)) {

            return redirect('/');

        } else {

            // validation not successful, send back to form
            return Redirect('register');

        }
        */
    }





  public function show_profile($id)
    {
        $this->middleware('auth');
        $user = User::select()->where('id',$id)->first();
        $categories = Category::all();
        return view('blog.myprofile',compact('user','categories'));
    }

    public function update_profile($id)
    {
        $this->middleware('auth');

       
           /*$data = new User();
           $data->name = Request::input('name');
           $data->email = Request::input('email');
           $data->password = Request::input('password');

           $update_data = User::find($id);

            $update_data->name = $data->name;
            $update_data->email = $data->email;
            $update_data->password = $data->password;
           $update_data->save();
           
           $user = User::select()->where('id',$id)->first();
           $user->fill(Request::all());
           $user->save();
*/
               // $user = new User();
               // $user->name = Input::get('name');
               // $user->email = Input::get('email');
               // $user->password = Input::get('password');
           if(isset($_POST['updateprofile']))
           {

                $data = Input::all();
                $update_data = User::find($id);
                $update_data->update($data);
                return redirect('/');

           }

    }


    public function password_recovery()
    {
       //$user = User::Select()
    }





}
