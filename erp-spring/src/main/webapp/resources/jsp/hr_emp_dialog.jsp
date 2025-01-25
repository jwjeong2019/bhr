<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String typeF = request.getParameter("typeF");
	String typeS = request.getParameter("typeS");
	String typeSL = typeS.toLowerCase();
	String title = request.getParameter("title");
%>
<dialog id="hr-emp-dialog-<%=typeF %>">
    <div id="hr-emp-dialog-<%=typeF %>-header">
        <span class="f-30"><%=title %></span>
    </div>
    <div id="hr-emp-dialog-<%=typeF %>-content" class="pd-10 h-400" style="overflow-y: auto;">
        <div id="hr-emp-dialog-<%=typeF %>-content-info">
            <div id="hr-emp-dialog-<%=typeF %>-content-info-profile" class="shadow d-inline-block">
                <img src="https://cdn.hankyung.com/photo/201904/01.19372617.1.jpg" width="120" height="150">
            </div>
            <div class="mg-v-20">
                <label for="file">💾</label>
                <input type="file" id="file" hidden>
                <span>증명사진.png</span>
            </div>
            <table id="tb-emp-<%=typeSL %>" class="table-input">
            	<tr>
                    <td>코드</td>
                </tr>
                <tr>
                    <td class="f-20">
                        <input type="text" placeholder="코드" onchange="onChange<%=typeS %>Code(this)">
                    </td>
                </tr>
                <tr>
                    <td>이메일</td>
                    <td>비밀번호</td>
                </tr>
                <tr>
                    <td class="f-20">
                        <input type="email" placeholder="이메일" onchange="onChange<%=typeS %>Email(this)">
                    </td>
                    <td class="f-20">
                        <input type="password" placeholder="비밀번호" onchange="onChange<%=typeS %>Password(this)">
                    </td>
                </tr>
                <tr>
                    <td>닉네임</td>
                    <td>이름</td>
                </tr>
                <tr>
                    <td class="f-20">
                        <input type="text" placeholder="닉네임" onchange="onChange<%=typeS %>Nickname(this)">
                    </td>
                    <td class="f-20">
                        <input type="text" placeholder="이름" onchange="onChange<%=typeS %>Name(this)">
                    </td>
                </tr>
                <tr>
                    <td>연락처</td>
                    <td>생일</td>
                </tr>
                <tr>
                    <td class="f-20">
                        <input type="text" placeholder="연락처" onchange="onChange<%=typeS %>Phone(this)">
                    </td>
                    <td class="f-20">
                        <input type="text" placeholder="생일" onchange="onChange<%=typeS %>Birthday(this)">
                    </td>
                </tr>
                <tr>
                    <td>입사일</td>
                    <td>권한</td>
                </tr>
                <tr>
                    <td class="f-20">
                        <input type="text" placeholder="입사일" onchange="onChange<%=typeS %>JoinDate(this)">
                    </td>
                    <td class="f-20">
                        <input type="text" placeholder="권한" onchange="onChange<%=typeS %>Role(this)">
                    </td>
                </tr>
            </table>
        </div>
        <div id="hr-emp-dialog-<%=typeF %>-content-info-spec" class="mg-v-25">
            <span class="f-20">경력사항</span>
            <div class="container space mg-v-20">
                <span class="w-30p">기간</span>
                <span class="w-30p">프로젝트</span>
                <span class="w-30p">회사</span>
                <span class="w-30p">업무</span>
            </div>
            <ul id="<%=typeSL %>-work-hist-ul" style="list-style: none; padding-left: 0px;">
                <li id="<%=typeSL %>-work-hist-li-1" class="container space li-input mg-b-20">
                    <input type="text" placeholder="2024-01 ~ 2024-02" onchange="onChange<%=typeS %>Term(this)">
                    <input type="text" placeholder="ERP 리뉴얼"  onchange="onChange<%=typeS %>Project(this)">
                    <input type="text" placeholder="ERP 회사"  onchange="onChange<%=typeS %>Company(this)">
                    <input type="text" placeholder="사무/보조"  onchange="onChange<%=typeS %>Work(this)">
                </li>
                <li class="container center-row" onclick="onClick<%=typeS %>Plus()">
                    ➕
                </li>
            </ul>
        </div>
    </div>
    <div class="container mg-v-25 space">
        <button id="dialog-<%=typeF %>-btn-complete" class="btn btn-success" onclick="onClick<%=typeS %>Complete()">완료</button>
        <button id="dialog-<%=typeF %>-btn-cancel" class="btn btn-primary" onclick="onClick<%=typeS %>Cancel()">취소</button>
    </div>
</dialog>