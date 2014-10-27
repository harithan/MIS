<%@page import="java.sql.*,vdb.*"%>
<%!String a[]=new String[5];
int i=0;
Connection con = null;
PreparedStatement pst=null;
ResultSet rs=null;
StringBuffer sb=new StringBuffer();
 %>
<%
String hostelcode=request.getParameter("hostelcode");
System.out.println(hostelcode);
try{
    con=Db.connect(); 
    PreparedStatement pst=con.prepareStatement("select distinct room_num from hostel_room where hostel_code=?");
    pst.setString(1,hostelcode);
    rs=pst.executeQuery();
    //System.out.println("before while");
    while(rs.next()){
    sb.append(rs.getString("room_num"));
     // System.out.println(rs.getString("room_num"));
    sb.append("*");
    }
  
}catch(Exception e){}
%>
<%=sb%>