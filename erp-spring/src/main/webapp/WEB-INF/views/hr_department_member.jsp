<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.erp.dto.CriterionDto" %>
<%@ page import="com.erp.dto.DepartmentDto" %>
<%@ page import="com.erp.dto.EmployeeDto" %>
<%
	String path = request.getContextPath();
	String name = (String) session.getAttribute("name");
	List<DepartmentDto> listDep = (ArrayList) request.getAttribute("listDep");
	List<EmployeeDto> listEmp = (ArrayList) request.getAttribute("listEmp");
	List<EmployeeDto> listMem = (ArrayList) request.getAttribute("listMem");
	String msg = (String) request.getAttribute("msg");
%>
<%!
	public static final String JSON_CRITERION = "{'code': '%s', 'type': '%s', 'status': '%s', 'name': '%s'}";
	public static final String JSON_DEPARTMENT = "{'id': '%s', 'criterion': %s}";
	public static final String JSON_EMPLOYEE = "{'id': '%s', 'code': '%s', 'name': '%s', 'position': '%s', 'department': %s}";
	public String convertToJson(CriterionDto c) {
		return String.format(JSON_CRITERION, 
				c.getCode(), c.getType(), c.getStatus(), c.getName());
	}
	public String convertToJson(DepartmentDto d) {
		CriterionDto c = d.getCriterion();
		return String.format(JSON_DEPARTMENT,
				d.getId(), 
				String.format(JSON_CRITERION,
						c.getCode(), c.getType(), c.getStatus(), c.getName()));
	}
	public String convertToJson(EmployeeDto e) {
		DepartmentDto d = e.getDepartment();
		if (d == null) {
			return String.format(JSON_EMPLOYEE,
					e.getId(), e.getCode(), e.getName(), e.getPosition(),
					null);
		}
		CriterionDto c = d.getCriterion();
		return String.format(JSON_EMPLOYEE,
				e.getId(), e.getCode(), e.getName(), e.getPosition(),
				String.format(JSON_DEPARTMENT,
						d.getId(),
						String.format(JSON_CRITERION,
								c.getCode(), c.getType(), c.getStatus(), c.getName())));
	}
%>
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
                            <% for (int i = 0; i < listDep.size(); i++) { %>
	                            <li class="container space" onclick="onClickDepItem(<%=convertToJson(listDep.get(i)) %>)">
					                <span class="f-20 w-30p"><%=listDep.get(i).getCriterion().getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                    <div>
                        <span id="select-department" style="display: none;" class="f-30">👉 개발1팀</span>
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
                            <% for (int i = 0; i < listEmp.size(); i++) { %>
	                            <li class="container space" onclick="onClickEmpItem(<%=convertToJson(listEmp.get(i)) %>)">
					                <span class="f-20 w-30p"><%=listEmp.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=listEmp.get(i).getJoinDate() %></span>
					                <span class="f-20 w-30p"><%=listEmp.get(i).getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                    <div>
                        <span id="select-employee" style="display: none;" class="f-30">👉 조아영(H0002)</span>
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
                            <% for (int i = 0; i < listMem.size(); i++) { %>
	                            <li class="container space" onclick="onClickMemItem(<%=convertToJson(listMem.get(i)) %>)">
					                <span class="f-20 w-30p"><%=listMem.get(i).getDepartment().getCriterion().getName() %></span>
					                <span class="f-20 w-30p"><%=listMem.get(i).getCode() %></span>
					                <span class="f-20 w-30p"><%=listMem.get(i).getName() %></span>
					            </li>                            	
                            <% } %>
                        </ul>
                    </div>
                    <div class="container f-col">
                        <button id="btn-remove" class="btn btn-danger mg-b-20" style="display: none;" onclick="onClickRemove()">⬇️ 제거하기</button>
                        <button id="btn-add" class="btn btn-success" style="display: none;" onclick="onClickAdd()">⬆️ 추가하기</button>
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
    <form id="form-update">
    	<input id="upd-dep-id" name="depId" hidden>
    	<input id="upd-emp-id" name="empId" hidden>
    </form>
    <!-- <form id="form-delete">
    	<input id="del-emp-id" name="empId" hidden>
    </form> -->
</body>
<script>
	if ('${msg}' == 'already existing Department.') {
		alert('${msg}');
	}
	const formUpd = document.getElementById('form-update');
	//const formDel = document.getElementById('form-delete');
	const dialogIns = document.getElementById('dialog-insert');
	const dialogDel = document.getElementById('dialog-delete');
	
	function onClickDepItem(item) {
		console.log(item);
		const sd = document.getElementById('select-department');
		sd.innerText = '👉 ' + item.criterion.name;
		sd.style.display = 'inline-block';
		document.getElementById('upd-dep-id').value = item.id;
	}
	function onClickEmpItem(item) {
		console.log(item);
		const se = document.getElementById('select-employee');
		se.innerText = '👉 ' + item.name + '(' + item.code + ')';
		se.style.display = 'inline-block';
		document.getElementById('btn-add').style.display = 'inline-block';
		document.getElementById('upd-emp-id').value = item.id;
	}
	function onClickMemItem(item) {
		console.log(item);
		document.getElementById('btn-remove').style.display = 'inline-block';
		document.getElementById('upd-emp-id').value = item.id;
		document.getElementById('upd-dep-id').value = null;
	}
	
	function onClickAdd() {
		formUpd.action = 'hrDepartmentMemberUpdate.do';
		formUpd.method = 'post';
		formUpd.submit();
	}
	function onClickRemove() {
		formUpd.action = 'hrDepartmentMemberUpdate.do';
		formUpd.method = 'post';
		formUpd.submit();
	}
</script>
</html>