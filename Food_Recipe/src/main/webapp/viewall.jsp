<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

    <html>
    <head>
    <style>
    body {
        font-family: Arial, sans-serif;
    }

     header {
                background-color:  #020305;
                color: white;
                padding: 15px;
                text-align: center;
                border-radius: 8px 8px 0 0;
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
        margin-left: 20px;
        text-decoration: none;
        color: #333;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
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
            #homebutton{
                       background-color: #007bff;
                       color: #fff;
                       padding: 12px 15px;
                       border: none;
                       border-radius: 4px;
                       cursor: pointer;
                       width: 15%;

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

     <table>
                <tr>
                    <th>Sl.No</th>
                    <th>FOODRECIPE NAME</th>
                    <th>NO OF PERSON</th>
                    <th>INGREDIENT 1</th>
                    <th>QUANTITY 1</th>
                    <th>INGREDIENT 2</th>
                    <th>QUANTITY 2</th>
                    <th>INGREDIENT 3</th>
                    <th>QUANTITY 3</th>
                    <th>INGREDIENT 4</th>
                    <th>QUANTITY 4</th>
                    <th>STEP TO DO</th>
                    <th>FOODTYPE</th>
                    <th>CUISINE</th>

                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="recipe" items="${ listFood }">
                    <tr>
                         <td>${recipe.getFoodRecipeId()}</td>
                        <td>${recipe.getFoodRecipeName()}</td>
                        <td>${recipe.getNoOfPerson()}</td>
                        <td>${recipe.getIngredient1()}</td>
                        <td>${recipe.getQuantity1()}</td>
                        <td>${recipe.getIngredient2()}</td>
                        <td>${recipe.getQuantity2()}</td>
                        <td>${recipe.getIngredient3()}</td>
                        <td>${recipe.getQuantity3()}</td>
                        <td>${recipe.getIngredient4()}</td>
                        <td>${recipe.getQuantity4()}</td>
                        <td>${recipe.getStepsToDo()}</td>
                        <td>${recipe.getFoodType()}</td>
                        <td>${recipe.getCuisine()}</td>

                        <td><a href="modify?foodRecipeId=${recipe.getFoodRecipeId()}">Update</a></td>
                        <td><a href="remove?foodRecipeId=${recipe.getFoodRecipeId()}">Delete</a></td>

                    </tr>
                </c:forEach>
            </table>
             <footer>
                    &copy; 2024 FOOD RECIPE. All rights reserved.
                </footer>