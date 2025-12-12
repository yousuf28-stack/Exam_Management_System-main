<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Update Exam</title>
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
      form {
        max-width: 500px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #fff;
      }
      label {
        display: block;
        margin-bottom: 5px;
      }
      input[type="text"],
      input[type="date"],
      select {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }
      input[type="submit"] {
        width: calc(100% - 20px);
        padding: 10px;
        background-color: #893dff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
      }
      input[type="submit"]:hover {
        background-color: #6a1dbd;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>Update Exam</h1>
    </header>
    <h2>Update Exam</h2>
    <form action="updateexamdetails" method="post">
      <input type="hidden" name="mid" value="${exams.examid}" />
      <label for="examtitle">Exam Title</label>
      <input
        type="text"
        name="examtitle"
        placeholder="Exam Title"
        value="${exams.examtitle}"
        required
      /><br /><br />
      <label for="examdatetime">Exam Date Time</label>
      <input
        type="date"
        name="examdatetime"
        value="${exams.examdatetime}"
        required
      /><br /><br />
      <label for="examduration">Exam Duration</label>
      <select id="examduration" name="examduration" required>
        <option value="${exams.examduration}">${exams.examduration}</option>
        <option value="1 hour">1 hour</option>
        <option value="2 hours">2 hours</option>
        <option value="3 hours">3 hours</option></select
      ><br /><br />
      <label for="totalquestion">Total Question</label>
      <select id="totalquestion" name="totalquestion" required>
        <option value="${exams.totalquestion}">${exams.totalquestion}</option>
        <option value="20 questions">20 questions</option>
        <option value="30 questions">30 questions</option>
        <option value="50 questions">50 questions</option></select
      ><br /><br />
      <label for="rightanswer">Marks for Right Answer</label>
      <select id="rightanswer" name="rightanswer" required>
        <option value="${exams.rightanswer}">${exams.rightanswer}</option>
        <option value="1 mark">1 mark</option>
        <option value="2 marks">2 marks</option>
        <option value="5 marks">5 marks</option></select
      ><br /><br />
      <label for="wronganswer">Marks for Wrong Answer</label>
      <select id="wronganswer" name="wronganswer" required>
        <option value="${exams.wronganswer}">${exams.wronganswer}</option>
        <option value="0 mark">0 mark</option>
        <option value="-1 mark">-1 mark</option></select
      ><br /><br />
      <label for="standard">Standard</label>
      <select id="standard" name="standard" required>
        <option value="${exams.standard}">${exams.standard}</option>
        <option value="Standard 8th">Standard 8th</option>
        <option value="Standard 9th">Standard 9th</option>
        <option value="Standard 10th">Standard 10th</option></select
      ><br /><br />
      <input type="submit" value="Update" />
    </form>
  </body>
</html>
