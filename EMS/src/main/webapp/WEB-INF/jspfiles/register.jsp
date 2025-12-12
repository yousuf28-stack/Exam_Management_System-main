<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Student Registration</title>
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
      h1 {
        text-align: center;
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
      input[type="email"],
      input[type="password"],
      select {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }

      input[type="file"] {
        margin-top: 10px;
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

      #loc {
        margin-top: 10px;
      }
    </style>
  </head>
  <body>
    <header>
      <h1>Student Registration</h1>
    </header>
    <form action="insertUser" method="post">
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required />

      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required />

      <label for="standard">Standard:</label>
      <select id="standard" name="standard" required>
        <option value="Standard 8th">Standard 8th</option>
        <option value="Standard 9th">Standard 9th</option>
        <option value="Standard 10th">Standard 10th</option>
      </select>

      <label for="gender">Gender:</label>
      <input type="radio" id="male" name="gender" value="male" required />Male
      &nbsp; &nbsp; &nbsp;
      <input
        type="radio"
        id="female"
        name="gender"
        value="female"
        required
      />Female

      <label for="location" id="loc">Location:</label>
      <input type="text" id="location" name="location" required />

      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required />

      <label for="image">Upload image:</label>
      <input type="file" id="image" name="password" accept="image/*" />
      <br />
      <br />

      <input type="submit" value="Register" />
    </form>
  </body>
</html>
