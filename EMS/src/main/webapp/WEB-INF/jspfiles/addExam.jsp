<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Schedule Exam</title>
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
      form {
        max-width: 500px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        background-color: #f9f9f9;
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
        margin-top: 10px;
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
      <h1>Schedule Exam</h1>
    </header>
    <form action="insertexam" method="post">
      <label for="examtitle">Exam Title</label>
      <input
        type="text"
        id="examtitle"
        name="examtitle"
        placeholder="Exam Title"
        required
      /><br /><br />
      <label for="examdatetime">Exam Date Time</label>
      <input
        type="date"
        id="examdatetime"
        name="examdatetime"
        required
      /><br /><br />
      <label for="examduration">Exam Duration</label>
      <select id="examduration" name="examduration" required>
        <option value="">Select Option</option>
        <option value="1 hour">1 hour</option>
        <option value="2 hours">2 hours</option>
        <option value="3 hours">3 hours</option></select
      ><br /><br />
      <label for="totalquestion">Total Question</label>
      <select id="totalquestion" name="totalquestion" required>
        <option value="">Select Option</option>
        <option value="20 questions">20 questions</option>
        <option value="30 questions">30 questions</option>
        <option value="50 questions">50 questions</option></select
      ><br /><br />
      <label for="rightanswer">Exam Type</label>
      <select id="rightanswer" name="rightanswer" required>
        <option value="">Select Option</option>
        <option value="MCQ">MCQ</option>
        <option value="Subjective">Subjective</option></select
      ><br /><br />
      <label for="wronganswer">Total Marks</label>
      <select id="wronganswer" name="wronganswer" required>
        <option value="">Select Option</option>
        <option value="30 marks">30 marks</option>
        <option value="70 marks">70 marks</option></select
      ><br /><br />
      <label for="standard">Standard</label>
      <select id="standard" name="standard" required>
        <option value="">Select Option</option>
        <option value="Standard 8th">Standard 8th</option>
        <option value="Standard 9th">Standard 9th</option>
        <option value="Standard 10th">Standard 10th</option></select
      ><br /><br />
      <input type="submit" value="Add" />
    </form>
  </body>
</html>
