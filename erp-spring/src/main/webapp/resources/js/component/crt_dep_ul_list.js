const elmUlList = document.getElementById('ul-list');
let state = {
    selected: {
        id: undefined,
        code: undefined,
        type: undefined,
        status: undefined,
        name: undefined
    }
};

function setUlList(list) {
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
    elmUlList.innerHTML = html;
    // insert event
    list.forEach((v, i) => {
        const li = document.getElementById(`li-item-${i}`);
        li.onclick = e => onClickItem(v, i);
    });
}

function onClickItem(v, i) {
    console.log(v);
    state.selected.id = `li-item-${i}`;
    document.querySelector('dialog').showModal();
    document.getElementById('info-input-code').value = v.code;
    document.getElementById('info-input-type').value = v.type;
    document.getElementById('info-input-status').value = v.status;
    document.getElementById('info-input-name').value = v.name;
}

export default { setUlList, state };