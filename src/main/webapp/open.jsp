<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:include page="header.jsp"></jsp:include>
<section class="back">
	<a href="#"><img src="images/icon-back.png" alt="back Icon"></a>
</section>
<form action="checkList.jsp" method="get">
<input type="hidden" name="mode" value="open">
	<select name="choise" onchange="return check400()">
		<option value="0">===�г� �� ����===</option>
		<option value="tbl_class_209">2�г� 9��</option>
		<option value="tbl_class_210">2�г� 10��</option>
	</select>
	<section class="next">
        <button type="submit">Ȯ���ϱ�<img src="images/icon-next.png" alt="next Icon"></button>
    </section>
</form>
<jsp:include page="footer.jsp"></jsp:include>