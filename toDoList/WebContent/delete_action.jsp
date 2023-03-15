<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp" %>


<% 

	int idx = Integer.parseInt(request.getParameter("idx"));
	hd.delete(idx);
	
	String url = "list.jsp";
	response.sendRedirect(url);

%>

</body>
</html>