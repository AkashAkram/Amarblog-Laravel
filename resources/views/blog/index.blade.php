@extends('layouts.app')


@section('content')


    <div class="col-md-8">
            <!-- First Blog Post -->
            @foreach($blogs as $blog)

                <?php
                $author = \App\User::select('name')->where('id',$blog->author_id)->first();
                ?>

                <div class="well">
                    <h2>
                        <a href="../post/{!! $blog->id !!}">{!! $blog->title !!}</a>
                    </h2>
                    <p >
                        by <a href="../index.php">{!! $author->name!!}</a> |
                        <span class="glyphicon glyphicon-time"></span> {!! $blog->created_at !!}


                        <div align="right">
                            @if(!Auth::guest())
                                @if($blog->author_id == Auth::user()->id)

                                    <a href="../edit/post/{!! $blog->id !!}">update</a> |
                                    <a href="../remove/post/{!! $blog->id !!}">Delete</a>

                                @endif
                            @endif

                        </div>
                    </p>
                    <hr>
                    <img class="img-responsive " src="../images/{!! $blog->cover !!}" width="900" height="300" alt="">
                    <div class="box-padding">
                        <p>{!! substr($blog->body,0,550) !!}<br><br>
                            <a class="btn btn-primary" href="../post/{!! $blog->id !!}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                    </div>
                </div>
                @endforeach
        {!! $blogs->render() !!}
    </div>          <!-- Pageinate -->



@endsection
