<%@ page language="java" import="java.sql.*,vdb.Db"  pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <script language="javascript">
function getRequestObject()
{
if(window.XMLHttpRequest)
	{
	return(new XMLHttpRequest());
	}
else if(window.ActiveXObject)
	{
	return(new ActiveXObject("Microsoft.XMLHTTP"));
	}
else
	{
	return(null);
	}
}
function get(rollno)
{
   	var request=getRequestObject();
	request.onreadystatechange=function(){handleResponse(request);};
	request.open("GET","permission_display.jsp?rollno="+rollno,true);
	request.send(null);     
}
function handleResponse(request)
{
	if(request.readystate==4){
	var s=request.responseText;
	if(s=="sorry"){
	p1.innerText="THIS ID IS INVALID";
	document.f1.sem.value="";
	document.f1.parname.value="";
	document.f1.stuname.value="";
	document.f1.branch.value="";
	
	}
	else
	{
x=s.split("$");
	document.f1.branch.value	=x[0];
	document.f1.sem.value=x[1];
	document.f1.stuname.value=x[2];
	document.f1.parname.value=x[3];
}
}
}
 </script>
  </head>
  <body bgcolor="shyblue">
  <form name="f1" action="permissionsinsert.jsp">
  <fieldset><legend>Student Details</legend>
  	<table align="center" cellpadding="4">
  	<tr><th>RollNo:</th><td><input type="text" id="rollno" name="rollno" onblur="get(this.value)"></td><td><p id="p1"></p></td></tr>
  	<tr><th>Branch:</th><td><input type="text" id="branch" name="branch"></td></tr>
  	<tr><th>Semester:</th><td><input type="text" id="sem" name="sem"></td></tr>
  	<tr><th>StudentName:</th><td><input type="text" id="stuname" name="stuname"></td></tr>
  	<tr><th>ParentName:</th><td><input type="text" id="parname" name="parname"></td></tr>
  	</table>
  	</fieldset>
  	<fieldset><legend>Enter The Details Of The Permissions</legend>
  	<table align="center" cellpadding="4">
  	<tr><th>Permission for:</th><td><select name="fee_name">
  	<option value="0">select</option>
<%try
{
	Connection con=Db.connect();
	PreparedStatement pst=con.prepareStatement("select fee_name from feemaster_tab");
	ResultSet rs=pst.executeQuery();
	while(rs.next())
	{%>
		<option value="<%=rs.getString("fee_name")%>"><%=rs.getString("fee_name")%></option>
	<% }
}
catch(Exception e)
{
	System.out.println(e);
}%>
</select></td></tr>
  	<tr><th>Target Date:</th><td>Date:<select name="date"><option value="0">select</option>
  														<option value="01">01</option>
  														<option value="02">02</option>
  														<option value="03">03</option>
  														<option value="04">04</option>
  														<option value="05">05</option>
  														<option value="06">06</option>
  														<option value="07">07</option>
  														<option value="08">08</option>
  														<option value="09">09</option>
  														<option value="10">10</option>
  														<option value="11">11</option>
  														<option value="12">12</option>
  														<option value="13">13</option>
  														<option value="14">14</option>
  														<option value="15">15</option>
  														<option value="16">16</option>
  														<option value="17">17</option>
  														<option value="18">18</option>
  														<option value="19">19</option>
  														<option value="20">20</option>
  														<option value="21">21</option>
  														<option value="22">22</option>
  														<option value="23">23</option>
  														<option value="24">24</option>
  														<option value="25">25</option>
  														<option value="26">26</option>
  														<option value="27">27</option>
  														<option value="28">28</option>
  														<option value="29">29</option>
  														<option value="30">30</option>
  														<option value="31">31</option>  														
  														</select>
  								Month:<select name="month"><option value="0">select</option>
  														<option value="jan">JAN</option>
  														<option value="feb">FEB</option>
  														<option value="mar">MAR</option>
  														  <option value="apr">APR</option>
  														  <option value="may">MAY</option>
    													  <option value="jun">JUN</option>
 													   <option value="july">JULY</option>
 													   <option value="aug">AUG</option>
    													<option value="sep">SEP</option>
    													<option value="oct">OCT</option>
    													<option value="nov">NOV</option>
    													<option value="dec">DEC</option>
  														</select>
  								Year:<select name="year"><option value="0">select</option>
  														<option value="2010">2010</option>
  														<option value="2011">2011</option>
  														<option value="2012">2012</option>
  														<option value="2013">2013</option>
  														<option value="2014">2014</option>
  														<option value="2015">2015</option>
  														<option value="2016">2016</option>
  														<option value="2017">2017</option>
  														<option value="2018">2018</option>
  														<option value="2019">2019</option>
  														<option value="2020">2020</option>
  														</select></td></tr>
  	<tr><th>Amount:</th><td><input type="text" name="amount" id="amount"></td></tr>
  	<tr><th>No.Of Installments:</th><td><input type="text" name="ins" id="ins"></td></tr>
  	<tr><th>Permissions givenby:</th><td><select name="perby"><option value="0">select</option>
  														<option value="principal">PRINCIPAL</option>
  														<option value="secretary">SECRETARY</option>
  														<option value="correspondent">CORRESPONDENT</option></select></td></tr>
  	</table>
  	</fieldset>
  	<br>
  	<br>
  	<center>
  	<input type="submit" value="GivePermission">
  	<input type="button" value="     Quit     ">
  	<input type="reset" value= "    cancel    ">
  	</center>
  	</form>
  </body>
</html>
