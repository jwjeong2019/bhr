<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="text/javascript" src="/resources/js/login.js"></script>
</head>
<body>
    <form id="form-login">
    	<input id="param-csrf" name="${_csrf.parameterName }" value="${_csrf.token }" hidden />
    	<input id="param-username" name="username" hidden>
    	<input id="param-password" name="password" hidden>
	    <div class="container center center-row h-100vh">
	        <div class="b-solid b-radius pd-30 w-20vw h-70vh bg-primary">
	            <div class="container f-col center">
	                <img class="b-radius w-20p h-20p" src="https://t3.ftcdn.net/jpg/02/27/25/12/360_F_227251234_0JnUIGzzksEC1az3PHJ8Folr6yoOJQ7A.jpg">
	                <span class="f-30">Welcom to BHR</span>
	            </div>
	            <div>
	                <p class="f-20">아이디 *</p>
	                <input id="id" class="b-solid b-radius f-20 ff w-90p pd-3-10" type="text" name="id" onchange="onChangeId(this)">
	                <p class="f-20">비밀번호 *</p>
	                <input id="pw" class="b-solid b-radius f-20 ff w-90p pd-3-10" type="password" name="pwd" onchange="onChangePw(this)">
	            </div>
	            <div class="container center-row">
	                <button type="button" class="btn btn-primary w-100p mg-t-50 f-20" onclick="onClickSignIn()">Sign In</button>
	            </div>
	            <div>
	                <p>계정 생성은 관리자에게 문의하시기 바랍니다.</p>
	                <p>이메일 문의: admin@bhr.kr</p>
	            </div>
	        </div>
	    </div>
    </form>
    <dialog>
    	<h1>로그인에 실패하셨습니다.</h1>
    	<button id="close" class="btn btn-primary">닫기</button>
    </dialog>
</body>
<script>
	if ('${msg}' == 'fail') {
		let dialog = document.querySelector('dialog');
		dialog.showModal();
		document.getElementById('close').onclick = e => dialog.close();
	}
</script>
</html>