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
    <script type="module" src="<%=path%>/resources/js/attendance_apply.js"></script>
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
            <h3>근태 신청</h3>
            <h2>급여관리</h2>
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>근태 신청</h1>
            </header>
            <section class="container space">
                <section class="container f-col w-40p">
                    <article class="card">
                        <span class="f-20">근태 선택</span>
                        <div class="mg-v-25">
                            <div class="container space">
                                <span class="w-20p">코드</span>
                                <span class="w-20p">명칭</span>
                            </div>
                            <ul id="scroll-box-mini">
                                <li class="container space f-20">
                                    <span class="w-20p">A0001</span>
                                    <span class="w-20p">출근</span>
                                </li>
                                <li class="container space f-20">
                                    <span class="w-20p">A0002</span>
                                    <span class="w-20p">지각</span>
                                </li>
                                <li class="container space f-20">
                                    <span class="w-20p">A0003</span>
                                    <span class="w-20p">결근</span>
                                </li>
                                <li class="container space f-20">
                                    <span class="w-20p">A0004</span>
                                    <span class="w-20p">외근</span>
                                </li>
                                <li class="container space f-20">
                                    <span class="w-20p">A0005</span>
                                    <span class="w-20p">출장</span>
                                </li>
                                <li class="container space f-20">
                                    <span class="w-20p">A0006</span>
                                    <span class="w-20p">연차</span>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <article id="attendance-apply-card-day" class="card mg-t-20">
                        <div class="container space">
                            <span class="f-20">일수(근태명)</span>
                            <div class="container center end">
                                <!-- 근태에 따라 max가 결정됩니다. -->
                                <!-- 출장: 100, 연차: 남은일수, 그외: 0 -->
                                <input id="day" type="number" placeholder="0" min="0">
                                <label for="day">일</label>
                            </div>
                        </div>
                    </article>
                    <article id="attendance-apply-card-date" class="card mg-t-20">
                        <div class="container space">
                            <span class="f-20">시작날짜</span>
                            <div class="container center end">
                                <!-- min: 현재날짜 -->
                                <!-- 여백 이슈 -->
                                <!-- <input type="date" min="2025-01-18"> -->
                                <input id="date" type="date">
                            </div>
                        </div>
                    </article>
                    <article id="attendance-apply-card-date" class="card mg-t-20">
                        <div class="container space">
                            <span class="f-20">종료날짜</span>
                            <div class="container center end">
                                <!-- max: 근태에 따라 날짜 계산 -->
                                <!-- 여백 이슈 -->
                                <!-- <input type="date" min="2025-01-18" max="2025-01-25"> -->
                                <input id="date" type="date">
                            </div>
                        </div>
                    </article>
                    <article id="attendance-apply-card-detail" class="card mg-t-20">
                        <div class="container space">
                            <span class="f-20">내용</span>
                            <div class="container center end">
                                <input id="detail" type="text" placeholder="내용을 입력하세요.">
                            </div>
                        </div>
                    </article>
                    <article id="attendance-apply-card-detail" class="card mg-t-20">
                        <div class="container space">
                            <span class="f-20">완료</span>
                            <div class="container center end">
                                <button class="btn btn-primary">확인</button>
                            </div>
                        </div>
                    </article>
                </section>
                <article class="card" style="width: 42%; height: 500px;">
                    <span class="f-30">근태 신청서</span>
                    <div class="container f-col space h-90p">
                        <div id="attendance-apply-form-content" class="mg-v-25">
                            <table>
                                <tr>
                                    <td>부서</td>
                                    <td>직위</td>
                                    <td>사원명</td>
                                </tr>
                                <tr>
                                    <td>개발1팀</td>
                                    <td>대리</td>
                                    <td>강해린</td>
                                </tr>
                                <tr>
                                    <td>근태</td>
                                    <td>일수</td>
                                </tr>
                                <tr>
                                    <td>외근</td>
                                    <td>0</td>
                                </tr>
                                <tr>
                                    <td>시작날짜</td>
                                    <td>종료날짜</td>
                                </tr>
                                <tr>
                                    <td>2024-01-02 13:30</td>
                                    <td>2024-01-02 15:30</td>
                                </tr>
                            </table>
                            <table style="margin-top: 50px;">
                                <tr>
                                    <td>내용</td>
                                </tr>
                                <tr>
                                    <td>외부 미팅</td>
                                </tr>
                            </table>
                        </div>
                        <div id="attendance-apply-list-btn" class="container center-row">
                            <button class="btn btn-success">신청하기</button>
                        </div>
                    </div>
                </article>
            </section>
            <dialog class="alert-delete">
                <span class="f-30">신청서 내용으로 신청하시겠습니까?</span>
                <div class="container mg-v-25 space w-70p">
                    <button class="btn btn-success">예</button>
                    <button class="btn btn-primary">아니오</button>
                </div>
            </dialog>
        </main>
    </section>
</body>
</html>