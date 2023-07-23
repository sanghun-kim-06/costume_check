<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="header.jsp"></jsp:include>
<section class="back">
	<a href="#"><img src="images/icon-back.png" alt="back Icon"></a>
</section>
<form action="checkList.jsp" method="get">
<input type="hidden" name="mode" value="open">
	<select name="choise" onchange="return check400()">
		<option value="0">===학년 반 선택===</option>
		<option value="tbl_class_209">2학년 9반</option>
		<option value="tbl_class_210">2학년 10반</option>
	</select>
	<section class="next">
        <button type="submit">확인하기<img src="images/icon-next.png" alt="next Icon"></button>
    </section>
</form>
<jsp:include page="footer.jsp"></jsp:include>