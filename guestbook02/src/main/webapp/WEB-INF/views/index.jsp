<%@page import="com.poscodx.guestbook.dao.GuestbookDao"%>
<%@page import="com.poscodx.guestbook.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	List<GuestbookVo> list = (List<GuestbookVo>) request.getAttribute("list");
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook02/gb" method="post">
	<input type="hidden" name="a" value="add">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>
	</form>
	
	<%	
		for(int i=0;i < list.size();i++) {
	%>
	<br>
	<table width=510 border=1>
		<tr>
			<td><%=i+1 %></td>
			<td><%=list.get(i).getName() %></td>
			<td><%=list.get(i).getDate() %></td>
			<td><a href="/guestbook02/gb?a=deleteform&no=<%=list.get(i).getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=list.get(i).getMessage() %></td>
		</tr>
	</table>
	<%
		}
	%>
	
</body>
</html>