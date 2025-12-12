<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Welcome</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
        color: #333;
      }
      header {
        background-color: #893dff;
        color: #fff;
        padding: 10px 0;
        text-align: center;
        margin-bottom: 20px;
      }
      h2 {
        text-align: center;
        margin-top: 20px;
      }
      a.button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #893dff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
      }
      a.button:hover {
        background-color: #6a1dbd;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>Student Dashboard</h1>
    </header>
    <h2>Welcome ${name} to Student Dashboard</h2>
    <div style="text-align: center">
      <a href="viewstudentexam?standard=${standard}" class="button"
        >View Exam</a
      >
    </div>
  </body>
</html>
