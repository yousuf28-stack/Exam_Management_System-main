<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Teacher Dashboard</title>
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
        padding: 10px 0;
        text-align: center;
      }
      h2 {
        text-align: center;
        margin-top: 20px;
      }
      a.button {
        display: block;
        width: 200px;
        padding: 10px;
        margin: 10px auto;
        text-align: center;
        text-decoration: none;
        color: #fff;
        background-color: #893dff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      a.button:hover {
        background-color: #6a1dbd;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>Teacher Dashboard</h1>
    </header>
    <h2>Welcome, Teacher!</h2>
    <a href="addExam" class="button">Schedule Exam</a>
    <a href="viewexam" class="button">View Exams</a>
    <footer><a href="/" class="button">Logout</a></footer>
  </body>
</html>
