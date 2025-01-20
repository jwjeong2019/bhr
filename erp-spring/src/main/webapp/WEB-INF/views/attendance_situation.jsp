<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 근태 현황</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/attendance_situation.js"></script>
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
            <h2>급여관리</h2>
        </aside>
        <main class="mg-l-30 w-80p">
            <header>
                <h1>근태 현황</h1>
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
                                <td>근태코드▼</td>
                                <td>유형▼</td>
                                <td>상태▼</td>
                                <td>신청일▼</td>
                                <td>승인일▼</td>
                                <td>사유▼</td>
                                <td>부서▼</td>
                                <td>직위▼</td>
                                <td>신청인▼</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>A0001</td>
                                <td>
                                    <span class="badge-green">출근</span>
                                </td>
                                <td>승인</td>
                                <td>2023-09-22</td>
                                <td></td>
                                <td></td>
                                <td>개발1팀</td>
                                <td>사원</td>
                                <td>이혜인</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>A0002</td>
                                <td>
                                    <span class="badge-blue">외근</span>
                                </td>
                                <td>반려</td>
                                <td></td>
                                <td>2023-09-25</td>
                                <td>무관 업무</td>
                                <td>영업1팀</td>
                                <td>대리</td>
                                <td>김현수</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>A0003</td>
                                <td>
                                    <span class="badge-red">휴가</span>
                                </td>
                                <td>승인</td>
                                <td>2024-01-03</td>
                                <td></td>
                                <td></td>
                                <td>영업2팀</td>
                                <td>대리</td>
                                <td>하니팜</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>A0004</td>
                                <td>
                                    <span class="badge-orange">지각</span>
                                </td>
                                <td>반려</td>
                                <td></td>
                                <td>2024-01-05</td>
                                <td>지각 허용</td>
                                <td>개발2팀</td>
                                <td>대리</td>
                                <td>김민지</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>A0005</td>
                                <td>
                                    <span class="badge-purple">출장</span>
                                </td>
                                <td>대기</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>개발1팀</td>
                                <td>과장</td>
                                <td>다니엘</td>
                            </tr>
                        </table>
                        <!-- <hr>
                        <table class="w-100p">
                            <tr>
                                <td>근태코드</td>
                                <td>유형</td>
                                <td>상태</td>
                                <td>신청일</td>
                                <td>승인일</td>
                                <td>반려사유</td>
                                <td>부서</td>
                                <td>직위</td>
                                <td>신청인</td>
                            </tr>
                            <tr>
                                <td class="center-text" colspan="9">
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