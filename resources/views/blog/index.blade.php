@extends('layouts.app')

<title>Home :: Amar Blog</title>

@section('content')


    <div class="col-md-8">
            <!-- First Blog Post -->
            @foreach($blogs as $blog)

                <?php
                $author = \App\User::select('name')->where('id',$blog->author_id)->first();
                ?>

                <div class="well">
                    <h2>
                        <a href="post/{!! $blog->id !!}">{!! $blog->title !!}</a>
                    </h2>
                    <p >
                        by <a href="/">{!! $author->name!!}</a> |
                        <span class="glyphicon glyphicon-time"></span> {!! $blog->created_at !!}


                        
                    </p>
                    
                    <div align="right">
                                @if(!Auth::guest())
                                    @if($blog->author_id == Auth::user()->id)

                                        <a href="edit/post/{!! $blog->id !!}">update</a> |
                                        <a href="remove/post/{!! $blog->id !!}">Delete</a>

                                    @endif
                                @endif

                   </div>
                        
                    <a href="post/{!! $blog->id !!}">
                        <img class="img-responsive my-image " src="images/{!! $blog->cover !!}" alt="">
                    </a>


                    <br>
                        <p class="well-p">{!! substr($blog->body,0,550) !!}<br><br>
                            <a class="btn btn-primary" href="../post/{!! $blog->id !!}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
                    </div>

                @endforeach
        <div align="center">{!! $blogs->render() !!}</div>
    </div>          <!-- Pageinate -->



@endsection
