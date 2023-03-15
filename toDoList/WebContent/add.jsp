<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>

	<div class="list">
	<h3>할 일 추가</h3>
	<% if(request.getMethod().equals("GET")) { %>
	
	<form method="POST">
	<table>	
		<tr>
			<th>할 일</th>
			<td><input type="text" name="work" placeholder="할 일 입력" required></td>
		</tr>
		
		<tr>
			<th>날짜</th>
			<td><input type="date" name="date" required></td>
		</tr>
		
			<tr>
			<th>완료 여부</th>
			<td><input type="checkbox" name="done" value="true"></td>	
		</tr>

	</table>
	
		<input type="submit" value="submit">
	</form>
	
	<% } %>
	</div>
	
	<% if(request.getMethod().equals("POST")) { %>

	<jsp:useBean id="user" class="toDoList.Todo" scope="page" />
	<jsp:setProperty property="*" name="user" />
	
	${handler.insert(user) }
	
	<%
		String url = "list.jsp";
		response.sendRedirect(url);


	 } %>
	
	
	
</section>






</body>
</html>