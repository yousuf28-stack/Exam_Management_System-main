<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Student Login</title>
    <style>
      * {
        padding: 0;
        margin: 0;

        box-sizing: border-box;
      }

      body {
        width: 100%;
        height: 100vh;
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .login {
        background-color: whitesmoke;
        width: 70%;
        height: 80vh;
        border-radius: 10px;
        box-shadow: 2px 2px 10px grey;
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
      }

      .image {
        height: 85%;
        border-radius: 10px;
        margin-right: 50px;
        width: 400px;
        background-color: white;
      }

      .login .content {
        height: 85%;
        border-radius: 10px;
        margin-left: 50px;
        width: 400px;
        background-color: white;
      }

      .content h1 {
        font-size: 2.5rem;
        text-align: center;
        margin: 10 0;
        padding-bottom: 20px;
      }

      .content form .inputs {
        width: 80%;
        height: auto;
        border-radius: 10px;
        margin: 10px auto;
        background-color: white;
      }

      .content form .inputs label {
        font-size: 1.2rem;
        font-weight: 700;
      }

      form .inputs input {
        width: 100%;
        padding-left: 10px;
        border: none;
        border-bottom: 2px solid black;
        outline: none;
        height: 5vh;
      }

      .content form .pass {
        margin-top: 50px;
      }

      form .rem {
        margin-left: 10%;
      }

      #btn {
        width: 80%;
        height: 5vh;
        border-radius: 10px;
        border: none;
        background-color: #893dff;
        color: white;
        font-size: 1.5rem;
        font-weight: 700;
        outline: none;
        transition: 0.2s linear;
        margin: 20px 10%;
      }

      #btn:hover {
        scale: 0.95;
      }

      form p {
        margin: 30px 0;
        text-align: center;
        font-size: 1.2rem;
        font-weight: 700;
      }

      img {
        width: 350px;
        height: 320px;
        margin-top: 80px;
      }

      form p a {
        text-decoration: none;
      }
    </style>
  </head>
  <body>
    <div class="login">
      <div class="content">
        <h1>Student Login</h1>
        <form action="checkstudent" method="post">
          <div class="inputs">
            <label for="username">Username:</label>
            <input type="email" id="username" name="username" />
          </div>

          <div class="inputs pass">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" />
          </div>

          <div class="rem">
            <input type="checkbox" />
            <label for="">Remember me</label>
          </div>

          <input type="submit" value="Login" id="btn" /><br />
          <p>
            ---------<span
              >New User? <a href="registerStudent">Register here</a></span
            >--------
          </p>
        </form>
      </div>
      <div class="image">
        <img src="login.png" alt="" />
      </div>
    </div>
  </body>
</html>
