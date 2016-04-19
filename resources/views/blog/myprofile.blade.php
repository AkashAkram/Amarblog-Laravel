@extends('layouts.app')
@section('title')<title>{!! Auth::User()->name !!} | Amar Blog</title>

@section('content')


    <div class="col-md-8">

        <div class="panel panel-default">
            <div class="panel-heading"><h4>User Profile</h4></div>

            <div class="panel-body">

                <div>
                    <form class="form-horizontal" action="/myprofile/{!! $user->id !!}" role="form" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">

                        <div class="form-group">
                            <label class="col-md-4 control-label">Username</label>
                            <div class="col-md-6">
                                <input type="text" class="form-control" value="{!! $user->name !!}" name="title">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-4 control-label">Email</label>
                            <div class="col-md-6">
                                <input type="email" class="form-control" value="{!! $user->email !!}" name="title">
                            </div>
                        </div>

                       
            <input type="hidden" class="form-control" value="{!! $user->password !!}" name="password">


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary" id="post" name="updateprofile">
                                    Update Profile
                                </button>
                            </div>
                        </div>



                    </form>
                </div>


            </div>
        </div>


    </div>



@endsection
