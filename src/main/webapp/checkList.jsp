<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String mode = request.getParameter("mode");
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null; 
	String choise;
	
	if(mode.equals("update")){
		
	}else if(mode.equals("open")){
		choise = request.getParameter("choise");
	}
	
	
%>
<jsp:include page="header.jsp"></jsp:include>
	<div class="checkList">
	<h2><%=choise.substring(10,11) %>학년 <%=choise.substring(11,13) %>반 복장검사 결과</h2>
	<table>
		<tr>
			<th>학번</th>
			<th>이름</th>
			<th>체크횟수</th>
		</tr>
	
<%
	int custno=0;
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system","1234");
		String sql = "select * from "+choise;
		ps = con.prepareStatement(sql);
		rs = ps.executeQuery(sql);
		while(rs.next()){
%>
		<tr>
			<td><%=rs.getString(1) %></td>			
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
		</tr>
<% 
		}	
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		rs.close();
		ps.close();
		con.close();
	}
%>
	</table>

</div>
<jsp:include page="footer.jsp"></jsp:include>