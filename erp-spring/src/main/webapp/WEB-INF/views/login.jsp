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
    <%-- <script type="module" src="<%=path%>/resources/js/login.js"></script> --%>
</head>
<body>
    <form action="loginAction.do" method="post">
	    <div class="container center center-row h-100vh">
	        <div class="b-solid b-radius pd-30 w-20vw h-70vh bg-primary">
	            <div class="container f-col center">
	                <img class="b-radius w-20p h-20p" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1ZaTG53bRVKoVoYLXzowxx4ks7tg5dsmFhg&s">
	                <span class="f-30">Welcom to ERP</span>
	            </div>
	            <div>
	                <p class="f-20">아이디 *</p>
	                <input id="id" class="b-solid b-radius f-20 ff w-90p pd-3-10" type="text" name="id">
	                <p class="f-20">비밀번호 *</p>
	                <input id="pw" class="b-solid b-radius f-20 ff w-90p pd-3-10" type="password" name="pwd">
	            </div>
	            <div class="container center-row">
	                <button type="submit" class="btn btn-primary w-100p mg-t-50 f-20">Sign In</button>
	            </div>
	            <div>
	                <p>계정 생성은 관리자에게 문의하시기 바랍니다.</p>
	                <p>이메일 문의: admin@erp.kr</p>
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