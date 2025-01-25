<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>
<%@ page import="com.fasterxml.jackson.datatype.jsr310.JavaTimeModule" %>
<%@ page import="com.erp.dto.CriterionDto" %>
<%@ page import="com.erp.dto.DepartmentDto" %>
<%@ page import="com.erp.dto.EmployeeDto" %>
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
	List<EmployeeDto> list = (ArrayList) request.getAttribute("list");
	String msg = (String) request.getAttribute("msg");
%>
<%!
	public String convertToJson(CriterionDto c) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		return mapper.writeValueAsString(c);
	}
	public String convertToJson(DepartmentDto d) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		return mapper.writeValueAsString(d);
	}
	public String convertToJson(EmployeeDto e) throws Exception {
		ObjectMapper mapper = new ObjectMapper();
		mapper.registerModule(new JavaTimeModule());
		return mapper.writeValueAsString(e);
	}
%>
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
    <%-- <script type="module" src="<%=path%>/resources/js/hr_employee.js"></script> --%>
    <script type="module" src="<%=path%>/resources/js/component/side_menu.js"></script>
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
                        	<% for (int i = 0; i < list.size(); i++) { %>
	                            <li class="container space" onclick='onClickEmpItem(<%=convertToJson(list.get(i))%>)'>
					                <span class="f-20 w-30p"><%=list.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%="-" %></span>
					                <span class="f-20 w-30p"><%=list.get(i).getPosition() %></span>
					                <span class="f-20 w-30p"><%=list.get(i).getName() %></span>
					                <span class="f-20 w-30p"><%=list.get(i).getJoinDate() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                    <div class="container center-row">
                    	<button class="btn btn-primary" onclick="onClickRegister()">사원 추가하기</button>
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
                                <!-- <li id="hr-emp-spec-list" class="container space">
                                    <span class="w-30p">2022-10 ~ 2022-11</span>
                                    <span class="w-30p">우리행복</span>
                                    <span class="w-30p">해피무브</span>
                                    <span class="w-30p">사무/보조</span>
                                </li> -->
                            </ul>
                        </div>
                        <div id="hr-emp-info-modify" class="right">
                            <button id="hr-emp-info-btn-modify" class="btn btn-primary" onclick="onClickModify()">수정</button>
                            <button id="hr-emp-info-btn-delete" class="btn btn-danger mg-l-30" onclick="onClickDelete()">삭제</button>
                        </div>
                    </div>
                </article>
            </section>
        </main>
    </section>
    <!-- 사원 추가하기 Dialog -->
    <dialog id="hr-emp-dialog-register">
        <div id="hr-emp-dialog-register-header">
            <span class="f-30">사원 정보 입력</span>
        </div>
        <div id="hr-emp-dialog-register-content" class="pd-10 h-400" style="overflow-y: auto;">
            <div id="hr-emp-dialog-register-content-info">
                <div id="hr-emp-dialog-register-content-info-profile" class="shadow d-inline-block">
                    <img src="https://cdn.hankyung.com/photo/201904/01.19372617.1.jpg" width="120" height="150">
                </div>
                <div class="mg-v-20">
                    <label for="file">💾</label>
                    <input type="file" id="file" hidden>
                    <span>증명사진.png</span>
                </div>
                <table id="tb-emp-reg" class="table-input">
                	<tr>
                        <td>코드</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="코드" onchange="onChangeRegCode(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td>비밀번호</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="email" placeholder="이메일" onchange="onChangeRegEmail(this)">
                        </td>
                        <td class="f-20">
                            <input type="password" placeholder="비밀번호" onchange="onChangeRegPassword(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>닉네임</td>
                        <td>이름</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="닉네임" onchange="onChangeRegNickname(this)">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="이름" onchange="onChangeRegName(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>연락처</td>
                        <td>생일</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="연락처" onchange="onChangeRegPhone(this)">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="생일" onchange="onChangeRegBirthday(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>입사일</td>
                        <td>권한</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="입사일" onchange="onChangeRegJoinDate(this)">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="권한" onchange="onChangeRegRole(this)">
                        </td>
                    </tr>
                </table>
            </div>
            <div id="hr-emp-dialog-register-content-info-spec" class="mg-v-25">
                <span class="f-20">경력사항</span>
                <div class="container space mg-v-20">
                    <span class="w-30p">기간</span>
                    <span class="w-30p">프로젝트</span>
                    <span class="w-30p">회사</span>
                    <span class="w-30p">업무</span>
                </div>
                <ul id="reg-work-hist-ul" style="list-style: none; padding-left: 0px;">
                    <li id="reg-work-hist-li-1" class="container space li-input mg-b-20">
                        <input type="text" placeholder="2024-01 ~ 2024-02" onchange="onChangeRegTerm(this)">
                        <input type="text" placeholder="ERP 리뉴얼"  onchange="onChangeRegProject(this)">
                        <input type="text" placeholder="ERP 회사"  onchange="onChangeRegCompany(this)">
                        <input type="text" placeholder="사무/보조"  onchange="onChangeRegWork(this)">
                    </li>
                    <li class="container center-row" onclick="onClickRegPlus()">
                        ➕
                    </li>
                </ul>
            </div>
        </div>
        <div class="container mg-v-25 space">
            <button id="dialog-register-btn-complete" class="btn btn-success" onclick="onClickRegComplete()">완료</button>
            <button id="dialog-register-btn-cancel" class="btn btn-primary" onclick="onClickRegCancel()">취소</button>
        </div>
    </dialog>
    <!-- 사원 수정하기 Dialog -->
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
                <table id="tb-emp-mod" class="table-input">
                	<tr>
                        <td>코드</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="코드" onchange="onChangeModCode(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td>비밀번호</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="email" placeholder="이메일" onchange="onChangeModEmail(this)">
                        </td>
                        <td class="f-20">
                            <input type="password" placeholder="비밀번호" onchange="onChangeModPassword(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>닉네임</td>
                        <td>이름</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="닉네임" onchange="onChangeModNickname(this)">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="이름" onchange="onChangeModName(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>연락처</td>
                        <td>생일</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="연락처" onchange="onChangeModPhone(this)">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="생일" onchange="onChangeModBirthday(this)">
                        </td>
                    </tr>
                    <tr>
                        <td>입사일</td>
                        <td>권한</td>
                    </tr>
                    <tr>
                        <td class="f-20">
                            <input type="text" placeholder="입사일" onchange="onChangeModJoinDate(this)">
                        </td>
                        <td class="f-20">
                            <input type="text" placeholder="권한" onchange="onChangeModRole(this)">
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
                <ul id="mod-work-hist-ul" style="list-style: none; padding-left: 0px;">
                    <li id="mod-work-hist-li-1" class="container space li-input mg-b-20">
                        <input type="text" placeholder="2024-01 ~ 2024-02" onchange="onChangeModTerm(this)">
                        <input type="text" placeholder="ERP 리뉴얼"  onchange="onChangeModProject(this)">
                        <input type="text" placeholder="ERP 회사"  onchange="onChangeModCompany(this)">
                        <input type="text" placeholder="사무/보조"  onchange="onChangeModWork(this)">
                    </li>
                    <li class="container center-row" onclick="onClickModPlus()">
                        ➕
                    </li>
                </ul>
            </div>
        </div>
        <div class="container mg-v-25 space">
            <button id="dialog-modify-btn-complete" class="btn btn-success" onclick="onClickModComplete()">완료</button>
            <button id="dialog-modify-btn-cancel" class="btn btn-primary" onclick="onClickModCancel()">취소</button>
        </div>
    </dialog>
    <dialog id="hr-emp-dialog-delete">
        <span class="f-30">사원을 삭제하시겠습니까?</span>
        <div class="container mg-v-25 space w-70p">
            <button id="dialog-delete-btn-yes" class="btn btn-success">예</button>
            <button id="dialog-delete-btn-no" class="btn btn-primary">아니오</button>
        </div>
    </dialog>
    <form id="form-reg">
    	<input id="reg-data" name="data" hidden>
    </form>
    <form id="form-mod">
    	<input id="mod-data" name="data" hidden>
    </form>
    <form id="form-del">
    	<input id="del-emp-id" name="empId" hidden>
    </form>
</body>
<script>

	let empData = {};
	let mLiCnt = 0;

	// list
	function onClickEmpItem(item) {
		empData = item;
		mLiCnt = item.workHistory.length;
		// 인적사항
		const tb1 = document.getElementById('tb-emp');
		const tds1 = tb1.getElementsByTagName('td');
		tds1[2].innerText = item.department.criterion.name;
		tds1[3].innerText = item.position;
		tds1[6].innerText = item.name;
		tds1[7].innerText = item.joinDate;
		tds1[10].innerText = item.email;
		tds1[11].innerText = item.phone;
		// 경력사항
		const ul1 = document.getElementById('scroll-box-mini');
		ul1.replaceChildren();
		for (let i = 0; i < item.workHistory.length; i++) {
			const wh = item.workHistory[i];
			ul1.innerHTML += '<li class="container space">'
				+'<span class="w-30p">' + wh.term + '</span>'
				+'<span class="w-30p">' + wh.project + '</span>'
				+'<span class="w-30p">' + wh.company + '</span>'
				+'<span class="w-30p">' + wh.work + '</span>'
				+'</li>';
		}
		// 수정 인적사항
		const tb = document.getElementById('tb-emp-mod');
		const tbInputs = tb.getElementsByTagName('input');
		tbInputs[0].value = item.code;
		tbInputs[1].value = item.email;
		tbInputs[3].value = item.nickname;
		tbInputs[4].value = item.name;
		tbInputs[5].value = item.phone;
		tbInputs[6].value = item.birthday;
		tbInputs[7].value = item.joinDate;
		tbInputs[8].value = item.role;
		// 수정 경력사항
		const ul2 = document.getElementById('mod-work-hist-ul');
		ul2.replaceChildren();
		for (let i = 0; i < item.workHistory.length; i++) {
			const wh = item.workHistory[i];
			ul2.innerHTML += '<li id="mod-work-hist-li-'+(i+1)+'" class="container space li-input mg-b-20">'
	                +'<input type="text" placeholder="2024-01 ~ 2024-02" value="'+wh.term+'" onchange="onChangeModTerm(this,'+i+')">'
		            +'<input type="text" placeholder="ERP 리뉴얼" value="'+wh.project+'" onchange="onChangeModProject(this,'+i+')">'
		            +'<input type="text" placeholder="ERP 회사" value="'+wh.company+'" onchange="onChangeModCompany(this,'+i+')">'
		            +'<input type="text" placeholder="사무/보조" value="'+wh.work+'" onchange="onChangeModWork(this,'+i+')">'
		        	+'</li>';
		}
		ul2.innerHTML += '<li class="container center-row" onclick="onClickModPlus()">➕</li>';
	}
	
	const dialogReg = document.getElementById('hr-emp-dialog-register');
	
	// register
	let data = {};
	data.reqWorkHistory = [];
	function onChangeRegCode(e) {
		data.reqCode = e.value;
	}
	function onChangeRegEmail(e) {
		data.reqEmail = e.value;
	}
	function onChangeRegPassword(e) {
		data.reqPassword = e.value;
	}
	function onChangeRegNickname(e) {
		data.reqNickname = e.value;
	}
	function onChangeRegName(e) {
		data.reqName = e.value;
	}
	function onChangeRegPhone(e) {
		data.reqPhone = e.value.replaceAll('-', '');
	}
	function onChangeRegBirthday(e) {
		data.reqBirthday = e.value;
	}
	function onChangeRegJoinDate(e) {
		data.reqJoinDate = e.value;
	}
	function onChangeRegRole(e) {
		data.reqRole = e.value;
	}
	
	let term = '', project = '', company = '', work = '';
	function onChangeRegTerm(e) {
		term = e.value;
	}
	function onChangeRegProject(e) {
		project = e.value;
	}
	function onChangeRegCompany(e) {
		company = e.value;
	}
	function onChangeRegWork(e) {
		work = e.value;
	}
	
	let liCnt = 1;
	function onClickRegPlus() {
		data.reqWorkHistory.push({ term, project, company, work });
		term = ''; project = ''; company = ''; work = '';
		
		const li = document.getElementById('reg-work-hist-li-' + liCnt);
		const clone = li.cloneNode(true);
		clone.id = 'reg-work-hist-li-' + ++liCnt;
		const inputs = clone.children;
		inputs[0].value = '';
		inputs[1].value = '';
		inputs[2].value = '';
		inputs[3].value = '';
		li.after(clone);
	}
	
	function onClickRegister() {
		dialogReg.showModal();
	}
	function onClickRegComplete() {
		if (term != '' || project != '' || company != '' || work != '') {
			data.reqWorkHistory.push({ term, project, company, work });			
		}
		console.log(data);
		document.getElementById('reg-data').value = JSON.stringify(data);
		dialogReg.close();
		
		const form = document.getElementById('form-reg');
		form.action = 'hrEmployeeRegister.do';
		form.method = 'post';
		form.submit();
	}
	function onClickRegCancel() {
		const tb = document.getElementById('tb-emp-reg');
		const inputs = tb.getElementsByTagName('input');
		for (let i = 0; i < inputs.length; i++) {
			inputs[i].value = '';
		}
		
		const ul = document.getElementById('reg-work-hist-ul');
		const ulInputs = ul.getElementsByTagName('input');
		for (let i = 0; i < ulInputs.length; i++) {
			ulInputs[i].value = '';
		}
		dialogReg.close();
	}
	
	// modify
	const dialogMod = document.getElementById('hr-emp-dialog-modify');
	
	let mdata = {};
	//mdata.reqWorkHistory = [];
	//mdata.reqWorkHistoryReg = [];
	function onChangeModCode(e) {
		mdata.reqCode = e.value;
	}
	function onChangeModEmail(e) {
		mdata.reqEmail = e.value;
	}
	function onChangeModPassword(e) {
		mdata.reqPassword = e.value;
	}
	function onChangeModNickname(e) {
		mdata.reqNickname = e.value;
	}
	function onChangeModName(e) {
		mdata.reqName = e.value;
	}
	function onChangeModPhone(e) {
		mdata.reqPhone = e.value.replaceAll('-', '');
	}
	function onChangeModBirthday(e) {
		mdata.reqBirthday = e.value;
	}
	function onChangeModJoinDate(e) {
		mdata.reqJoinDate = e.value;
	}
	function onChangeModRole(e) {
		mdata.reqRole = e.value;
	}
	
	let mTerm = '', mProject = '', mCompany = '', mWork = '';
	function onChangeModTerm(e, i) {
		console.log(e);
		mdata.reqWorkHistory[i].term = e.value;
	}
	function onChangeModProject(e, i) {
		mdata.reqWorkHistory[i].project = e.value;
	}
	function onChangeModCompany(e, i) {
		mdata.reqWorkHistory[i].company = e.value;
	}
	function onChangeModWork(e, i) {
		mdata.reqWorkHistory[i].work = e.value;
	}
	
	function onChangeModTermReg(e, i) {
		mdata.reqWorkHistoryReg[i].term = e.value;
	}
	function onChangeModProjectReg(e, i) {
		mdata.reqWorkHistoryReg[i].project = e.value;
	}
	function onChangeModCompanyReg(e, i) {
		mdata.reqWorkHistoryReg[i].company = e.value;
	}
	function onChangeModWorkReg(e, i) {
		mdata.reqWorkHistoryReg[i].work = e.value;
	}
	
	let mc = 0;
	//let mLiCnt = empData.workHistory?.length;
	function onClickModPlus() {
		mdata.reqWorkHistoryReg.push({ term: '', project: '', company: '', work: '' });
		
		const li = document.getElementById('mod-work-hist-li-' + mLiCnt);
		const nextli = document.createElement('li');
		nextli.id = 'mod-work-hist-li-' + ++mLiCnt;
		nextli.className = 'container space li-input mg-b-20';
		nextli.innerHTML = '<input type="text" placeholder="2024-01 ~ 2024-02" onchange="onChangeModTermReg(this,'+mc+')">'
            +'<input type="text" placeholder="ERP 리뉴얼" onchange="onChangeModProjectReg(this,'+mc+')">'
            +'<input type="text" placeholder="ERP 회사" onchange="onChangeModCompanyReg(this,'+mc+')">'
            +'<input type="text" placeholder="사무/보조" onchange="onChangeModWorkReg(this,'+ mc++ +')">';
        li.after(nextli);
	}
	
	function onClickModify() {
		mdata = {
			reqId: empData.id,
			reqCode: empData.code,
			reqEmail: empData.email,
			reqPassword: empData.password,
			reqNickname: empData.nickname,
			reqName: empData.name,
			reqPosition: empData.position,
			reqPhone: empData.phone,
			reqBirthday: empData.birthday,
			reqJoinDate: empData.joinDate,
			reqRole: empData.role,
			reqWorkHistory: empData.workHistory,
			reqWorkHistoryReg: []
		};
		dialogMod.showModal();
	}
	function onClickModComplete() {
		if (mTerm != '' || mProject != '' || mCompany != '' || mWork != '') {
			mdata.reqWorkHistory.push({ term: mTerm, project: mProject, company: mCompany, work: mWork });			
		}
		console.log(mdata);
		document.getElementById('mod-data').value = JSON.stringify(mdata);
		dialogMod.close();
		
		const form = document.getElementById('form-mod');
		form.action = 'hrEmployeeUpdate.do';
		form.method = 'post';
		form.submit();
	}
	function onClickModCancel() {
		const tb = document.getElementById('tb-emp-mod');
		const inputs = tb.getElementsByTagName('input');
		for (let i = 0; i < inputs.length; i++) {
			inputs[i].value = '';
		}
		
		const ul = document.getElementById('mod-work-hist-ul');
		const ulInputs = ul.getElementsByTagName('input');
		for (let i = 0; i < ulInputs.length; i++) {
			ulInputs[i].value = '';
		}
		dialogMod.close();
	}
	
	// delete
	function onClickDelete() {
		document.getElementById('del-emp-id').value = empData.id;
		const form = document.getElementById('form-del');
		form.action = 'hrEmployeeDelete.do';
		form.method = 'post';
		form.submit();
	}
</script>
</html>