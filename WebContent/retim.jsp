<%@ page import="java.sql.*,java.io.*"%>
<%
try {
	String path="C:\\College\\06A81A0571.jpg";
	out.println(path);
	%>
	<img src="<%=path%>" height="300" width="500"/>
	<%
}
catch(Exception ex){
	out.println("error :"+ex);
}
	
%>