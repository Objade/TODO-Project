<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<section>
	<h3>할 일 수정</h3>
	
	<% if(request.getMethod().equals("GET")) { 
		int idx = Integer.parseInt(request.getParameter("idx"));
		pageContext.setAttribute("todo", hd.getItem(idx));
	
	%>
	
	<form method="POST">
	<input type="hidden" name="idx" value="${todo.idx }">
	<table>	
		<tr>
			<th>할 일</th>
			<td><input type="text" name="work" placeholder="할 일 입력" value="${todo.work }" required></td>
		</tr>
		
		<tr>
			<th>날짜</th>
			<td><input type="date" name="date" value="${todo.date }" required></td>
		</tr>
		
			<tr>
			<th>완료 여부</th>
			<td><input type="checkbox" name="done" value="true"></td>	
		</tr>

	</table>
	
		<input type="submit" value="update">
	</form>
	
	<% } %>
	
	
	<% if(request.getMethod().equals("POST")) { %>

	<jsp:useBean id="user" class="toDoList.Todo" scope="page" />
	<jsp:setProperty property="*" name="user" />
	
	${handler.update(user) }
	
	<%
		String url = "list.jsp";
		response.sendRedirect(url);


	 } %>
	
	
	
</section>

</body>
</html>