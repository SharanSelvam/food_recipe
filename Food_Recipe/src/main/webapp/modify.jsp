<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
    <head>
        <style>

       body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        header {
            background-color: #020305;
            color: white;
            padding: 15px;
            text-align: center;
            border-radius: 8px 8px 0 0;
        }

        h3{
            text-align: center;
            color: #333;
            width: 100%;
        }


        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            width: calc(100% - 10px);
            padding: 12px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #02080e;
            border-radius: 4px;
            background-color: #f8f9fa;
            color: #495057;
        }

        select {
            appearance: none;
        }

        button {
            background-color: #030406;
            color: #fff;
            padding: 12px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #000305;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }
        #logo{
      width: 100px;
      height: 50px;


        }

        div {
            width: 48%;
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

        textarea{
            width: 640px;
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

        </style>


    </head>
    <body>
        <header>
            <nav>
                <img id="logo" src="./resources/Logo.jpg" alt="Logo">

                <a href="index.jsp">Home</a>
            </nav>
        </header>
        <form action="modifyFood" method="post">

            <h3>FOOD RECIPE </h3>

        <div>




 <h3 style"display : none"><input type="text" name="foodRecipeId" id="foodRecipeId" value="${recipe.getFoodRecipeId()}" style="display : none"></h3>


            <label>FOOD NAME:</label>
            <input  id="foodRecipeName" type="text"  name="foodRecipeName" value="${recipe.getFoodRecipeName()}">

            <label>NO OF PERSON:</label>
            <c:set var="noOfPerson" value="${recipe.getNoOfPerson()}" />
            <select name="noOfPerson" value="${recipe.getNoOfPerson()}" >
                  <option value="1"<c:if test="${fn:contains(noOfPerson, '1')}">
                                                    selected </c:if>>1</option>

                                           <option value="2"<c:if test="${fn:contains(noOfPerson, '2')}">
                                                  selected </c:if>>2</option>
                                           <option value="3"<c:if test="${fn:contains(noOfPerson, '3')}">
                                                  selected </c:if>>3</option>
                                           <option value="4"<c:if test="${fn:contains(noOfPerson, '4')}">
                                               selected </c:if>>4</option>
                                       </select>
</div>

<div>
            <label>FOOD TYPE:</label>
             <c:set var="foodType" value="${recipe.getFoodType()}" />
            <select name="foodType" value="${recipe.getFoodType()}" >
                <option value="VEG"<c:if test="${fn:contains(foodType, 'VEG')}">
                                                                       selected </c:if>>VEG</option>
                <option value="NON_VEG"<c:if test="${fn:contains(foodType, 'NON_VEG')}">
                                                                           selected </c:if>>NON VEG</option>
            </select>

            <label>CUISINE:</label>
            <select name="cuisine" value="${recipe.getCuisine()}">

                <option value="CHINESE">CHINESE</option>
                <option value="INDIAN">INDIAN</option>
                <option value="ITALIAN">ITALIAN</option>
                <option value="KOREAN">KOREAN</option>
            </select>



            </div>

            <div>
            <label>INGREDIENT 1:</label>
            <input id="ingredient1"type="text" name="ingredient1"   value="${recipe.getIngredient1()}">
            </div>
            <div>
            <label>QUANTITY 1:</label>
           <c:set var="quantity1" value="${recipe.getQuantity1()}" />
                       <select name="quantity1" value="{recipe.getQuantity1()}">

                           <option value="1"<c:if test="${fn:contains(quantity1, '1')}">
                                    selected </c:if>>1</option>

                           <option value="2"<c:if test="${fn:contains(quantity1, '2')}">
                                  selected </c:if>>2</option>
                           <option value="3"<c:if test="${fn:contains(quantity1, '3')}">
                                  selected </c:if>>3</option>
                           <option value="4"<c:if test="${fn:contains(quantity1, '4')}">
                               selected </c:if>>4</option>
                       </select>
            </div>


            <div>
            <label>INGREDIENT 2:</label>
            <input id="ingredient2"type="text" name="ingredient2"  value="${recipe.getIngredient2()}" >
            </div>


<div>
            <label>QUANTITY 2:</label>
            <c:set var="quantity2" value="${recipe.getQuantity2()}" />
                        <select name="quantity2" value="{recipe.getQuantity2()}">

                            <option value="1"<c:if test="${fn:contains(quantity2, '1')}">
                                     selected </c:if>>1</option>

                            <option value="2"<c:if test="${fn:contains(quantity2, '2')}">
                                   selected </c:if>>2</option>
                            <option value="3"<c:if test="${fn:contains(quantity2, '3')}">
                                   selected </c:if>>3</option>
                            <option value="4"<c:if test="${fn:contains(quantity2, '4')}">
                                selected </c:if>>4</option>
                        </select>
        </div>


        <div>
            <label>INGREDIENT 3:</label>
            <input id="ingredient3"type="text" name="ingredient3"   value="${recipe.getIngredient3()}" >
        </div>

        <div>
            <label>QUANTITY 3:</label>
            <c:set var="quantity3" value="${recipe.getQuantity3()}" />
                        <select name="quantity3" value="{recipe.getQuantity3()}">

                            <option value="1"<c:if test="${fn:contains(quantity3, '1')}">
                                     selected </c:if>>1</option>

                            <option value="2"<c:if test="${fn:contains(quantity3, '2')}">
                                   selected </c:if>>2</option>
                            <option value="3"<c:if test="${fn:contains(quantity3, '3')}">
                                   selected </c:if>>3</option>
                            <option value="4"<c:if test="${fn:contains(quantity3, '4')}">
                                selected </c:if>>4</option>
                        </select>
 </div>

<div>
            <label>INGREDIENT 4:</label>
            <input id="ingredient4"type="text" name="ingredient4"    value="${recipe.getIngredient4()}">
        </div>

        <div>
            <label>QUANTITY 4:</label>
             <c:set var="quantity4" value="${recipe.getQuantity4()}" />
            <select name="quantity4" value="{recipe.getQuantity4()}">

                <option value="1"<c:if test="${fn:contains(quantity4, '1')}">
                         selected </c:if>>1</option>

                <option value="2"<c:if test="${fn:contains(quantity4, '2')}">
                       selected </c:if>>2</option>
                <option value="3"<c:if test="${fn:contains(quantity4, '3')}">
                       selected </c:if>>3</option>
                <option value="4"<c:if test="${fn:contains(quantity4, '4')}">
                    selected </c:if>>4</option>
            </select>


        </div>

        <label>STEP TO DO:</label>
            <input  id="stepsToDo" type="text" name="stepsToDo"  value="${recipe.getStepsToDo()}">

            <button type="submit" name="SUBMIT">UPDATE</button>
        </form>

        <footer>
            &copy; 2024 Your Website Name. All rights reserved.
        </footer>
    </body>
</html>