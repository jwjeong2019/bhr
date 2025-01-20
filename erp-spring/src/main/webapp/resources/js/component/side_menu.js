const elmSideMenu = document.getElementById('side-menu');

const menuList = [
    {
        menuNm: '기준관리',
        subMenus: [
            {
                key: 1,
                url: '/html/criterion_department.html',
                nm: '부서 기준 관리'
            },
            {
                key: 2,
                url: '/html/criterion_attendance.html',
                nm: '근태 기준 관리'
            },
            {
                key: 3,
                url: '/html/criterion_payroll.html',
                nm: '급여 기준 관리'
            },
        ]
    },
    {
        menuNm: '인사관리',
        subMenus: [
            {
                key: 4,
                url: '/html/hr_department.html',
                nm: '부서 관리'
            },
            {
                key: 5,
                url: '/html/hr_department_member.html',
                nm: '부서원 관리'
            },
            {
                key: 6,
                url: '/html/hr_employee.html',
                nm: '사원 관리'
            },
        ]
    },
    {
        menuNm: '근태관리',
        subMenus: [
            {
                key: 7,
                url: '/html/attendance_situation.html',
                nm: '근태 현황'
            },
            {
                key: 8,
                url: '/html/attendance_receive.html',
                nm: '근태 신청 관리'
            },
            {
                key: 9,
                url: '/html/attendance_annualleave_situation.html',
                nm: '연차 현황'
            },
        ]
    },
    {
        menuNm: '급여관리',
        subMenus: [
            {
                key: 10,
                url: '/html/payroll_calculated_retrieval.html',
                nm: '급여 산정 조회'
            },
            {
                key: 11,
                url: '/html/payroll_payment.html',
                nm: '급여 지급 관리'
            },
        ]
    },
];

init();

function init() {
    createElements();
    setEventClickTagH3();
}
function createElements() {
    let html = '';
    menuList.forEach(menu => {
        html += `<h2>${menu.menuNm}</h2>`;
        menu.subMenus.forEach(sub => {
            html += `<h3 id="sub-menu-${sub.key}" url="${sub.url}">${sub.nm}</h3>`;
        });
    });
    elmSideMenu.innerHTML = html;
}
function setEventClickTagH3() {
    const elmH3List = elmSideMenu.getElementsByTagName('h3');
    for (let i = 0; i < elmH3List.length; i++) {
        elmH3List[i].addEventListener('click', move);
    }
}
function move(e) {
    location.href = e.target.attributes['url'].value;
}