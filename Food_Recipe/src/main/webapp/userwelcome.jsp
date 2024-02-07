<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="../CSS/food.css" rel="stylesheet">
    <title>Your Website</title>
    <style>
    #logo{
      width: 100px;
      padding-right: 15px;
  }
  footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;

        }
        li a {
                    color: white;
                    text-decoration: none;
                    margin-left: 50px;
                }

                dropdown-toggle::after {
                    margin-left: 0.255em;
                    vertical-align: 0.255em;
                    content: "";
                    border-top: 0.3em solid;
                    border-right: 0.3em solid transparent;
                    border-bottom: 0;
                    border-left: 0.3em solid transparent;

                }

</style>
</head>
<body>





    <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
        <div class="container">
          <a class="navbar-brand" href="#">
            <img id="logo" src="./resources/Logo.jpg" alt="logo image">
          </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
            <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="addRecipe?userId=${food}">Add Recipe</a>
             </li>
              <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="viewall">View Recipe</a>
               </li>
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                   <span>${login}</span>
                </a>

                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">

                  <li>
                  <a class="dropdown-item" href="update?userId=${food}">UPDATE</a>
                  </li>
                  <li><a class="dropdown-item" href="delete?userId=${food}">DELETE</a></li>
                  <li><a class="dropdown-item" href="login.jsp">LOGOUT</a></li>
                </ul>

              </li>
            </ul>
          </div>
        </div>
      </nav>


      <footer>
        &copy; 2024 FOOD RECIPE. All rights reserved.
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>


  </body>
</html>