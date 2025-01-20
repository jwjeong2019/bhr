<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 근태 신청</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/attendance_receive.js"></script>
</head>
<body>
    <header class="nav">
        <nav class="container space">
            <img id="logo" src="https://img.freepik.com/premium-vector/erp-vector-icon-web_116137-3113.jpg?w=740">
            <div class="container w-300 space center">
                <div>admin님 반갑습니다.</div>
                <button class="btn btn-primary">로그아웃</button>
            </div>
        </nav>
    </header>
    <section class="container space pd-30">
        <aside>
            <h2>기준관리</h2>
            <h3>부서 기준 관리</h3>
            <h3>근태 기준 관리</h3>
            <h3>급여 기준 관리</h3>
            <h2>인사관리</h2>
            <h3>부서 관리</h3>
            <h3>부서원 관리</h3>
            <h3>사원 관리</h3>
            <h2>근태관리</h2>
            <h3>근태 현황</h3>
            <h3>근태 신청 관리</h3>
            <h2>급여관리</h2>
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>근태 신청 관리</h1>
            </header>
            <section class="container space">
                <article class="card" style="width: 42%;">
                    <span class="f-30">신청 대기 현황</span>
                    <div class="mg-v-25">
                        <div class="container space">
                            <span class="w-20p">근태명</span>
                            <span class="w-20p">신청일</span>
                            <span class="w-20p">부서</span>
                            <span class="w-20p">직위</span>
                            <span class="w-20p">신청인</span>
                        </div>
                        <ul class="scroll-box-left">
                            <li class="container space f-20">
                                <span class="w-20p">외근</span>
                                <span class="w-20p">2024-02-11</span>
                                <span class="w-20p">개발1팀</span>
                                <span class="w-20p">대리</span>
                                <span class="w-20p">김동현</span>
                            </li>
                            <li class="container space f-20">
                                <span class="w-20p">외근</span>
                                <span class="w-20p">2024-02-11</span>
                                <span class="w-20p">개발2팀</span>
                                <span class="w-20p">대리</span>
                                <span class="w-20p">김순재</span>
                            </li>
                            <li class="container space f-20">
                                <span class="w-20p">외근</span>
                                <span class="w-20p">2024-02-11</span>
                                <span class="w-20p">영업1팀</span>
                                <span class="w-20p">사원</span>
                                <span class="w-20p">우동석</span>
                            </li>
                            <li class="container space f-20">
                                <span class="w-20p">휴가</span>
                                <span class="w-20p">2024-02-11</span>
                                <span class="w-20p">인사팀</span>
                                <span class="w-20p">과장</span>
                                <span class="w-20p">김민지</span>
                            </li>
                            <li class="container space f-20">
                                <span class="w-20p">휴가</span>
                                <span class="w-20p">2024-02-11</span>
                                <span class="w-20p">인사팀</span>
                                <span class="w-20p">사원</span>
                                <span class="w-20p">강해린</span>
                            </li>
                            <li class="container space f-20">
                                <span class="w-20p">지각</span>
                                <span class="w-20p">2024-02-11</span>
                                <span class="w-20p">경영팀</span>
                                <span class="w-20p">대리</span>
                                <span class="w-20p">최윤영</span>
                            </li>
                        </ul>
                    </div>
                </article>
                <article class="card" style="width: 42%;">
                    <span class="f-30">승인 대기 목록</span>
                    <div class="mg-v-25">
                        <div class="container space">
                            <span class="w-20p">근태명</span>
                            <span class="w-20p">신청일</span>
                            <span class="w-20p">부서</span>
                            <span class="w-20p">직위</span>
                            <span class="w-20p">신청인</span>
                        </div>
                        <ul class="scroll-box-right">
                            <li class="container space f-20">
                                <span class="w-20p">외근</span>
                                <span class="w-20p">2024-02-11</span>
                                <span class="w-20p">경영팀</span>
                                <span class="w-20p">과장</span>
                                <span class="w-20p">오영준</span>
                            </li>
                            <li class="container space f-20">
                                <span class="w-20p">결근</span>
                                <span class="w-20p">2024-02-11</span>
                                <span class="w-20p">영업2팀</span>
                                <span class="w-20p">대리</span>
                                <span class="w-20p">이연희</span>
                            </li>
                        </ul>
                    </div>
                    <div id="attendance-apply-list-btn" class="right">
                        <button class="btn btn-success">승인</button>
                    </div>
                </article>
            </section>
            <dialog class="alert-delete">
                <span class="f-30">목록을 제거하시겠습니까?</span>
                <div class="container mg-v-25 space w-70p">
                    <button class="btn btn-success">예</button>
                    <button class="btn btn-primary">아니오</button>
                </div>
            </dialog>
        </main>
    </section>
</body>
</html>