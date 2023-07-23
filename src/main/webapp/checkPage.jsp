<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>복장검사</title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script src="./data.js"></script>
</head>
<body>

<header>
	<a href="index.jsp"><img src="images/복장검사로고.png" alt="로고"></a>
</header>

	<form action="action.jsp" method="get">
	<input type="hidden" value="update" name="mode">
  	<div class="checkPage">
        <section class="back">
            <a href="#"><img src="images/icon-back.png" alt="back Icon"></a>
        </section>
        <h2>학생을 선택해주세요</h2>
        <input class="in" type="text" name="sname" placeholder="학생명 입력">
    </div>
    <section class="next">
        <button type="submit">체크하기<img src="images/icon-next.png" alt="next Icon"></button>
    </section>
    </form>

<script>
	$(function () {	//화면 로딩후 시작
		$(".in").autocomplete({  //오토 컴플릿트 시작
			source: List,	// source는 data.js파일 내부의 List 배열
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌	
				return false;
			},
			minLength: 1,// 최소 글자수
			delay: 100,	//autocomplete 딜레이 시간(ms)
			//disabled: true, //자동완성 기능 끄기
		});
	});
</script>
    
<jsp:include page="footer.jsp"></jsp:include>