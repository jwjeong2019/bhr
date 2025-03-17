const elmSideMenu = document.getElementById('side-menu');

const menuList = [
    {
        menuNm: '기준관리',
        subMenus: [
            {
                key: 1,
                url: '/criterionDepartment.do',
                nm: '부서 기준 관리'
            },
        ]
    },
    {
        menuNm: '인사관리',
        subMenus: [
            {
                key: 4,
                url: '/hrDepartment.do',
                nm: '부서 관리'
            },
            {
                key: 5,
                url: '/hrDepartmentMember.do',
                nm: '부서원 관리'
            },
            {
                key: 6,
                url: '/hrEmployee.do',
                nm: '사원 관리'
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