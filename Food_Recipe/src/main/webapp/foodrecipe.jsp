<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
        <form action="addFood" method="post">

            <h3>FOOD RECIPE </h3>

        <div>

 <label>USERID:</label><input type="text" name="userId" id="userId" value="${userId}">

            <label>FOOD NAME:</label>
            <input  id="foodRecipeName" type="text" placeholder="ENTER THE FOOD NAME" name="foodRecipeName">

            <label>NO OF PERSON:</label>
            <select name="noOfPerson" >
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
</div>

<div>
            <label>FOOD TYPE:</label>
            <select name="foodType" >
                <option value="VEG">VEG</option>
                <option value="NON_VEG">NON VEG</option>
            </select>

            <label>CUISINE:</label>
            <select name="cuisine">
            <option value="">Select cuisine</option>
                <option value="CHINESE">CHINESE</option>
                <option value="INDIAN">INDIAN</option>
                <option value="ITALIAN">ITALIAN</option>
                <option value="KOREAN">KOREAN</option>
            </select>



            </div>

            <div>
            <label>INGREDIENT 1:</label>
            <input id="ingredient1"type="text" name="ingredient1" placeholder="ENTER THE INGREDIENT 1" >
            </div>
            <div>
            <label>QUANTITY 1:</label>
            <select name="quantity1" >
                <option value="">Select quantity</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
            </div>


            <div>
            <label>INGREDIENT 2:</label>
            <input id="ingredient2"type="text" name="ingredient2" placeholder="ENTER THE INGREDIENT 2" >
            </div>


<div>
            <label>QUANTITY 2:</label>
            <select name="quantity2" >
            <option value="">Select quantity</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
        </div>


        <div>
            <label>INGREDIENT 3:</label>
            <input id="ingredient3"type="text" name="ingredient3" placeholder="ENTER THE INGREDIENT 3" >
        </div>

        <div>
            <label>QUANTITY 3:</label>
            <select name="quantity3" >
            <option value="">Select quantity</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
 </div>

<div>
            <label>INGREDIENT 4:</label>
            <input id="ingredient4"type="text" name="ingredient4" placeholder="ENTER THE INGREDIENT 4" >
        </div>

        <div>
            <label>QUANTITY 4:</label>
            <select name="quantity4" >
            <option value="">Select quantity</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>


        </div>

        <label>STEP TO DO:</label>
            <input  id="stepsToDo" type="text" name="stepsToDo" placeholder="ENTER THE STEP">

            <button type="submit" name="SUBMIT">SUBMIT</button>
        </form>

        <footer>
            &copy; 2024 Your Website Name. All rights reserved.
        </footer>
    </body>
</html>