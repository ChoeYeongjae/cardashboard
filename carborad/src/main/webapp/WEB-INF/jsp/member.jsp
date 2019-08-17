<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<style>
  body {
  	background-image: url("/resources/img/loginMain.png");
  	background-size: cover;
  }
  .right {
  	width: 270px;
    height: 290px;
    margin-left: 38%;
    border-radius: 8px;
    background: #fff;
    margin-top: 10%;
    position: absolute;
  }
  form .submit {
  	border: none;
  	display: inline-block;
    width: 209px;
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
  	margin-top: 7px;
  	padding: 0px 22px;
  	height: 24px;
  }
  .fa{
  	position: absolute !important;
    color: slategrey;
    margin: 13px 8px 0px 6px;
  } 
  form {
  	padding: 15px 60px 10px 32px;
  	margin-fop:10px;
  }
  .right .member{
  	font-size: x-small;
  	font-weight: bold;
  	margin-left: 5px;
  	margin-top: 20px;
  }
  .right .member a {
  	text-decoration: none;
  }
  form h2 {
  	margin-left: 14px;
  }
  form .idBtn {
  	position: absolute;
    margin-left: 59%;
    margin-top: -4%;
    border-radius: 4px;
    background: #5e9dfd;
    font-size: 9px;
    border: none;
  	display: inline-block;
  	color: #fff;
  }
</style>
</head>
<body>
	  <div class="right"> 
                <form id="member">
                  <h2>Member Entry</h2>
                  <div>
                  	<i class="fa fa-user"></i>
                  	<input id="ids" class="box" type="text" placeholder="id" name="ids"></input>
                  </div>
                  <div>
                  	<i class="fa fa-unlock"></i>
                  	<input class="box" type="password" placeholder="pw" name="pw"></input>
                  </div>
                  <div>
                  	<i class="fa fa-child"></i>
                  	<input class="box" type="text" placeholder="name" name="name"></input>
                  </div>
                  <div>
                  	<i class="fa fa-at"></i>
                  	<input class="box" type="text" placeholder="email" name="email"></input>
                  </div>
                  <div><input class="submit" type="submit" value="Join"></input></div>   
               </form>
            </div>
         <script>
          $(document).ready(function() {
           $(".submit").click(function(){
        	   
        	   $.ajax({
        		   type : "GET",
                   url : "duplicate",
                   dataType : "json",
                   success : function(data) {
                	   
                	   var idsValue = $('input[name=ids]').val();
                	   var emaValue = $('input[name=email]').val();
                	   
                	   $.each(data, function (i, item) {
                		   if(item.ids === idsValue){
                			   alert("아이디 중복입니다.");
                		   }else if(item.email === emaValue){
                			   alert("이메일 중복입니다.");	
                	       }else {
                	    	   test();
                	       }
                    	})
                   }
               });
				//	문자, 숫자, 특수문자를 혼합하여 6~15자 이내
        	   var pw = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,15}$/;
        	   var email = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;	
        	   var id = /^[a-z0-9_-]{3,16}$/;
        	   
        	   var pwValue = $('input[name=pw]').val();
        	   var emValue = $('input[name=email]').val();
        	   var idsValue = $('input[name=ids]').val();
        	   
        	   
        	   if(false === id.test(idsValue)) {
        		   alert('아이디가 일치하지않습니다.');
        	   }else if(false === pw.test(pwValue)){
        		   alert('문자, 숫자, 특수문자를 혼합하여 6~15자 이내');
        	   }else if(false === email.test(emValue)){
        		   alert('이메일 주소가 유효하지 않습니다');
        	   }
        	   else{
        		   alert("유효성 검사 완료!!!!!!!!!!!!!!!!");
        	   }
       		});
      	  });
    	 function test(){
    	
          var params = jQuery("#member").serialize();
          console.log(params);
          
          $.ajax({
              url: '/carmembers',
              data: params,
              type: 'POST'
          })
   	    	setTimeout(function() {
   		   		location.replace("carmember"); 
			}, 0);
      	 } 
   </script>   
</body>
</html>