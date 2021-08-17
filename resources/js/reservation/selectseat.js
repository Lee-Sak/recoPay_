/**
 * 
 */

var clickedArr = [];
var clickedseat_val,totalseat_val ;


// 페이지 이동 시 값 초기화 
$(document).ready(function () {
	clickedArr = [];
	clickedseat_val = 0;
	totalseat_val = 0;
	
});



function reply_click(id) {
	if (document.getElementById(id).style.backgroundColor != "rgb(245, 214, 130)") {
		document.getElementById(id).style.backgroundColor = "#f5d682";
		clickedArr.push(id);
	} else {
		document.getElementById(id).style.backgroundColor = "#FFFFFF";
		for (var i = 0; i < clickedArr.length; i++) {
			if (clickedArr[i] === id ) {
				clickedArr.splice(i, 1);
				i--;
			}
		}
	}

	for (var i = 0; i < clickedArr.length; i++) {
		if (i == 0) {
			document.getElementById("state").innerHTML = "선택한 좌석 : " + clickedArr[i];
			clickedseat_val = clickedArr[i];
		} else {
			document.getElementById("state").innerHTML += ", " + clickedArr[i];
			clickedseat_val += ", " + clickedArr[i];
		}
	}
	
	document.getElementById("totalseat").innerHTML = "총 선택된 좌석 : " + clickedArr.length;
	
	document.getElementById("popupSelectedSeat").innerHTML = "선택한 좌석 : " + clickedseat_val; // 선택된 좌석 출력 
	document.getElementById("popupTicketNum").innerHTML = "티켓 갯수 : " + clickedArr.length;
	

	$('input[name=seat]').attr('value',clickedseat_val);
	$('input[name=ticketnum]').attr('value',clickedArr.length);

}

function buy_but() {
	if(clickedArr.length == 0) {
		alert('좌석을 선택해주세요.');
	} else {
		document.frm.submit();
	}
	
}

























