<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="toDoList.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	pageContext.setAttribute("cpath", request.getContextPath());
	
	Handler hd = (Handler)application.getAttribute("handler");
	
	if(hd == null) {
		hd = new Handler();
		application.setAttribute("handler", hd);	
	}
	

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투두</title>

	 <style>
        body {
            background-color: #313E59;
        }

        header > h1 {
            display: flex;
            margin: auto;
            align-items: center;
            justify-content: center;
            width: 100%;
            text-align: center;
            color: white;
        }

        a {
            text-decoration: none;
            color: white;
        }
        
        h3 {
        	color: white;
        }

        ul {
            display: flex;
            width: 100%;
            justify-content: space-around;
            list-style: none;
            padding: 0%;
            color: white

        }

	  	img {
           display: flex;
           margin: auto;
            
        }
        
        table {
        	border-collapse: collapse;
        }
        
        th, td {
        	border: 1px solid black;
        	padding: 5px;
        	width: 500px;
        	color: black;
        }
        
        th {
         background-color: #F28D52;
        }
        
        td {
        	text-align: center;
        	background-color: white;
        }
        
		input[type="submit"] {
			background-color: #F28D52;
			padding: 10px;
			border: 0px;
			width: 200px;
			margin: 10px 0;
		}
		
		button {
			background-color: #F28D52;
			padding: 5px;
			border: 0px;
		}
	
	.list {
		display: flex;
		justify-content: center;
		align-items: center;
		text-align: center;
		flex-direction: column;
	}

    </style>


</head>
<body>

<header>
	<h1><a href="${cpath }/index.jsp">투두</a></h1>
	
	<ul>
		<li><a href="${cpath }/list.jsp">List</a></li>
		<li><a href="${cpath }/add.jsp">Add</a></li>
		<li><a href="${cpath }/delete.jsp">Delete</a></li>
		<li><a href="${cpath }/update.jsp">Update</a></li>
	
	</ul>
	
	
</header>

