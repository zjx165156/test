<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml/DTD/xhtml-transitional.dtd">
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
     
    <title>登录系统</title>
     
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
 
  </head>
   
  <body>
      <form  id="form_login" action="/user/showUser.do">
              用户名：<input type="text" name="userName" id="userName"/>
              密码：<input type="password" name="password" id="password"/>
              <button type="button" value="登录" onclick="toLogin()">登录</button>
       </form>    
 
      <script src="http://libs.baidu.com/jquery/1.9.0/jquery.js" type="text/javascript"></script>
      <script>
              function toLogin(){
                  $.ajax({
                      url:"<%=basePath%>user/userLogin",
                      data:{"userName":"brianzhuang","password":"124652"},
                      type:"POST",
                      dataType:"html",
                      success: function(data,textstatus){
                          alert(textstatus);
                      },
                      error:function(jqxhr,textstatus,error){
                          alert(jqxhr);
                          alert(error);
                          alert(textstatus);
                      }
                  });
              }
               
      </script>
  </body>
</html>