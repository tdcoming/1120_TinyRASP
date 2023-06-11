<%--
  Created by IntelliJ IDEA.
  User: 沉铝汤
  Date: 2023/4/8
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>RceTest-Ping Tools</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #1f1f1f;
        }
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            width: 50%;
            height: 50%;
            border: 2px solid #fff;
            padding: 1rem;
            background-color: #292929;
            border-radius: 0.5rem;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.25);
        }

        .input-container {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100%;
            margin-bottom: 1rem;
            flex-wrap: wrap;
        }

        .input-container input {
            flex: 1;
            padding: 0.5rem;
            font-size: 1rem;
            background-color: #444;
            border: none;
            border-radius: 0.25rem;
            color: #fff;
            outline: none;
            margin-right: 1rem;
        }

        #submit-btn {
            padding: 0.5rem;
            font-size: 1rem;
            background-color: #007bff;
            border: none;
            border-radius: 0.25rem;
            color: #fff;
            outline: none;
            cursor: pointer;
        }

        .result {
            width: 100%;
            height: 100%;
            padding: 1rem;
            font-size: 1.25rem;
            font-weight: bold;
            color: #fff;
            text-align: center;
            overflow: auto;
        }

        #submit-btn:hover {
            background-color: #282c34;
            color: #61dafb;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="input-container">
        <form id="my-form" method="POST" action="/rce-servlet">
            <input type="text" id="input-box" name="ip" placeholder="Enter your IP here">
            <button type="submit" id="submit-btn">Submit</button>
        </form>
    </div>
    <div class="result" id="result-box"><%= request.getAttribute("result")%></div>
</div>

<script>
    const inputBox = document.getElementById('input-box');
    const resultBox = document.getElementById('result-box');
    const submitBtn = document.querySelector('#submit-btn');

</script>
</body>
</html>

