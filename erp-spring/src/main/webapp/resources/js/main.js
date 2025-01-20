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
// elements
const elmGreet = document.getElementById('greet');
const elmLogout = document.getElementById('logout');
const elmLogo = document.getElementById('logo');
const elmYear = document.getElementById('year');
const elmMonth = document.getElementById('month');
const elmDate = document.getElementById('date');
const elmDay = document.getElementById('day');
const elmHour = document.getElementById('hour');
const elmMin = document.getElementById('min');
const elmSec = document.getElementById('sec');
const elmSideMenu = document.getElementById('side-menu');

// executions
init();

// functions
function init() {
    elmLogout.addEventListener('click', logout);
    setLogo();
    // setGreet();
    setDate();
    setSideMenu();
    setInterval(timer, 1000);
}
function logout() {
    alert('로그아웃 되었습니다.');
    localStorage.clear();
    location.href = '/html/login.html';
    return;
}
function setLogo() {
    elmLogo.addEventListener('click', move);
}
function move(e) {
    location.href = e.target.attributes['url'].value;
}
function setGreet() {
    // elmGreet.innerText = `${storage.user.name}님 반갑습니다.`;
}
function setDate() {
    const today = new Date();
    elmYear.innerText = today.getFullYear();
    elmMonth.innerText = today.getMonth() + 1;
    elmDate.innerText = today.getDate();
    elmDay.innerText = getDay(today.getDay());
    elmHour.innerText = today.getHours();
    elmMin.innerText = today.getMinutes();
}
function getDay(val) {
    switch (val) {
        case 0: return 'Sun';
        case 1: return 'Mon';
        case 2: return 'Tue';
        case 3: return 'Wed';
        case 4: return 'Thu';
        case 5: return 'Fri';
        case 6: return 'Sat';
    }
}
function setSideMenu() {
    const elmH3List = elmSideMenu.getElementsByTagName('h3');
    for (let i = 0; i < elmH3List.length; i++) {
        elmH3List[i].addEventListener('click', move);
    }
}
function timer() {
    elmSec.innerText = new Date().getSeconds();
}