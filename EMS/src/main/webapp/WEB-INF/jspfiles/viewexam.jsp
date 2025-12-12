<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>View Exam</title>
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
      a {
        text-decoration: none;
        color: #893dff;
      }
      a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>View Scheduled Exams</h1>
    </header>
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
        <th>Update Exam</th>
        <th>Delete Exam</th>
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
          <td><a href="updateexam?id=${m.examid}">Update</a></td>
          <td><a href="deleteExam?id=${m.examid}">Delete</a></td>
        </tr>
      </c:forEach>
    </table>
    <div style="text-align: center; margin-top: 20px">
      <a href="teacherdashboard">Go to Dashboard</a>
    </div>
  </body>
</html>
