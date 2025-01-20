// 1. variables
var chart = document.getElementById("chart");
var ctx = chart.getContext('2d');
const labels = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

init();
// drawRect();
drawAxis();
drawGrid();
drawLine();
applyFillStyle();
drawXLabels();
drawYLabels();
// 그리기
ctx.stroke();

// 2. functions
function init() {
    ctx.font = 'bold 15px Gulim';
}
function drawRect() {
    ctx.strokeRect(0, 0, 1000, 400);
    // ctx.clearRect(0, 0, 300, 20);
}
function drawAxis() {
    // 스트로크 스타일
    ctx.strokeStyle = 'rgb(0, 0, 0)';
    ctx.lineWidth = 1;
    // X축
    ctx.moveTo(50, 50);
    ctx.lineTo(50, 370);
    // Y축
    ctx.moveTo(50, 370);
    ctx.lineTo(950, 370);
    // 그리기
    ctx.stroke();
}
function drawGrid() {
    ctx.beginPath();
    ctx.strokeStyle = 'rgba(0, 0, 0, 0.2)';
    ctx.lineWidth = 1;
    ctx.moveTo(50, 350);
    ctx.lineTo(950, 350);
    ctx.moveTo(50, 300);
    ctx.lineTo(950, 300);
    ctx.moveTo(50, 250);
    ctx.lineTo(950, 250);
    ctx.moveTo(50, 200);
    ctx.lineTo(950, 200);
    ctx.moveTo(50, 150);
    ctx.lineTo(950, 150);
    ctx.moveTo(50, 100);
    ctx.lineTo(950, 100);
    ctx.moveTo(50, 50);
    ctx.lineTo(950, 50);
    ctx.stroke();
}
function drawLine() {
    // 새로운 path 시작
    ctx.beginPath();
    // 스트로크 스타일
    ctx.strokeStyle = 'rgb(200, 0, 100)';
    ctx.lineWidth = 2;
    // 라인
    ctx.moveTo(100, 200);
    ctx.lineTo(200, 150);
    ctx.lineTo(300, 250);
    ctx.lineTo(400, 120);
    ctx.lineTo(500, 290);
    ctx.lineTo(600, 170);
    ctx.lineTo(700, 240);
    ctx.lineTo(800, 210);
    ctx.lineTo(900, 190);
    // ctx.closePath();

    // 그리기
    ctx.stroke();
}
function drawXLabels() {
    // X 라벨 그리기
    let x = 0;
    for (let i = 0; i < labels.length; i++) {
        ctx.fillText(labels[i], x+=100, 400);
    }
}
function drawYLabels() {
    // Y 라벨 그리기
    const step = 400 / 50;
    for (let i = step - 1; i > 0; i--) {
        ctx.fillText(50 * i, 0, 400 - 50 * i);
    }
}
function applyFillStyle() {
    // 텍스트 색상 변경
    ctx.fillStyle = '#525152';
}