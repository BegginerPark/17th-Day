//var name = "홍길동"; // 개발할 때는 사용자 입력 대신 변수를 만들어 사용하면 편리함
var name = prompt("이름을 입력해 주세요."); // 사용자에게 이름을 입력받음

var msg = "당신의 이름은" + name + "입니다." + name + "님의 이름은" + name.length + "글자입니다."
//console.log(msg); // 개발할 때는 경고창을 띄우지 말고 콘솔에서 메시지를 확인
alert(msg); // 사용자에게 메시지 전달