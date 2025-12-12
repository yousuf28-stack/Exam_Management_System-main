<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Exam Management System</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #fff;
        color: #333;
      }
      header {
        background-color: #893dff;
        color: #fff;
        padding: 10px 0px;
        text-align: center;
      }
      nav {
        background-color: #893dff;
        padding: 10px;
        text-align: center;
      }
      nav a {
        color: black;
        text-decoration: none;
        padding: 10px 20px;
      }
      .card {
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        padding: 20px;
        margin: 20px;
        background-color: #fff;
        transition: box-shadow 0.3s ease;
      }
      .card:hover {
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
      }

      .cardwindow {
        display: flex;
        justify-content: center;
        margin-top: 150px;
        text-align: center;
      }

      .card2 {
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.5);
        padding: 20px 40px;
        height: 200px;
        width: 30%;
        margin: 60px;
        background-color: yellow;
        transition: box-shadow 0.3s ease;
      }

      .card2 p {
        line-height: 1.8;
        text-align: left;
      }
    </style>
  </head>
  <body>
    <div>
      <header>
        <h1>Exam Management System</h1>
      </header>
      <nav>
        <a href="studentLogin" class="card">Student Login</a>
        <a href="teacherLogin" class="card">Teacher Login</a>
        <a href="registerStudent" class="card">Student Registration</a>
      </nav>
    </div>
    <main>
      <div class="cardwindow">
        <div class="card2">
          <h2>Important Notice</h2>
          <p>
            New Batch of standard 8th have to register themselves first and then
            login
          </p>
        </div>
        <div class="card2">
          <h2>Note</h2>
          <p>
            Incase of retest of previous year's test use your old login
            credentials
          </p>
        </div>
        <div class="card2">
          <h2>Help</h2>
          <p>
            Students facing issues while login have to contact their class
            tecahers
          </p>
        </div>
      </div>
    </main>
  </body>
</html>
