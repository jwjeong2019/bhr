<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/main.js"></script>
    <script type="module" src="<%=path%>/resources/js/component/side_menu.js"></script>
    <script type="module" src="<%=path%>/resources/js/component/chart.js"></script>
</head>
<body>
    <header class="nav pos-fixed top-0 left-0 w-100vw bg-white zi-1">
        <nav class="container space">
            <form action="main.do" method="get">
            	<button class="b-none bg-none pd-0">
		            <img id="logo" url="/html/main.html" src="https://img.freepik.com/premium-vector/erp-vector-icon-web_116137-3113.jpg?w=740">
            	</button>
            </form>
            <div class="container w-25vw space center mg-r-70">
                <div class="f-20" id="greet">${name}님 반갑습니다.</div>
                <form action="logoutAction.do" method="post">
	                <button id="logout" class="btn btn-primary" type="submit">로그아웃</button>
                </form>
            </div>
        </nav>
    </header>
    <section class="container space pd-100-30">
        <aside id="side-menu">
            <!-- load side_menu.js -->
        </aside>
        <main class="mg-l-30 w-70p">
            <header>
                <h1>Dashboard</h1>
            </header>
            <section class="container space card">
                <article>
                    <span class="d-block f-20">Year</span>
                    <span id="year" class="d-block f-50">{YYYY}</span>
                </article>
                <article>
                    <span class="d-block f-20">Month</span>
                    <span id="month" class="d-block f-50">{MM}</span>
                </article>
                <article>
                    <span class="d-block f-20">Date</span>
                    <span id="date" class="d-block f-50">{DD}</span>
                </article>
                <article>
                    <span class="d-block f-20">Day</span>
                    <span id="day" class="d-block f-50">{DAY}</span>
                </article>
                <article>
                    <span class="d-block f-20">Time</span>
                    <div class="f-50">
                        <span id="hour">{HH}</span><span> : </span><span id="min">{mm}</span><span> : </span><span id="sec">{ss}</span>
                    </div>
                </article>
            </section>
            <section class="container space card mg-v-25">
                <article>
                    <div class="donut" data-percent="72"></div>
                </article>
                <article>
                    <div class="donut donut-primary" data-percent="72"></div>
                </article>
                <article>
                    <div class="donut donut-success" data-percent="72"></div>
                </article>
            </section>
            <section class="container space card">
                <canvas id="chart" width="1000" height="400"></canvas>
            </section>
        </main>
    </section>
</body>
</html>