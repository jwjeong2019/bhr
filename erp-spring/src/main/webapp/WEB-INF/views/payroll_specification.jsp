<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 급여명세서 발급</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/payroll_specification.js"></script>
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
            <h2>인사관리</h2>
            <h3>내 정보</h3>
            <h2>근태관리</h2>
            <h3>근태 내역</h3>
            <h3>근태 신청</h3>
            <h2>급여관리</h2>
            <h3>급여명세서 발급</h3>
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>급여명세서 발급</h1>
            </header>
            <section>
                <article class="card">
                    <div id="attendance-card-header">
                        <div class="container mg-v-20 space">
                            <div id="payroll-list-title">
                                <div id="dropdown">
                                    <div id="dropdown-button">
                                        <span>2024년</span>
                                        <span>▼</span>
                                    </div>
                                    <div id="dropdown-content">
                                        <div value="1">2023년</div>
                                        <div value="2">2022년</div>
                                        <div value="3">2021년</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="attendance-card-body">
                        <table class="w-100p center-text">
                            <tr>
                                <td>차수</td>
                                <td>지급일</td>
                                <td>지급총액</td>
                                <td>국민연금</td>
                                <td>건강보험</td>
                                <td>고용보험</td>
                                <td>장기요양보험</td>
                                <td>소득세</td>
                                <td>지방소득세</td>
                                <td>공제총액</td>
                                <td>실지급액</td>
                                <td>명세서</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>3차</td>
                                <td>2024-03-10</td>
                                <td>3,500,100</td>
                                <td>180,000</td>
                                <td>120,000</td>
                                <td>31,000</td>
                                <td>13,000</td>
                                <td>190,000</td>
                                <td>19,000</td>
                                <td>553,000</td>
                                <td>2,947,100</td>
                                <td>
                                    <button id="btn-view" class="btn btn-primary">보기</button>
                                </td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>2차</td>
                                <td>2024-02-10</td>
                                <td>3,500,100</td>
                                <td>180,000</td>
                                <td>120,000</td>
                                <td>31,000</td>
                                <td>13,000</td>
                                <td>190,000</td>
                                <td>19,000</td>
                                <td>553,000</td>
                                <td>2,947,100</td>
                                <td>
                                    <button id="btn-view" class="btn btn-primary">보기</button>
                                </td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>1차</td>
                                <td>2024-01-10</td>
                                <td>3,500,100</td>
                                <td>180,000</td>
                                <td>120,000</td>
                                <td>31,000</td>
                                <td>13,000</td>
                                <td>190,000</td>
                                <td>19,000</td>
                                <td>553,000</td>
                                <td>2,947,100</td>
                                <td>
                                    <button id="btn-view" class="btn btn-primary">보기</button>
                                </td>
                            </tr>
                        </table>
                        <!-- <hr>
                        <table class="w-100p center-text">
                            <tr>
                                <td>선택</td>
                                <td>부서</td>
                                <td>직위</td>
                                <td>사원코드</td>
                                <td>사원명</td>
                                <td>지급총액</td>
                                <td>공제총액</td>
                                <td>실지급액</td>
                                <td>명세서</td>
                            </tr>
                            <tr>
                                <td colspan="9">
                                    <span class="f-20">결과가 없습니다.</span>
                                </td>
                            </tr>
                        </table> -->
                    </div>
                    <!-- <div id="attendance-card-footer">
                        <div id="footer-button" class="container center-row pd-t-30">
                            <button class="btn btn-success">명세서 발송</button>
                        </div>
                    </div> -->
                </article>
            </section>
        </main>
    </section>
    <dialog>
        <header>
            <div id="dialog-header" class="container space">
                <span class="f-30">급여명세서</span>
                <span id="btn-close" class="f-20">닫기</span>
            </div>
        </header>
        <section id="payroll-dialog-content" class="mg-v-20">
            <table id="payroll-table">
                <tr>
                    <td>사원코드</td>
                    <td>H0002</td>
                    <td>사원명</td>
                    <td>김민지</td>
                </tr>
                <tr>
                    <td>부서</td>
                    <td>인사팀</td>
                    <td>직위</td>
                    <td>대리</td>
                </tr>
                <tr>
                    <td colspan="2">지급총액</td>
                    <td colspan="2">3,585,423</td>
                </tr>
                <tr>
                    <td colspan="2">기본급</td>
                    <td colspan="2">3,010,503</td>
                </tr>
                <tr>
                    <td colspan="2">식비</td>
                    <td colspan="2">150,000</td>
                </tr>
                <tr>
                    <td colspan="2">연장근로수당</td>
                    <td colspan="2">211,510</td>
                </tr>
                <tr>
                    <td colspan="2">휴일근로수당</td>
                    <td colspan="2">113,410</td>
                </tr>
                <tr>
                    <td colspan="2">직책수당</td>
                    <td colspan="2">100,000</td>
                </tr>
                <tr>
                    <td colspan="2">육아근로수당</td>
                    <td colspan="2">0</td>
                </tr>
                <tr>
                    <td colspan="2">공제총액</td>
                    <td colspan="2">548,770</td>
                </tr>
                <tr>
                    <td colspan="2">국민연금</td>
                    <td colspan="2">185,050</td>
                </tr>
                <tr>
                    <td colspan="2">건강보험</td>
                    <td colspan="2">121,000</td>
                </tr>
                <tr>
                    <td colspan="2">고용보험</td>
                    <td colspan="2">31,200</td>
                </tr>
                <tr>
                    <td colspan="2">장기요양보험</td>
                    <td colspan="2">12,910</td>
                </tr>
                <tr>
                    <td colspan="2">소득세</td>
                    <td colspan="2">180,560</td>
                </tr>
                <tr>
                    <td colspan="2">지방소득세</td>
                    <td colspan="2">18,050</td>
                </tr>
                <tr>
                    <td colspan="2">실지급액</td>
                    <td colspan="2">3,036,653</td>
                </tr>
            </table>
        </section>
        <section>
            <div class="container center-row">
                <!-- 인쇄 or 다운로드 -->
                <button class="btn btn-primary">인쇄</button>
            </div>
        </section>
    </dialog>
</body>
</html>