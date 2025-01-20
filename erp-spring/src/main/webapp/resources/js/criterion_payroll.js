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
document.getElementById('info-btn-update').onclick = updateAtt;
document.getElementById('info-btn-delete').onclick = deleteAtt;
// functions
function init() {
    document.getElementById('logout').addEventListener('click', logout);
    setClickLogo();
    setTextGreet();
    getList();
    createElementsRegisterList();
}
function logout() {
    alert('로그아웃 되었습니다.');
    localStorage.clear();
    location.href = '/html/login.html';
    return;
}
function setClickLogo() {
    document.getElementById('logo').addEventListener('click', move);
}
function move(e) {
    location.href = e.target.attributes['url'].value;
}
function setTextGreet() {
    document.getElementById('greet').innerText = `${storage.user.name}님 반갑습니다.`;
}
function getList() {
    list.push({
        code: 'C0001',
        type: 'PAY',
        status: 'Y',
        name: '기본급'
    });
    list.push({
        code: 'C0002',
        type: 'PAY',
        status: 'Y',
        name: '초과수당'
    });
    list.push({
        code: 'C0003',
        type: 'PAY',
        status: 'Y',
        name: '식비'
    });
    list.push({
        code: 'C0004',
        type: 'PAY',
        status: 'N',
        name: '연장수당'
    });
    list.push({
        code: 'C0005',
        type: 'DEDUCT',
        status: 'N',
        name: '소득세'
    });
    list.push({
        code: 'C0006',
        type: 'DEDUCT',
        status: 'Y',
        name: '지방소득세'
    });
    list.push({
        code: 'C0007',
        type: 'DEDUCT',
        status: 'Y',
        name: '국민연금'
    });
}
function createElementsRegisterList() {
    // draw
    let html = '';
    list.forEach((v, i) => {
        html += `
            <li id="li-item-${i}" class="container space">
                <span class="f-20 w-30p">${v.code}</span>
                <span class="f-20 w-30p">${v.type}</span>
                <span class="f-20 w-30p">${v.status}</span>
                <span class="f-20 w-30p">${v.name}</span>
            </li>
        `;
    });
    document.getElementById('register-list').innerHTML = html;
    // insert event
    list.forEach((v, i) => {
        document.getElementById(`li-item-${i}`).onclick = e => onClickItem(v);
    });
}
function onClickItem(v) {
    updCode = v.code;
    updType = v.type;
    updStatus = v.status;
    updName = v.name;
    document.querySelector('dialog').showModal();
    document.getElementById('info-input-code').value = v.code;
    document.getElementById('info-input-type').value = v.type;
    document.getElementById('info-input-status').value = v.status;
    document.getElementById('info-input-name').value = v.name;
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
    createElementsRegisterList();
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
function updateAtt(e) {
    list = list.map(v => v.code !== updCode ? v : {
        code: updCode,
        type: updType,
        status: updStatus,
        name: updName
    });
    createElementsRegisterList();
    alert('정상적으로 수정하였습니다.');
    document.querySelector('dialog').close();
}
function deleteAtt(e) {
    const isOk = confirm('삭제하시겠습니까?');
    if (isOk) {
        list = list.filter(v => v.code !== updCode);
        createElementsRegisterList();
        document.querySelector('dialog').close();
    }
}