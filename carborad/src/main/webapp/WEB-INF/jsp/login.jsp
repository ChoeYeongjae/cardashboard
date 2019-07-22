<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
  body {
  	background-image: url("/resources/img/loginMain.png");
  	background-size: cover;
  }
  .right {
  	width: 270px;
    height: 290px;
    margin-left: 54%;
    border-radius: 8px;
    background: #fff;
    margin-top: 10%;
    position: absolute;
  }
  .left {
  	color: #fff;
  	position: absolute;
    top: 18%;
    left: 24%;
  }
  form .submit {
  	display: inline-block;
    width: 201px;
    border-radius: 4px;
    background: #5e9dfd;
    font-size: 13px;
    font-weight: bold;
    line-height: 28px;
    text-align: center;
    color: #fff;
    box-sizing: border-box;
  	margin-top: 10px;
  }
  form .box {
  	width: 90%;
  	margin-top: 5px;
  	padding: 0px 18px;
  }
  .fa{
  	position: absolute !important;
    color: slategrey;
    margin: 6px;
  } 
  form {
  	padding: 24px 60px 10px 32px;
  	margin-fop:10px;
  }
  .right .member{
  	font-size: x-small;
  	font-weight: bold;
  	margin-left: 4px;
  	margin-top: 20px;
  }
  .right .member a {
  	text-decoration: none;
  }
</style>
</head>
<body>
	  <div class="left">
	  		<h1>CarDashBoard</h1>
	  		<h3>This web is a car dashboard.</h3>
	  		<h4>Anyone can use it.</h4>
	  		<h5>Please use it if you want.</h5>
	  		<h5>It will be a great help to you.</h5>
	  		<h5>Anyone is welcome.....</h5>
	  </div>
	  <div class="right"> 
                <form>
                  <h2>Login</h2>
                  <div><i class="fa fa-user"></i><input class="box" type="text" name="id"></input></div>
                  <div><i class="fa fa-unlock"></i><input class="box" type="password" name="pw"></input></div>
                  <div><input class="submit" type="submit" value="login"></input></div>   
                  <p class="member">회원아닌 경우 <a href="member">"여기"</a>를 클릭해주세요.</p>
                </form>
            </div>
</body>
</html>