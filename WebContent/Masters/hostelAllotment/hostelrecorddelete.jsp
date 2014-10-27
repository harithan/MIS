<%@page import="java.sql.*,vdb.*"%>
<%!String a[]=new String[5];
int i=0;
Connection con = null;
PreparedStatement pst=null;
ResultSet rs=null;
StringBuffer sb=new StringBuffer();
%>
<%
String rollnumber=request.getParameter("roll");
//System.out.println(rollnumber);
String dat=new java.util.Date().toString();
	String mon=dat.substring(4,7);
	String yer=dat.substring(24,28);
	String cancel_dat=yer+"-"+mon;
    
try{
    con=Db.connect(); 
    PreparedStatement pst=con.prepareStatement("update student_accomodation_details_tab set cancel_date=? where roll_num=?");
    pst.setString(1,cancel_dat);
    pst.setString(2,rollnumber);
    pst.executeUpdate();
	}
  
catch(Exception e){}
%>
<jsp:forward page="hostelallotmentdelete.jsp"/>
