<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
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
        .error{
                    color: red;
                    font-size: small;
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
    <form action="user" method="post"  onsubmit="validateForm(event)" >
        <h3>SIGN UP </h3>
        <div>
            <label>FIRST NAME:</label>
                       <input  id="firstname" type="text" placeholder="ENTER THE FIRST NAME" name="firstName" onblur="validateFirstName()">
                       <span id="firstnameError" class="error" style="display: none;">Enter valid firstname</span>


                       <label>LAST NAME:</label>
                       <input  id="lastname"type="text" placeholder="ENTER THE LAST NAME" name="lastName" onblur="validateLastName()">
                       <span id="lastnameError" class="error" style="display: none;">Enter valid lastname</span>

                       <label>EMAIL ID:</label>
                       <input id="email" type="email" placeholder="ENTER THE MAIL ID" name="emailId" onblur="validateEmail()">
                       <span id="emailError" class="error" style="display: none;">Enter valid email</span>
                        <span id="emailError2" class="error" style="display: none;">Email already taken</span>

                       <label>CONTACT NUMBER:</label>
                       <input id="contact" type="text" placeholder="ENTER THE CONTACT NUMBER" name="contactNumber" onblur="validateContactNumber()">
                       <span id="contactError" class="error" style="display: none;">Enter valid contact number</span>


                   </div>

                   <div>
                       <label>ALTERNATIVE NUMBER:</label>
                       <input id="alternative" type="text" placeholder="ENTER THE ALTERNATIVE NUMBER" name="alternativeNumber" onblur="validateAlternativeNumber()">
                       <span id="alternativeError" class="error" style="display: none;">Enter valid alternative number</span>

                       <label>FOOD TYPE:</label>
                       <select name="foodType" placeholder="ENTER THE FOOD TYPE">
                           <option value="VEG">VEG</option>
                           <option value="NON_VEG">NON VEG</option>
                       </select>

                       <label>ADDRESS:</label>
                       <input id="address" type="text" placeholder="ENTER THE ADDRESS" name="address" onblur="validateAddress()">
                       <span id="addressError" class="error" style="display: none;">Enter valid address</span>

                       <label>PASSWORD:</label>
                       <input id="password" type="password" placeholder="ENTER THE PASSWORD" name="password" onblur="validatePassword()">
                       <span id="passwordError" class="error" style="display: none;">Enter valid password</span>


                   </div>
                   <button id="register" type="submit" name="SUBMIT">SUBMIT</button>
               </form>
               <footer>
                   &copy; 2024 FOOD RECIPE. All rights reserved.
               </footer>

     <script type="text/javascript">

    function validateFirstName(){
           var firstname = document.getElementById('firstname').value;
           var firstnameError = document.getElementById('firstnameError');
           if (firstname.trim() === '' || firstname.length < 3 || firstname.length >8) {
              firstnameError.style.display = 'inline';
              return false;
         } else {
             firstnameError.style.display = 'none';
              return true;
         }
        }
        function validateLastName(){
           var lastname = document.getElementById('lastname').value;
           var lastnameError = document.getElementById('lastnameError');
           if (lastname.trim() === '' || lastname.length < 1 || lastname.length>2 ) {
              lastnameError.style.display = 'inline';
              return false;
         } else {
              lastnameError.style.display = 'none';
              return true;
         }
        }
    async function validateEmail() {
        var email= document.getElementById('email').value;
        var emailError= document.getElementById('emailError');
        var emailError2= document.getElementById('emailError2');
        var borders = document.getElementById('email');
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if(!emailRegex.test(email)){
           emailError2.style.display='none';
            emailError.style.display='inline';
            borders.style.borderColor = 'red';
            return false;
        }
        else{
        emailError.style.display='none';
                borders.style.borderColor = '';
           const isValid = await ajaxEmailCheck();
           console.log(isValid);
           return isValid;
        }
    }

    function validateContactNumber() {
    var contact = document.getElementById('contact').value;
    var contactError = document.getElementById('contactError');
    if (!/^\d{10}$/.test(contact.trim())) {
    contactError.style.display = 'inline';
    return false;
    } else {
    contactError.style.display = 'none';
    return true;
    }
    }
    function validateAlternativeNumber() {
    var alternative = document.getElementById('alternative').value;
    var alternativeError = document.getElementById('alternativeError');
    if (!/^\d{10}$/.test(alternative.trim())) {
        alternativeError.style.display = 'inline';
    return false;
    } else {
        alternativeError.style.display = 'none';
    return true;
    }
    }
    function validateAddress(){
           var address = document.getElementById('address').value;
           var addressError = document.getElementById('addressError');
           if (address.trim() === '' || address.length < 8 ) {
            addressError.style.display = 'inline';
              return false;
         } else {
            addressError.style.display = 'none';
              return true;
         }
        }
        function validatePassword(){
           var password = document.getElementById('password').value;
           var passwordError = document.getElementById('passwordError');
           if (password.trim() === '' ||password.length < 4||password.length>8 ) {
            passwordError.style.display = 'inline';
              return false;
         } else {
            passwordError.style.display = 'none';
              return true;
         }
        }

       async function validateForm(event) {
           event.preventDefault(); // Prevent the form from submitting synchronously

           if (await validateFirstName() &&
               await validateLastName() &&
               await validateContactNumber() &&
               await validateAlternativeNumber() &&
               await validateAddress() && await validateEmail() && await validatePassword()) {
               document.getElementById('register').disabled = false;
               event.target.submit();
               console.log("form valid");
               // Now you can submit the form programmatically
               return true;
           } else {
               document.getElementById('register').disabled = true;
               console.log("form invalid");
               return false;
           }
       }
        async function ajaxEmailCheck() {
            return new Promise((resolve, reject) => {
                var emailError2 = document.getElementById('emailError2');
                var borders = document.getElementById('email');
                let email2 = document.getElementById("email").value;
                var encodedEmail = encodeURIComponent(email2.replace('.', '%2E'));
                const request = new XMLHttpRequest();

                request.open("GET",  "http://localhost:8080/Food_Recipe/rest/validateEmail/" + encodedEmail);
                request.send();

                request.onload = function () {
                    var returnedValue = this.responseText;
                    if (returnedValue === "true") {
                        emailError2.style.display = 'inline';
                        borders.style.borderColor = 'red';
                        resolve(false);
                    } else {
                        emailError2.style.display = 'none';
                        borders.style.borderColor = '';
                        resolve(true);
                    }
                };
            });
        }


        </script>


</body>
</html>