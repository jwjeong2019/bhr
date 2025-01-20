<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 급여 산정 조회</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/payroll_calculated_retrieval.js"></script>
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
            <h3>연차 현황</h3>
            <h2>급여관리</h2>
            <h3>급여 산정 조회</h3>
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>급여 산정 조회</h1>
            </header>
            <section>
                <article class="card">
                    <div id="attendance-search">
                        <div class="container mg-v-20 right">
                            <div id="dropdown">
                                <div id="dropdown-button">
                                    <span>전체</span>
                                    <span>▼</span>
                                </div>
                                <div id="dropdown-content">
                                    <div value="1">item1</div>
                                    <div value="2">item2</div>
                                    <div value="3">item3</div>
                                </div>
                            </div>
                            <div id="search-input">
                                <input type="text">
                            </div>
                            <div id="search-btn">
                                <button>검색</button>
                            </div>
                        </div>
                    </div>
                    <div id="attendance-result">
                        <table class="w-100p center-text">
                            <tr>
                                <td>차수</td>
                                <td>지급일</td>
                                <td>부서</td>
                                <td>직위</td>
                                <td>사원코드</td>
                                <td>사원명</td>
                                <td>지급총액</td>
                                <td>공제총액</td>
                                <td>실지급액</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>1차</td>
                                <td>2024-02-15</td>
                                <td>개발1팀</td>
                                <td>사원</td>
                                <td>H0001</td>
                                <td>이혜인</td>
                                <td>3,102,315</td>
                                <td>491,050</td>
                                <td>2,611,265</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>1차</td>
                                <td>2024-02-15</td>
                                <td>영업1팀</td>
                                <td>대리</td>
                                <td>H0002</td>
                                <td>김현수</td>
                                <td>3,102,315</td>
                                <td>491,050</td>
                                <td>2,611,265</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>1차</td>
                                <td>2024-02-15</td>
                                <td>영업2팀</td>
                                <td>대리</td>
                                <td>H0003</td>
                                <td>하니팜</td>
                                <td>3,102,315</td>
                                <td>491,050</td>
                                <td>2,611,265</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>1차</td>
                                <td>2024-02-15</td>
                                <td>개발2팀</td>
                                <td>대리</td>
                                <td>H0004</td>
                                <td>김민지</td>
                                <td>3,102,315</td>
                                <td>491,050</td>
                                <td>2,611,265</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>1차</td>
                                <td>2024-02-15</td>
                                <td>개발1팀</td>
                                <td>과장</td>
                                <td>H0005</td>
                                <td>다니엘</td>
                                <td>3,102,315</td>
                                <td>491,050</td>
                                <td>2,611,265</td>
                            </tr>
                        </table>
                        <!-- <hr>
                        <table class="w-100p center-text">
                            <tr>
                                <td>차수</td>
                                <td>지급일</td>
                                <td>부서</td>
                                <td>직위</td>
                                <td>사원코드</td>
                                <td>사원명</td>
                                <td>지급총액</td>
                                <td>공제총액</td>
                                <td>실지급액</td>
                            </tr>
                            <tr>
                                <td colspan="9">
                                    <span class="f-20">검색 결과가 없습니다.</span>
                                </td>
                            </tr>
                        </table> -->
                    </div>
                </article>
            </section>
        </main>
    </section>
</body>
</html>