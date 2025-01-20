<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 부서원 관리</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/scroll_box_couple.js"></script>
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
            <h2>급여관리</h2>
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>부서원 관리</h1>
            </header>
            <section class="container space">
                <article class="card w-25p h-420">
                    <span class="f-30">부서 선택</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">부서명</span>
                        </div>
                        <ul class="scroll-box">
                            <li class="container space">
                                <span class="f-20 w-30p">경영팀</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">인사팀</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">개발1팀</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">개발2팀</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">영업1팀</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">영업2팀</span>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <span class="f-30">👉 개발1팀</span>
                    </div>
                </article>
                <article class="card w-25p h-420">
                    <span class="f-30">사원 선택</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-25p">코드</span>
                            <span class="w-30p">입사일</span>
                            <span class="w-25p">이름</span>
                        </div>
                        <ul class="scroll-box">
                            <li class="container space">
                                <span class="f-20 w-25p">H0001</span>
                                <span class="f-20 w-30p">2024-03-10</span>
                                <span class="f-20 w-25p">강빛찬</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-25p">H0002</span>
                                <span class="f-20 w-30p">2024-03-13</span>
                                <span class="f-20 w-25p">조아영</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-25p">H0003</span>
                                <span class="f-20 w-30p">2024-03-21</span>
                                <span class="f-20 w-25p">최 고</span>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <span class="f-30">👉 조아영(H0002)</span>
                    </div>
                </article>
                <article class="card w-25p">
                    <span class="f-30">부서 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">부서</span>
                            <span class="w-30p">사원코드</span>
                            <span class="w-30p">사원이름</span>
                        </div>
                        <ul class="scroll-box">
                            <li class="container space">
                                <span class="f-20 w-30p">개발1팀</span>
                                <span class="f-20 w-30p">H0004</span>
                                <span class="f-20 w-30p">오문식</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">경영팀</span>
                                <span class="f-20 w-30p">H0007</span>
                                <span class="f-20 w-30p">김민국</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">경영팀</span>
                                <span class="f-20 w-30p">H0006</span>
                                <span class="f-20 w-30p">공진희</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">개발1팀</span>
                                <span class="f-20 w-30p">H0005</span>
                                <span class="f-20 w-30p">이신영</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">영업2팀</span>
                                <span class="f-20 w-30p">H0008</span>
                                <span class="f-20 w-30p">공진희</span>
                            </li>
                        </ul>
                    </div>
                    <div class="container f-col">
                        <button class="btn btn-danger mg-b-20">⬇️ 제거하기</button>
                        <button class="btn btn-success">⬆️ 추가하기</button>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <dialog class="alert-insert">
        <span class="f-30">부서를 추가하시겠습니까?</span>
        <div class="container mg-v-25 space w-70p">
            <button class="btn btn-success">예</button>
            <button class="btn btn-primary">아니오</button>
        </div>
    </dialog>
    <dialog class="alert-delete">
        <span class="f-30">부서를 제거하시겠습니까?</span>
        <div class="container mg-v-25 space w-70p">
            <button class="btn btn-success">예</button>
            <button class="btn btn-primary">아니오</button>
        </div>
    </dialog>
</body>
</html>