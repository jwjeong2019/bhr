// ========== business ==========
// constants
const LOGIN_ADM_ID = 'admin@erp.kr';
const LOGIN_ADM_PW = '1234';
const LOGIN_USER_ID = 'minji@erp.kr';
const LOGIN_USER_PW = '12345';

// elements
const elmId = document.getElementById('id');
const elmPw = document.getElementById('pw');
const elmSignin = document.getElementById('signin');

// variables
let id = '';
let pw = '';

// events
elmId.onchange = e => {
    // console.log(e.target.value);
    id = e.target.value;
};
elmPw.onchange = e => {
    pw = e.target.value;
};
elmSignin.onclick = onClickSignIn;

// functions
function onClickSignIn(e) {
    const rs = login();
    if (rs.code === 200) {
        alert('로그인에 성공하셨습니다.');
        const { user } = rs.content;
        localStorage.setItem('id', user.id);
        localStorage.setItem('email', user.email);
        localStorage.setItem('name', user.name);
        localStorage.setItem('role', user.role);
        location.href = rs.content.to;
        return;
    }
    alert('입력 정보가 올바르지 않습니다.');
    return;
}
function login() {
    // API
    const params = { id, pw };
    let response = {
        code: 401,
        message: 'Unauthorized.',
        content: null,
    };
    if (params.id === LOGIN_ADM_ID && params.pw === LOGIN_ADM_PW) {
        response.code = 200;
        response.message = 'Success Login.';
        response.content = {
            to: '/html/main.html',
            user: {
                id: 1,
                email: 'admin@erp.kr',
                name: '최고관리자',
                role: 'MASTER'
            }
        };
        return response;
    }
    if (params.id === LOGIN_USER_ID && params.pw === LOGIN_USER_PW) {
        response.code = 200;
        response.message = 'Success Login.';
        response.content = {
            to: '/html/main.html',
            user: {
                id: 1,
                email: 'minji@erp.kr',
                name: '김민지',
                role: 'USER'
            }
        };
        return response;
    }
    return response;
}