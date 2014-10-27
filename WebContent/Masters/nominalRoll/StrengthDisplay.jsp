
<%@page import="mis.Dbcon"%>
<%@page import="java.sql.*"%>
<%
	String branch=request.getParameter("branch");
String sem=request.getParameter("semester");
	
	
	StringBuffer sb=new StringBuffer();
	try {
		
		Dbcon d= new Dbcon();
		Connection con=d.getConnection();
	        Statement st = con.createStatement();  
	        ResultSet rs=st.executeQuery("select * from student_tab where branch_name='"+branch+"'and sem='"+sem+"'");
	       while(rs.next()){
	        	String no=rs.getString(2);
	        	String name=rs.getString(3);
	        	Statement st1 = con.createStatement();  
		        ResultSet rs1=st1.executeQuery("select * from student_personal_details_tab where roll_num='"+no+"'");
		    	sb.append(no);
	        	sb.append("$");
	        	sb.append(name);
	        	sb.append("$");
	        	if(rs1.next())
	        	{
	        	sb.append(rs1.getString(2));
	        	sb.append("$");
	        	sb.append(rs1.getString(3));
	        	sb.append("$");
	        	sb.append(rs1.getString(4));
	        	sb.append("$");
	            
	        	
	        	sb.append(rs1.getLong(7));
	        	sb.append("$");
	        	
	        	sb.append(rs1.getString(9));
	        	sb.append("$");
	        	
	         	sb.append("*");
	       }
	        	
	       }             
	        out.println(sb);
	}catch (Exception s){
        System.out.println("SQL code does not execute."+s);
        s.printStackTrace();
    }
	
		//out.println(sb);
		


%>
