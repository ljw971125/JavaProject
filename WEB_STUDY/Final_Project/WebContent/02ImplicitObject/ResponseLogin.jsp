<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - Response</title></head>
<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd"); 
if (id.equalsIgnoreCase("ryan") && pwd.equalsIgnoreCase("1234")) { 
    response.sendRedirect("ResponseWelcome.jsp");// 아이디 패스워드를 제대로 입력한 경우 ()로 이동
}
else {
    request.getRequestDispatcher("ResponseMain.jsp?loginErr=1") // 아이디 패스워드가 일치하지 않을 경우
       .forward(request, response); 
}
%>
</body>
</html>