<!DOCTYPE html>
<html lang="en">

<head>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
  <title>Trendz-New</title>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>


    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/business-casual.css" rel="stylesheet">

</head>
<body>
  <nav class="blue lighten-2" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo">Trendz</a>
      <ul class="right hide-on-med-and-down">
          <li>Hello, <%= request.getAttribute("username") %></li>
          <li><a href="index.html">Log Out</a></li>
      </ul>


      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
  </nav>



    <div class="container">
        <div class="row"></div>
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
            <div class="box">
                <div class="panel">
                    
                        <textarea value="Post here" id="textpost" placeholder="Post Here!"></textarea>
                        
                            <div class="btn btn-lite col-lg-3 center" id="post">Post</div>
                <br><br>
        <div class="panel" id="posthere">
        
        </div>
        
                </div>
            </div>
                <div class="row">
                <div class="col-lg-3 text-center center" ></div>
                 <div class="col-lg-6 text-center center" >
                    <img class="img-responsive img-border img-full center" src="img/c.jpg" alt="" >
                    <p>
                    </p>
                    <a class="like"><img  src="img/trend.JPG" class="btn btn-default btn-lg"></a>   <a href="#" class="btn btn-default btn-lg count"> 0</a>                
                    
                    <hr>

                </div></div>
                <div class="row">
                <div class="col-lg-3 text-center center" ></div>

                <div class="col-lg-6 text-center">
                    <img class="img-responsive img-border img-full" src="img/d.PNG" alt="">
                    <p>
                    </p>
                    <a class="like"><img  src="img/trend.JPG" class="btn btn-default btn-lg"></a>   <a href="#" class="btn btn-default btn-lg count"> 0</a>                
                    
                    <hr>
                </div></div>
                <div class="row">

                <div class="col-lg-3 text-center center" ></div>
                <div class="col-lg-6 text-center">
                    <img class="img-responsive img-border img-full" src="img/e.jpg" alt="">
                    <p>
                    </p>
                    <a class="like"><img  src="img/trend.JPG" class="btn btn-default btn-lg"></a>   <a href="#" class="btn btn-default btn-lg count"> 0</a>                
                    
                    <hr>
                </div></div>
                <div class="row">
                <div class="col-lg-3 text-center center" ></div>
                <div class="col-lg-6 text-center">
                    <img class="img-responsive img-border img-full" src="img/f.PNG" alt="">
                    <p>
                    </p>
                    <a class="like"><img  src="img/trend.JPG" class="btn btn-default btn-lg"></a>   <a href="#" class="count btn btn-default btn-lg"> 0</a>                
                    
                    <hr>
                </div></div>
                <div class="row">
                <div class="col-lg-3 text-center center" ></div>
                <div class="col-lg-6 text-center">
                    <img class="img-responsive img-border img-full" src="img/g.PNG" alt="">
                    <p>
                    </p>
                    <a class="like"><img  src="img/trend.JPG" class="btn btn-default btn-lg"></a>   <a href="#" class="count btn btn-default btn-lg"> 0</a>                
                    
                    <hr>
                </div></div>
                <div class="col-lg-12 text-center">
                    <ul class="pager">
                        <li class="previous"><a href="#">&larr; Older</a>
                        </li>
                        <li class="next"><a href="#">Newer &rarr;</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->

    <footer class="page-footer teal">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>

        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Connect</h5>
          <ul>
            <li><a class="white-text" href="#!">Link 1</a></li>
            <li><a class="white-text" href="#!">Link 2</a></li>
            <li><a class="white-text" href="#!">Link 3</a></li>
            <li><a class="white-text" href="#!">Link 4</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by <a class="brown-text text-lighten-3" href="#">the right people</a>
      </div>
    </div>
  </footer>
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script>
    a = document.getElementById('textpost').value;
    $(document).ready(function(){
        $("#post").click(function(){
            $("#posthere").append(a);
            a.reset();
        });
        $(".like").click(function(){
            $(".count").append('1');
        });
    });
    </script>

</body>

</html>
