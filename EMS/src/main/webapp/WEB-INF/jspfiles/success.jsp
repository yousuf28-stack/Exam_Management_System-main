<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Success</title>
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
        color: green;
      }
      h4 {
        text-align: center;
        margin-top: 10px;
      }
      a {
        color: #893dff;
        text-decoration: none;
      }
      a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>Success</h1>
    </header>
    <h2>${msg}</h2>
    <h4><a href="viewexam">View Exam</a></h4>
  </body>
</html>
