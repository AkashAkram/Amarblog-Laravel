@extends('layouts.app')
@section('title')
    <style type="text/css">
        .post{
            width: 339px;
            height: 150px;
        }
    </style>
@endsection
@section('content')

            <div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-heading"><h4>Update</h4></div>

                    <div class="panel-body">

                        <div>
                            <form class="form-horizontal" action="/update/post/{!! $blog->id !!}" role="form" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="_token" value="{{ csrf_token() }}">

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Title</label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control" value="{!! $blog->title !!}" name="title">
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-md-4 control-label">Catagory</label>
                                    <div class="col-md-6">
                                        <select name="category" value="{!! $blog->category !!}" class="form-control">
                                            <option selected disabled>Please select one option</option>
                                            @foreach($categories as $cat)
                                                <option value="{!! $cat->id !!}">{!! $cat->name !!}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-4 control-label">Image</label>
                                    <div class="col-md-6">
                                        <img class="img-responsive " src="../images/{!! $blog->cover !!}" width="900" height="300" alt="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Cover</label>
                                    <div class="col-md-6">
                                        <input type="file" class="" value="{!! $blog->cover !!}" name="image">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-md-4 control-label">Article</label>
                                    <div class="col-md-6">
                                        <textarea  class="post"  class="form-control" value="" name="body" required>{!! $blog->body !!}</textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-4">
                                        <button type="submit" class="btn btn-primary" id="post" name="updateButton">
                                            Update
                                        </button>
                                    </div>
                                </div>

                            </form>
                        </div>


                    </div>
                </div>
            </div>

@endsection
