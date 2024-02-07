<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #010202;
            color: white;
            padding: 15px;
            text-align: center;
        }

        #logo{
      width: 100px;
      height: 50px;


        }


        nav {
            display: flex;
            align-items: center;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
        }

        form {
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

      input[type="email"],
      input[type="password"] {
          width: 100%;
          padding: 12px;
          margin-bottom: 15px;
          box-sizing: border-box;
          border: 1px solid #ced4da;
          border-radius: 4px;
          background-color: #f8f9fa;
          color: #495057;
      }

        button {
            background-color: #03070b;
            color: #fff;
            padding: 12px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #000000;
        }
        p{
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <img id="logo" src="./resources/Logo.jpg" alt="Logo">
            <a href="index.jsp">Home</a>
        </nav>
    </header>
    <form action="login" method="post">
        <h3>LOGIN</h3>
        <div>
            <label>EMAIL ID:</label>
            <input type="email" name="emailId">
        </div>
        <div>
            <label>PASSWORD:</label>
            <input type="password" name="password">
        </div>
        <button type="submit">SIGN IN</button>
        <p>FOR NOT REGISTER?<a href="signup.jsp">register</a></p>
    </form>
    <h3>${login}</h3>
</body>
</html>