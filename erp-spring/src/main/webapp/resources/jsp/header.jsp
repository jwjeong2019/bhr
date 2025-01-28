<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header class="nav pos-fixed top-0 left-0 w-100vw bg-white zi-1">
    <nav class="container space">
        <form action="main.do" method="get">
        	<button class="b-none bg-none pd-0">
          <img id="logo" url="/html/main.html" src="https://img.freepik.com/premium-vector/erp-vector-icon-web_116137-3113.jpg?w=740">
        	</button>
        </form>
        <div class="container w-25vw space center mg-r-70">
            <div class="f-20" id="greet">${name}님 반갑습니다.</div>
            <form action="logout.do" method="post">
            	<input id="param-csrf" name="${_csrf.parameterName }" value="${_csrf.token }" hidden>
            	<button id="logout" class="btn btn-primary" type="submit">로그아웃</button>
            </form>
        </div>
    </nav>
</header>