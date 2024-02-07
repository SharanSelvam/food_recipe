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
            background-color:  #020305;
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
            border: 1px solid #ced4da;
            border-radius: 4px;
            background-color: #f8f9fa;
            color: #495057;
        }

        select {
            appearance: none;
        }

        button {
            background-color:  #020305;
            color: #fff;
            padding: 12px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color:  #020305;
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
    <form action="updateUser" method="post" >
        <h3>update </h3>
        <div>

         <h3 style"display : none"><input type="text" name="userId" id="userId" value="${food.getUserId()}" style="display : none"></h3>

            <label>FIRST NAME:</label>
            <input  id="firstname" type="text"  name="firstName" value="${food.getFirstName()}">


            <label>LAST NAME:</label>
            <input  id="lastname"type="text"  name="lastName" value="${food.getLastName()}" >

            <label>EMAIL ID:</label>
            <input id="email" type="email" name="emailId" value="${food.getEmailId()}" >

            <label>CONTACT NUMBER:</label>
            <input id="contact" type="text" name="contactNumber" value="${food.getContactNumber()}" >


        </div>

        <div>
            <label>ALTERNATIVE NUMBER:</label>
            <input id="alternative" type="text" name="alternativeNumber" value="${food.getAlternativeNumber()}" >

            <label>FOOD TYPE:</label>
            <select name="foodType"  value="${food.getFoodType()}">
                <option value="VEG">VEG</option>
                <option value="NON_VEG">NON_VEG</option>
            </select>

            <label>ADDRESS:</label>
            <input id="address" type="text"  name="address"  value="${food.getAddress()}">

              <label>PASSWORD:</label>
              <input id="password" type="password" name="password" value="${food.getPassword()}" >



        </div>
        <button type="submit" name="SUBMIT">UPDATE</button>
    </form>
    <footer>
        &copy; 2024 Your Website Name. All rights reserved.
    </footer>

<body>
</html>
