<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>View Student Exam</title>
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
      table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
      }
      th,
      td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: center;
      }
      th {
        background-color: #893dff;
        color: #fff;
      }
      tr:nth-child(even) {
        background-color: #f2f2f2;
      }
      tr:hover {
        background-color: #ddd;
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
      <h1>View Scheduled Exams</h1>
    </header>
    <h2>Scheduled Exams for this Year</h2>
    <table>
      <tr>
        <th>Exam id</th>
        <th>Exam Title</th>
        <th>Exam Date</th>
        <th>Exam Duration</th>
        <th>Total Questions</th>
        <th>Exam Type</th>
        <th>Total Marks</th>
        <th>Standard</th>
      </tr>
      <c:forEach items="${exams}" var="m">
        <tr>
          <td>${m.examid}</td>
          <td>${m.examtitle}</td>
          <td>${m.examdatetime}</td>
          <td>${m.examduration}</td>
          <td>${m.totalquestion}</td>
          <td>${m.rightanswer}</td>
          <td>${m.wronganswer}</td>
          <td>${m.standard}</td>
        </tr>
      </c:forEach>
    </table>
    <div style="text-align: center; margin-top: 20px">
      <a href="/" class="button">Logout</a>
    </div>
  </body>
</html>
