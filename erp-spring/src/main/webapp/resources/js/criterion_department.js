// imports
// import UlList from './component/crt_dep_ul_list.js';

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
// functions
function init() {
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