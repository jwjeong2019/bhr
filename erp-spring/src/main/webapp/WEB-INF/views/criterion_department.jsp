<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 부서 기준 관리</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/scroll_box.js"></script>
    <script type="module" src="<%=path%>/resources/js/component/side_menu.js"></script>
    <script type="module" src="<%=path%>/resources/js/criterion_department.js"></script>
</head>
<body>
    <header class="nav pos-fixed top-0 left-0 w-100vw bg-white zi-1">
        <nav class="container space">
            <img id="logo" url="/html/main.html" src="https://img.freepik.com/premium-vector/erp-vector-icon-web_116137-3113.jpg?w=740">
            <div class="container w-25vw space center mg-r-70">
                <div class="f-20" id="greet">{greet text}</div>
                <button id="logout" class="btn btn-primary">로그아웃</button>
            </div>
        </nav>
    </header>
    <section class="container space pd-30">
        <aside id="side-menu">
            <!-- load side_menu.js -->
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>부서 기준 관리</h1>
            </header>
            <section class="container space">
                <article class="card" style="width: 40%;">
                    <span class="d-block f-30">부서 기준 등록</span>
                    <div class="input mg-v-25">
                        <span class="d-block f-20">코드</span>
                        <input id="register-input-code" type="text">
                    </div>
                    <div class="input mg-v-25">
                        <span class="d-block f-20">유형</span>
                        <input id="register-input-type" type="text">
                    </div>
                    <div class="input mg-v-25">
                        <span class="d-block f-20">상태</span>
                        <input id="register-input-status" type="text">
                    </div>
                    <div class="input mg-v-25">
                        <span class="d-block f-20">명칭</span>
                        <input id="register-input-name" type="text">
                    </div>
                    <div class="mg-v-25">
                        <button id="btn-register" class="btn btn-primary">기준 등록</button>
                    </div>
                </article>
                <article class="card" style="width: 40%;">
                    <span class="f-30">부서 기준 등록 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">코드</span>
                            <span class="w-30p">유형</span>
                            <span class="w-30p">상태</span>
                            <span class="w-30p">명칭</span>
                        </div>
                        <ul id="ul-list" class="scroll-box">
                            <!-- load crt_dep_ul_list.js -->
                        </ul>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <dialog>
        <div class="container end">
            <button class="btn btn-none">닫기</button>
        </div>
        <span class="f-30">부서 정보</span>
        <div class="input mg-v-25">
            <span class="d-block f-20">코드</span>
            <input id="info-input-code" type="text">
        </div>
        <div class="input mg-v-25">
            <span class="d-block f-20">유형</span>
            <input id="info-input-type" type="text">
        </div>
        <div class="input mg-v-25">
            <span class="d-block f-20">상태</span>
            <input id="info-input-status" type="text">
        </div>
        <div class="input mg-v-25">
            <span class="d-block f-20">명칭</span>
            <input id="info-input-name" type="text">
        </div>
        <div class="container space mg-v-25 w-90p">
            <button id="info-btn-update" class="btn btn-success">수정</button>
            <button id="info-btn-delete" class="btn btn-danger">삭제</button>
        </div>
    </dialog>
</body>
</html>