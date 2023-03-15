<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<section>
	<div class="list">
	<h3>할 일 목록</h3>
	<table>
		<thead>
			<tr>
				<th>완료 여부</th>
				<th>할 일</th>
				<th>날짜</th>
			</tr>
			
		</thead>
		
		<tbody>
			<%
				ArrayList<Todo> list = hd.getList();
				
				for(Todo to : list) {
					pageContext.setAttribute("todo", to);
					
			%>
			<tr>
				<td>${todo.done ? '완료' : '미완료' }</td>
				<td>${todo.work }</td>
				<td>${todo.date }</td>
			
			</tr>
		
		
		
			<% } %>
		</tbody>
		
	
	
	</table>
	</div>
</section>



</body>
</html>