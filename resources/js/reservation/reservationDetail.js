
var prfTime, ticketPrice;
var parsedTimeArr = [];
var weekdaylist = ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'];
var clickedWeek;
var clickedday;
var clickedMon;
var timeList = [];




// 페이지 최초 로딩 
$(document).ready(function() {
	loadPage(pfid);

});

function loadPage(pid) {
	$.ajax({
		url: "http://www.kopis.or.kr/openApi/restful/pblprfr/" + pid
			+ "?service=de93ee9825c24143a98506d9e7f616bd",
		type: "GET",
		cache: false,
		success: function(data, status) {
			if (status == "success") {
				showDetail(data);
			}
		}
	});  // end $.ajax()
}

function showDetail(xmlDOM) {



	var table = "";

	table += "<tr><th>공연장소</th><td class='tdcontent'>"
	table += $(xmlDOM).find("fcltynm").text();


	table += "<tr><th>공연시간</th><td class='tdcontent'>"
	prfTime = $(xmlDOM).find("dtguidance").text();
	table += prfTime;

	table += "<tr><th>관람연령</th><td class='tdcontent'>"
	table += $(xmlDOM).find("prfage").text()

	table += "<tr><th>티켓가격</th><td class='tdcontent'>"
	ticketPrice = $(xmlDOM).find("pcseguidance").text();
	table += ticketPrice;

	table += "<tr><th>출연진</th><td class='tdcontent'>"
	table += $(xmlDOM).find("prfcast").text()

	table += "<tr><th>제작진</th><td class='tdcontent'>"
	table += $(xmlDOM).find("prfcrew").text()

	table += "<tr><th>기획·제작</th><td class='tdcontent'>"
	table += $(xmlDOM).find("entrpsnm").text()

	table += "<tr><th>상영 시간</th><td class='tdcontent'>"
	table += $(xmlDOM).find("prfruntime").text()


	$("#demoXML").html(table);



	//document.getElementById("cal-date").innerHTML = "";
	document.getElementById("showtime").innerHTML = "-공연시간-<br>";
	for (var i = 0; i < parsedTimeArr.length; i++) {
		if (clickedWeek == parsedTimeArr[i].weekday) {
			document.getElementById("showtime").innerHTML += parsedTimeArr[i].timeday + "<br>";
		}
	}

	parsePerformanceDate(prfTime);

	parseticketPrice(ticketPrice);
}



const init = {
	monList: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	dayList: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
	today: new Date(),
	monForChange: new Date().getMonth(),
	activeDate: new Date(),
	getFirstDay: (yy, mm) => new Date(yy, mm, 1),
	getLastDay: (yy, mm) => new Date(yy, mm + 1, 0),
	nextMonth: function() {
		let d = new Date();
		d.setDate(1);
		d.setMonth(++this.monForChange);
		this.activeDate = d;
		return d;
	},
	prevMonth: function() {
		let d = new Date();
		d.setDate(1);
		d.setMonth(--this.monForChange);
		this.activeDate = d;
		return d;
	},
	addZero: (num) => (num < 10) ? '0' + num : num,
	activeDTag: null,
	getIndex: function(node) {
		let index = 0;
		while (node = node.previousElementSibling) {
			index++;
		}
		return index;
	}
};

const $calBody = document.querySelector('.cal-body');
const $btnNext = document.querySelector('.btn-cal.next');
const $btnPrev = document.querySelector('.btn-cal.prev');

/**
 * @param {number} date
 * @param {number} dayIn
*/
function loadDate(date, dayIn) {
	clickedday = date;
	document.querySelector('.cal-date').textContent = "";
	document.querySelector('.cal-day').textContent = init.dayList[dayIn];
	clickedWeek = init.dayList[dayIn];
}


/**
 * @param {date} fullDate
 */
function loadYYMM(fullDate) {
	let yy = fullDate.getFullYear();
	let mm = fullDate.getMonth();
	let firstDay = init.getFirstDay(yy, mm);
	let lastDay = init.getLastDay(yy, mm);
	let markToday;  // for marking today date

	if (mm === init.today.getMonth() && yy === init.today.getFullYear()) {
		markToday = init.today.getDate();
	}

	document.querySelector('.cal-month').textContent = init.monList[mm];
	document.querySelector('.cal-year').textContent = yy + "년 ";

	clickedMon = init.monList[mm];

	let trtd = '';
	let startCount;
	let countDay = 0;
	for (let i = 0; i < 6; i++) {
		trtd += '<tr>';
		for (let j = 0; j < 7; j++) {
			if (i === 0 && !startCount && j === firstDay.getDay()) {
				startCount = 1;
			}
			if (!startCount) {
				trtd += '<td>'
			} else {
				let fullDate = yy + '.' + init.addZero(mm + 1) + '.' + init.addZero(countDay + 1);
				trtd += '<td class="day';
				trtd += (markToday && markToday === countDay + 1) ? ' today" ' : '"';
				trtd += ` data-date="${countDay + 1}" data-fdate="${fullDate}">`;
			}
			trtd += (startCount) ? ++countDay : '';
			if (countDay === lastDay.getDate()) {
				startCount = 0;
			}
			trtd += '</td>';
		}
		trtd += '</tr>';
	}
	$calBody.innerHTML = trtd;
}

/**
 * @param {string} val
 */
function createNewList(val) {
	let id = new Date().getTime() + '';
	let yy = init.activeDate.getFullYear();
	let mm = init.activeDate.getMonth() + 1;
	let dd = init.activeDate.getDate();
	const $target = $calBody.querySelector(`.day[data-date="${dd}"]`);

	let date = yy + '.' + init.addZero(mm) + '.' + init.addZero(dd);

	let eventData = {};
	eventData['date'] = date;
	eventData['memo'] = val;
	eventData['complete'] = false;
	eventData['id'] = id;
	init.event.push(eventData);
	$todoList.appendChild(createLi(id, val, date));
}

function parsePerformanceDate(fullString) {
	//	화요일 ~ 금요일(19:30), 토요일 ~ 일요일(15:00)
	//  월요일 ~ 금요일(15:00,17:30), 토요일 ~ 일요일(13:00,15:10,17:20,19:30)
	//  목요일(12:00,17:00)
	// 수요일(16:00,19:30), 목요일 ~ 금요일(19:30), 토요일(15:00,18:00), 일요일(15:00)

	var trimedfullString = fullString.trim();

	var startindex = 0;

	for (var i = 0; i < trimedfullString.length; i++) {
		if (trimedfullString.indexOf("),") != -1) {
			eachSentanceString(trimedfullString.substring(startindex, trimedfullString.indexOf("),") + 1));
			startindex = trimedfullString.indexOf("),");
			trimedfullString = trimedfullString.replace('),', '*');

		} else {
			eachSentanceString(trimedfullString.substring(startindex + 2, trimedfullString.length));
			break;
		}
	}
}

function parseticketPrice(targetString) {
	// VIP석 88,000원, R석 77,000원, S석 55,000원
	var haplist = [];
	haplist = targetString.split("원,");

	document.getElementById("selectPrice").innerHTML = "<option value='0' selected='selected'>공연가격선택</option>";
	for (var i = 0; i < haplist.length; i++) {
		if (haplist.length > 1) {
			document.getElementById("showtime").innerHTML += haplist[i] + "원 <br>";
			document.getElementById("selectPrice").innerHTML += "<option>" + haplist[i]+   "원 </option>";
		} else {
			document.getElementById("showtime").innerHTML += haplist[i] + " <br>";
			document.getElementById("selectPrice").innerHTML += "<option>" + haplist[i]+   " </option>";
		}

	}
}


function eachSentanceString(targetString) {
	//	화요일 ~ 금요일(19:30), 토요일 ~ 일요일(15:00)
	//  월요일 ~ 금요일(15:00,17:30), 토요일 ~ 일요일(13:00,15:10,17:20,19:30)
	//  목요일(12:00,17:00)
	// 수요일(16:00,19:30), 목요일 ~ 금요일(19:30), 토요일(15:00,18:00), 일요일(15:00)
	// 화요일 ~ 금요일(20:00), 토요일(15:00,18:30), 일요일(14:00,17:30), HOL(14:00,17:30)
	//parsedTimeArr = [];
	//weekdaylist 

	var timelist = [];

	if (targetString.indexOf("~") != -1) {
		//물결이 있으면 
		var hapday;
		var hapweeklist = [];
		var range = false;
		//요일 찾고
		for (var i = 0; i < weekdaylist.length; i++) {
			if (range == true) {
				hapweeklist.push(weekdaylist[i]);
			}
			if (targetString.indexOf(weekdaylist[i]) != -1) {

				if (targetString.indexOf("~") > targetString.indexOf(weekdaylist[i])) {
					//물결보다 앞에있는 요일을 찾을때
					hapweeklist.push(weekdaylist[i]);
					range = true;
				} else {
					//물결보다 뒤에있는 요일을 찾을때
					range = false;
					break;
				}
			}
		}

		if (targetString.indexOf("(") != -1) {
			timelist.push(targetString.substring(targetString.indexOf("(") + 1, targetString.indexOf("(") + 6));
			targetString = targetString.replace('(', '*');
		}


		while (targetString.indexOf(",") != -1) {
			timelist.push(targetString.substring(targetString.indexOf(",") + 1, targetString.indexOf(",") + 6));
			targetString = targetString.replace(',', '*');
		}

		for (var i = 0; i < hapweeklist.length; i++) {
			for (var j = 0; j < timelist.length; j++) {
				parsedTimeArr.push({
					weekday: hapweeklist[i],
					timeday: timelist[j]
				});
			}
		}


	} else {
		//물결이 없으면 
		var hapday;

		//요일 찾고
		for (var i = 0; i < weekdaylist.length; i++) {
			if (targetString.indexOf(weekdaylist[i]) != -1) {
				hapday = weekdaylist[i];
			}
		}

		if (targetString.indexOf("(") != -1) {
			timelist.push(targetString.substring(targetString.indexOf("(") + 1, targetString.indexOf("(") + 6));
			targetString = targetString.replace('(', '*');
		}


		while (targetString.indexOf(",") != -1) {
			timelist.push(targetString.substring(targetString.indexOf(",") + 1, targetString.indexOf(",") + 6));
			targetString = targetString.replace(',', '*');
		}


		for (var i = 0; i < timelist.length; i++) {
			parsedTimeArr.push({
				weekday: hapday,
				timeday: timelist[i]
			});
		}
	}

}




loadYYMM(init.today);
loadDate(init.today.getDate(), init.today.getDay());

$btnNext.addEventListener('click', () => loadYYMM(init.nextMonth()));
$btnPrev.addEventListener('click', () => loadYYMM(init.prevMonth()));

//날짜 클릭했을 때 이벤트

$calBody.addEventListener('click', (e) => {

	if (e.target.classList.contains('day')) {
		if (init.activeDTag) {
			init.activeDTag.classList.remove('day-active');
		}
		let day = Number(e.target.textContent);
		loadDate(day, e.target.cellIndex);
		e.target.classList.add('day-active');
		init.activeDTag = e.target;
		init.activeDate.setDate(day);
		//reloadTodo();
	}


	var leftseatNum = theaterTotalSeat;
	document.getElementById("showtime").innerHTML = "-" + clickedday + "일 공연시간-<br>";
	document.getElementById("selectTime").innerHTML = "<option value='0' selected='selected'>공연시간선택</option>";
	for (var i = 0; i < parsedTimeArr.length; i++) {
		if (clickedWeek == parsedTimeArr[i].weekday) {
			var clickedDayFormat = clickedMon + " " + clickedday + "일 " + parsedTimeArr[i].timeday;
			if (bookedTimeList.length == 0) {
				leftseatNum = theaterTotalSeat;
			} else {
				for (var j = 0; j < bookedTimeList.length; j++) {
					if (clickedDayFormat == bookedTimeList[j]) {
						leftseatNum = theaterTotalSeat - bookedSeatNumList[j];
					}
				}
			}

			document.getElementById("showtime").innerHTML += parsedTimeArr[i].timeday + " (잔여좌석:" + leftseatNum + ")<br>";
			document.getElementById("selectTime").innerHTML += "<option>" + clickedMon + " " + clickedday + "일 " + parsedTimeArr[i].timeday + "</option>";
		}
	}

	document.getElementById("showtime").innerHTML += "<br><br>";

	parseticketPrice(ticketPrice);
	
});


function res_click(vall) {

	if (document.getElementById("selectTime").value != 0 && document.getElementById("selectPrice").value != 0) {
		document.formData.submit();
	} else {
		alert('가격 & 일정을 선택해주세요.');
	}
}





























