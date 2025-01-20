// imports
import UlList from './component/crt_dep_ul_list.js';

// ========== business ==========
// variables
const storage = getStorage();
// functions
function getStorage() {
    return {
        user: {
            id: localStorage.getItem('id'),
            email: localStorage.getItem('email'),
            name: localStorage.getItem('name'),
            role: localStorage.getItem('role')
        }
    };
}

// ========== view ==========
// variables
let list = [];
let code = '';
let type = '';
let status = '';
let name = '';
let updCode = '';
let updType = '';
let updStatus = '';
let updName = '';
// executions
init();
// events
document.getElementById('register-input-code').onchange = setCode;
document.getElementById('register-input-type').onchange = setType;
document.getElementById('register-input-status').onchange = setStatus;
document.getElementById('register-input-name').onchange = setName;
document.getElementById('btn-register').onclick = register;
document.getElementById('info-input-code').onchange = setUpdCode;
document.getElementById('info-input-type').onchange = setUpdType;
document.getElementById('info-input-status').onchange = setUpdStatus;
document.getElementById('info-input-name').onchange = setUpdName;
document.getElementById('info-btn-update').onclick = updateDep;
document.getElementById('info-btn-delete').onclick = deleteDep;
// functions
function init() {
    document.getElementById('logout').addEventListener('click', logout);
    setLogo();
    setGreet();
    getList();
    UlList.setUlList(list);
}
function logout() {
    alert('로그아웃 되었습니다.');
    localStorage.clear();
    location.href = '/html/login.html';
    return;
}
function setLogo() {
    document.getElementById('logo').addEventListener('click', move);
}
function move(e) {
    location.href = e.target.attributes['url'].value;
}
function setGreet() {
    document.getElementById('greet').innerText = `${storage.user.name}님 반갑습니다.`;
}
function getList() {
    list.push({
        code: 'A0001',
        type: 'MANAGE',
        status: 'Y',
        name: '경영팀'
    });
    list.push({
        code: 'A0002',
        type: 'HR',
        status: 'Y',
        name: '인사팀'
    });
    list.push({
        code: 'A0003',
        type: 'R&D',
        status: 'N',
        name: '연구팀'
    });
}
function setCode(e) {
    code = e.target.value;
}
function setType(e) {
    type = e.target.value;
}
function setStatus(e) {
    status = e.target.value;
}
function setName(e) {
    name = e.target.value;
}
function register(e) {
    list.push({ code, type, status, name });
    UlList.setUlList(list);
}
function setUpdCode(e) {
    updCode = e.target.value;
}
function setUpdType(e) {
    updType = e.target.value;
}
function setUpdStatus(e) {
    updStatus = e.target.value;
}
function setUpdName(e) {
    updName = e.target.value;
}
function updateDep(e) {
    const spans = document.getElementById(UlList.state.selected.id).children;
    spans[0].innerText = updCode;
    spans[1].innerText = updType;
    spans[2].innerText = updStatus;
    spans[3].innerText = updName;
    alert('정상적으로 수정하였습니다.');
    document.querySelector('dialog').close();
}
function deleteDep(e) {
    const isOk = confirm('삭제하시겠습니까?');
    if (isOk) {
        document.getElementById(UlList.state.selected.id).remove();
        document.querySelector('dialog').close();
    }
}