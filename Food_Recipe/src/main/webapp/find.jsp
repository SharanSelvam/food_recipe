<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

    <html>
    <head>
    <style>



     table {
              border-collapse: collapse;
              width: 100%;
              background-color: rgb(168, 246, 237);
            }

            th, td {
              text-align: left;
              padding: 8px;
            }

            tr:nth-child(even){background-color: #f2f2f2}

            th {
              background-color: #04AA6D;
              color: orange;
            }

            #getUsersTable{
                width: 80vw;
                margin: auto;
            }

            #updatebtn{
                background-color: rgba(240, 206, 14, 0.938);
            }

            #deletebtn{
                background-color: rgba(235, 56, 21, 0.938);
            }
</style>
    </head>
    <body>

     <table>
                <tr>
                    <th>Sl.No</th>
                    <th>FIRSTNAME</th>
                    <th>LASTNAME</th>
                    <th>EMAIL ID</th>
                    <th>CONTACT NUMBER</th>
                    <th>ALTERNATIVE NUMBER</th>
                    <th>FOODTYPE</th>
                    <th>ADDRESS</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="food" items="${ ListUser }">
                    <tr>
                        <td>${food.getUserId()}</td>
                        <td>${food.getFirstName()}</td>
                        <td>${food.getLastName()}</td>
                        <td>${food.getEmailId()}</td>
                        <td>${food.getContactNumber()}</td>
                        <td>${food.getAlternativeNumber()}</td>
                        <td>${food.getFoodType()}</td>
                        <td>${food.getAddress()}</td>
                        <td><a href="update/${food.getUserId()}">Update</a></td>                  <!--pathvariable  -->
                        <td><a href="delete/${food.getUserId()}">Delete</a></td>
                       <!--  <td><a href="delete?techId=${tech.getTechId()}">Delete</a></td>             requestparam -->
                    </tr>
                </c:forEach>
            </table>

            </form>
    </body>
    </html>