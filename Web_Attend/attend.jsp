

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="bg">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://static.anychart.com/js/8.0.1/anychart-core.min.js"></script>
        <script src="https://static.anychart.com/js/8.0.1/anychart-pie.min.js"></script>
        <title>JSP Page</title>
        <br><br><br>
    </head>
    <style>
        
        .center{
            margin: auto;
            width: 70%;
           }
        .bg{
            /* The image used */
            background-image: linear-gradient(#AEB6BF, #FBFCFC);
            background-color: #FBFCFC;
            /* Full height */
            height: 100%; 
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        #container {
            width: 100%;
            height: 100%;
            margin: 0;
            padding: 0;
          }
    </style>
    <body style="background-color: rgba(255,0,0,0)">
     
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cahce");
            response.setHeader("Expires","0");
            if(session.getAttribute("username") == null)
              {
                 response.sendRedirect("login.jsp");
              }
        %>
        
          <div class="card center">
              <div class="card-header">
                  <div class="btn-group" role="group" aria-label="Basic example">
                    <form action = "student.jsp">
                        <button type="submit" class="btn btn-secondary" value="student">View Details</button>
                      </form>
                      
                      <form action = "attend.jsp">
                        <button type="submit" class="btn btn-secondary" value="attend">Mark Attendance</button>
                      </form>
                      
                      <form action = "enroll.jsp">
                        <button type="submit" class="btn btn-secondary" value="enroll">Enroll Course</button>
                      </form>
                  </div>
              </div>
            <div class="card-body">
              <p class="card-text">
                  
                  <h2>Mark Attendance</h2>
                  
                  <form action = "Attend" method = "post">
                        <div class="form-group">
                          <label for="courseId">Course ID:</label>
                          <input type="text" class="form-control" id="courseId" aria-describedby="emailHelp" placeholder="Enter Course Id" name = "courseId" required>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="semester">Semester:</label>
                                <input type="text" class="form-control" id="semester" placeholder="Enter Semester" name = "sem" required>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="slot">Slot:</label>
                                <input type="text" class="form-control" id="slot" placeholder="Enter Slot" name = "slot" required>             
                            </div>
                        </div>
                        
                        <div class="form-group">
                          <label for="pin">PIN:</label>
                          <input type="text" class="form-control" id="pin" placeholder="Enter PIN" name = "pin" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                  </form>
                  
                  <br><br><br><br>
                      <form action="Logout">
                        <button type="submit" class="btn btn-primary" value = "Logout">Log out</button>
                      </form>
              </p>
            </div>
          </div>
    </body> 
</html>
