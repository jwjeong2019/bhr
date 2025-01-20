<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 근태 내역</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <script type="module" src="<%=path%>/resources/js/attendance_details.js"></script>
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
                <h1>근태 내역</h1>
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
                                <td>유형▼</td>
                                <td>상태▼</td>
                                <td>신청일▼</td>
                                <td>내용▼</td>
                                <td>승인일▼</td>
                                <td>사유▼</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>
                                    <span class="badge-green">출근</span>
                                </td>
                                <td>승인</td>
                                <td>2023-09-22</td>
                                <td>-</td>
                                <td>2023-09-22</td>
                                <td>-</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>
                                    <span class="badge-blue">외근</span>
                                </td>
                                <td>반려</td>
                                <td>2023-09-25</td>
                                <td>-</td>
                                <td>2023-09-26</td>
                                <td>업무 무관</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>
                                    <span class="badge-red">휴가</span>
                                </td>
                                <td>승인</td>
                                <td>2024-01-03</td>
                                <td>-</td>
                                <td>2024-01-05</td>
                                <td>-</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>
                                    <span class="badge-orange">지각</span>
                                </td>
                                <td>반려</td>
                                <td>2024-01-05</td>
                                <td>-</td>
                                <td>2024-01-05</td>
                                <td>지각 허용</td>
                            </tr>
                            <tr class="f-20 h-50">
                                <td>
                                    <span class="badge-purple">출장</span>
                                </td>
                                <td>대기</td>
                                <td>2024-02-05</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </table>
                        <!-- <hr>
                        <table class="w-100p">
                            <tr>
                                <td>유형▼</td>
                                <td>상태▼</td>
                                <td>신청일▼</td>
                                <td>내용▼</td>
                                <td>승인일▼</td>
                                <td>사유▼</td>
                            </tr>
                            <tr>
                                <td class="center-text" colspan="9">
                                    <span class="f-20">검색 결과가 없습니다.</span>
                                </td>
                            </tr>
                        </table> -->
                        <table style="width: 100%;">
                            <tr>
                                <td style="text-align: center;">
                                    ◀ 1 2 3 4 5 ▶
                                </td>
                            </tr>
                        </table>
                    </div>
                </article>
            </section>
        </main>
    </section>
</body>
</html>