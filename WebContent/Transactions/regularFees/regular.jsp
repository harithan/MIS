<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@page import="java.sql.*"%>
<%@page import="mis.Dbcon"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="check.jsp"  method="post" name="reg">
<table summary="">
<tr>
<td>counter:</td>
<td><select name="counter_name" id="counter_name" >
<option value="select">select</option>
<%Dbcon d= new Dbcon();
Connection con=d.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select distinct counter_name from counter_tab");
while(rs.next()){
 %>
				<option value=<%=rs.getString(1) %>><%=rs.getString(1) %></option>
<%} %>     
</select> </td>
   </tr>
   <tr>
<td>password:</td>
<td><input type="password" name="pwd" id="pwd"> 
</td>
  </tr>
  </table>
  <table width="800" border="0" cellspacing="0" cellpadding="2" summary="">
  <tr>
    <td>
    <input name="ok" type="submit"    value="&nbsp;&nbsp;ok&nbsp;&nbsp;" size="20" />
    <input name="cancel" type="reset" value="&nbsp;&nbsp;cancel&nbsp;&nbsp;" size="20"/>
    </td>
    </tr>
    </table>
  
    </form>
</body>
</html>