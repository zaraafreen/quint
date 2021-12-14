<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>The Quint Spicy Podcast</title>

        <!-- logo -->
        <link rel="shortcut icon" href="quint.png" type="image/png">

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- font awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- style.css -->
        <link rel="stylesheet" href="style.css">
        
        <!-- back prevention -->
        <script type = "text/javascript" >  
            function preventBack() { window.history.forward(); }  
            setTimeout("preventBack()", 0);  
            window.onunload = function () { null };  
        </script>
    </head>
<body style="background:rgb(53, 20, 79)">
    <div class="container quint-wrapper">
        <div class="container quint-header text-center">
            <img id="quint-image" src="withoutchillie.png" alt="">
        </div>
        <div class="container quint-body text-center">
            <div class="quint-title">
                <h3>Welcome, Zara!</h3>
                <h4>Guest Signup</h4>
            </div>
            <div class="quint-form mt-4">
                <form action="signup" method="post">
                    <div class="form-group">
                      <input type="text" class="form-control" name="name" id="" aria-describedby="emailHelpId" placeholder="Full Name" required>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="email" id="" aria-describedby="emailHelpId" placeholder="Email ID" required>
                      </div>
                      <div class="form-group">
                        <input type="password" class="form-control" name="password" id="" aria-describedby="emailHelpId" placeholder="Password" required>
                      </div>
                      <div class="form-group">
                        <input type="password" class="form-control" name="" id="" aria-describedby="emailHelpId" placeholder="Confirm Password" required>
                      </div>
                        <button type="submit" name="" id="go-button"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></button>
                </form>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>