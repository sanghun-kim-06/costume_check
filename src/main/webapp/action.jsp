<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String mode = request.getParameter("mode");
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet re = null;
	int n=0;
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
		
		if(mode.equals("update")){
			String sname = request.getParameter("sname");

			
			String sql = "update EXSTUDENT set point = point + 1 where sname=?";
			ps = con.prepareStatement(sql);
			ps.setString(1, sname);

			n = ps.executeUpdate();
			if(n>0){
				con.commit();
				response.sendRedirect("checkList.jsp");
			}else{
				con.rollback();
			}
			ps.close();
			con.close();
		} else if (mode == "open"){
			String choise = request.getParameter("choise");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>