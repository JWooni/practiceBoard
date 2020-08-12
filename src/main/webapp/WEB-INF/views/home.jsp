<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
		<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
</head>
	<a href="/board/list">게시판</a><br />
	<script type="text/javascript">
		$(document).ready(function(){
			$("#logoutBtn").on("click", function(){
				location.href="member/logout";
			})
			$("#registerBtn").on("click", function(){
				location.href="member/register";
			})
			
			
			
			$("#memberUpdateBtn").on("click", function(){
				location.href="member/memberUpdateView";
			})
			
		})
	</script>
	<body>
		<form name='homeForm' method="post" action="/member/login">
			<c:if test="${member == null}">
				<div>
					<label for="userId"></label>
					<input type="text" id="userId" name="userId">
				</div>
				<div>
					<label for="userPass"></label>
					<input type="password" id="userPass" name="userPass">
				</div>
				<div>
					<button type="submit">로그인</button>
					<button id="registerBtn" type="button">회원가입</button>
				</div>
			</c:if>
			<c:if test="${member != null }">
				<div>
					<p>${member.userId}님 환영 합니다.</p>
					<button id="memberUpdateBtn" type="button">회원정보수정</button>
					<button id="logoutBtn" type="button">로그아웃</button>
				</div>
			</c:if>
			<c:if test="${msg == false}">
				<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
			</c:if>
		</form>
	</body>
</html>