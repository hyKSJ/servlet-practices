<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/helloweb/join.jsp" method="post">
		<label>이메일:</label>
			<input type="text" name="email" value="">
		<br><br>
		
		<label>비밀번호:</label>
			<input type="password" name="password" value="">
		<br><br>
		
		<label>생년:</label>
			<select name="birthYear">
				<option>2000년</option>
				<option>1999년</option>
				<option>1998년</option>
				<option>1997년</option>
			</select>
		<br><br>
		
		<label>생년:</label>
			남 <input type="radio" name="gender" value="male" checked="checked">
			여 <input type="radio" name="gender" value="female">
		<br><br>
		
		<label>자기소개</label> <br>
		<textarea name="description"></textarea>
		<br><br>
		
		<label>취미</label> <br>
		코딩: <input type="checkbox" name="hobby" value="coding">
		술(지웅): <input type="checkbox" name="hobby" value="drinking(jiwoong)">
		요리: <input type="checkbox" name="hobby" value="cooking">
		수영: <input type="checkbox" name="hobby" value="swimming">
		<br><br>
	
		
		
		
		<input type="submit" value="가입">
	</form>
</body>
</html>