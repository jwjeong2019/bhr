<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP 사원 관리</title>
    <link rel="stylesheet" href="<%=path%>/resources/css/common/layout.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/font.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/component.css">
    <link rel="stylesheet" href="<%=path%>/resources/css/common/origin.css">
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Cute+Font&family=Gowun+Dodum&family=Hi+Melody&display=swap');
    </style>
    <!-- <script type="module" src="/js/scroll_box_couple.js"></script> -->
    <script type="module" src="<%=path%>/resources/js/hr_employee.js"></script>
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
                <h1>사원 관리</h1>
            </header>
            <section class="container space">
                <article class="card w-40p h-420">
                    <span class="f-30">사원 현황</span>
                    <div class="mg-v-25">
                        <div class="container space f-20">
                            <span class="w-30p">코드</span>
                            <span class="w-30p">부서</span>
                            <span class="w-30p">직위</span>
                            <span class="w-30p">이름</span>
                            <span class="w-30p">입사일</span>
                        </div>
                        <ul class="scroll-box">
                            <li class="container space">
                                <span class="f-20 w-30p">H0001</span>
                                <span class="f-20 w-30p">경영팀</span>
                                <span class="f-20 w-30p">부장</span>
                                <span class="f-20 w-30p">김경영</span>
                                <span class="f-20 w-30p">2009-01-01</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">H0002</span>
                                <span class="f-20 w-30p">인사팀</span>
                                <span class="f-20 w-30p">부장</span>
                                <span class="f-20 w-30p">정인사</span>
                                <span class="f-20 w-30p">2009-01-01</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">H0003</span>
                                <span class="f-20 w-30p">개발1팀</span>
                                <span class="f-20 w-30p">부장</span>
                                <span class="f-20 w-30p">박개발</span>
                                <span class="f-20 w-30p">2010-01-01</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">H0004</span>
                                <span class="f-20 w-30p">영업1팀</span>
                                <span class="f-20 w-30p">부장</span>
                                <span class="f-20 w-30p">최영업</span>
                                <span class="f-20 w-30p">2011-01-01</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">H0005</span>
                                <span class="f-20 w-30p">개발2팀</span>
                                <span class="f-20 w-30p">부장</span>
                                <span class="f-20 w-30p">유개발</span>
                                <span class="f-20 w-30p">2011-01-01</span>
                            </li>
                            <li class="container space">
                                <span class="f-20 w-30p">H0006</span>
                                <span class="f-20 w-30p">영업2팀</span>
                                <span class="f-20 w-30p">부장</span>
                                <span class="f-20 w-30p">옥영업</span>
                                <span class="f-20 w-30p">2011-01-01</span>
                            </li>
                        </ul>
                    </div>
                </article>
                <article class="card w-40p">
                    <span class="f-30">사원 정보</span>
                    <!-- <div class="container f-col mg-v-25" style="height: 70%; justify-content: center; align-items: center;">
                        <span style="font-size: 70px;">ℹ️</span>
                        <p style="font-size: 30px;">사원을 선택하세요.</p>
                    </div> -->
                    <div class="mg-v-25">
                        <div class="container">
                            <div id="hr-emp-info">
                                <table id="tb-emp">
                                    <tr>
                                        <td>부서</td>
                                        <td>직위</td>
                                    </tr>
                                    <tr>
                                        <td class="f-20">인사팀</td>
                                        <td class="f-20">대리</td>
                                    </tr>
                                    <tr>
                                        <td>이름</td>
                                        <td>입사일</td>
                                    </tr>
                                    <tr>
                                        <td class="f-20">강해린</td>
                                        <td class="f-20">2024-03-10</td>
                                    </tr>
                                    <tr>
                                        <td>이메일</td>
                                        <td>연락처</td>
                                    </tr>
                                    <tr>
                                        <td class="f-20">khr@erp.kr</td>
                                        <td class="f-20">010-1234-5678</td>
                                    </tr>
                                </table>
                            </div>
                            <div class="shadow">
                                <img src="https://cdn.hankyung.com/photo/201904/01.19372617.1.jpg" width="120" height="150">
                            </div>
                        </div>
                        <div id="hr-emp-spec" class="mg-v-25">
                            <span class="f-20">경력사항</span>
                            <div class="container space mg-v-25">
                                <span class="w-30p">기간</span>
                                <span class="w-30p">프로젝트</span>
                                <span class="w-30p">회사</span>
                                <span class="w-30p">업무</span>
                            </div>
                            <ul id="scroll-box-mini">
                                <li class="container space">
                                    <span class="w-30p">2022-10 ~ 2022-11</span>
                                    <span class="w-30p">우리행복</span>
                                    <span class="w-30p">해피무브</span>
                                    <span class="w-30p">사무/보조</span>
                                </li>
                                <li class="container space">
                                    <span class="w-30p">2022-01 ~ 2022-03</span>
                                    <span class="w-30p">희망찬내일</span>
                                    <span class="w-30p">해피무브</span>
                                    <span class="w-30p">사무/보조</span>
                                </li>
                                <li class="container space">
                                    <span class="w-30p">2021-06 ~ 2021-12</span>
                                    <span class="w-30p">발로뛰GO</span>
                                    <span class="w-30p">ALL샵</span>
                                    <span class="w-30p">영업</span>
                                </li>
                            </ul>
                        </div>
                        <div id="hr-emp-info-modify" class="right">
                            <button id="hr-emp-info-btn-modify" class="btn btn-primary">수정</button>
                            <button id="hr-emp-info-btn-delete" class="btn btn-danger mg-l-30">삭제</button>
                        </div>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <dialog id="hr-emp-dialog-modify">
        <div id="hr-emp-dialog-modify-header">
            <span class="f-30">사원 정보 수정</span>
        </div>
        <div id="hr-emp-dialog-modify-content" class="pd-10 h-400" style="overflow-y: auto;">
            <div id="hr-emp-dialog-modify-content-info">
                <div id="hr-emp-dialog-modify-content-info-profile" class="shadow d-inline-block">
                    <img src="https://cdn.hankyung.com/photo/201904/01.19372617.1.jpg" width="120" height="150">
                </div>
                <div class="mg-v-20">
                    <label for="file">💾</label>
                    <input type="file" id="file" hidden>
                    <span>증명사진.png</span>
                </div>
                <table id="tb-emp" class="table-input">
                    <tr>
                        <td>부서</td>
                        <td>직위</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="부서명" value="인사팀">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="직위" value="대리">
                        </td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td>입사일</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="이름" value="강해린">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="입사일" value="2024-03-10">
                        </td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td>연락처</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="이메일" value="khr@erp.kr">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="연락처" value="010-1234-5678">
                        </td>
                    </tr>
                </table>
            </div>
            <div id="hr-emp-dialog-modify-content-info-spec" class="mg-v-25">
                <span class="f-20">경력사항</span>
                <div class="container space mg-v-20">
                    <span class="w-30p">기간</span>
                    <span class="w-30p">프로젝트</span>
                    <span class="w-30p">회사</span>
                    <span class="w-30p">업무</span>
                </div>
                <ul style="list-style: none; padding-left: 0px;">
                    <li class="container space li-input mg-b-20">
                        <input type="text" placeholder="기간" value="2022-10 ~ 2022-11">
                        <input type="text" placeholder="프로젝트" value="우리행복">
                        <input type="text" placeholder="회사" value="해피무브">
                        <input type="text" placeholder="업무" value="사무/보조">
                    </li>
                    <li class="container space li-input mg-b-20">
                        <input type="text" placeholder="기간" value="2022-01 ~ 2022-03">
                        <input type="text" placeholder="프로젝트" value="희망찬내일">
                        <input type="text" placeholder="회사" value="해피무브">
                        <input type="text" placeholder="업무" value="사무/보조">
                    </li>
                    <li class="container space li-input mg-b-20">
                        <input type="text" placeholder="기간" value="2021-06 ~ 2021-12">
                        <input type="text" placeholder="프로젝트" value="발로뛰GO">
                        <input type="text" placeholder="회사" value="ALL샵">
                        <input type="text" placeholder="업무" value="영업">
                    </li>
                    <li class="container center-row">
                        ➕
                    </li>
                </ul>
            </div>
        </div>
        <div class="container mg-v-25 space">
            <button id="dialog-modify-btn-complete" class="btn btn-success">완료</button>
            <button id="dialog-modify-btn-cancel" class="btn btn-primary">취소</button>
        </div>
    </dialog>
    <dialog id="hr-emp-dialog-delete">
        <span class="f-30">사원을 삭제하시겠습니까?</span>
        <div class="container mg-v-25 space w-70p">
            <button id="dialog-delete-btn-yes" class="btn btn-success">예</button>
            <button id="dialog-delete-btn-no" class="btn btn-primary">아니오</button>
        </div>
    </dialog>
</body>
</html>