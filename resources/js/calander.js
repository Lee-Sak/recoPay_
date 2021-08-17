
var api_key = "b9540b392fb0493c963e4b00ad293087";
var startdate, enddate,prftitle;
var schedule = [];
var scheduleId = 0;
var colorlist = ['#257e4a','#ff94b3','#d8cd34','#5c43f3','#e62938'];


$(document).ready(function() {
	
		loadXML();
		
});

function setCalander(schedule) {
	var calendarEl = document.getElementById('calendar');
	var calendar = new FullCalendar.Calendar(calendarEl, {
		plugins: ['interaction', 'dayGrid'],
		header: {
			left: 'prevYear,prev,next,nextYear today',
			center: 'title',
			right: 'dayGridMonth,dayGridWeek,dayGridDay'
		},
		defaultDate: '2021-04-12',
		navLinks: true, // can click day/week names to navigate views
		editable: false,
		eventLimit: true, // allow "more" link when too many events
		events: schedule
	});

	calendar.render();
}

function loadXML(schedule) {
	
	var url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=" + api_key +
	"&stdate=20210301&eddate=20120331&cpage=1&rows=3&prfstate=02";
	console.log(url);
	
	$.ajax({
		url: url,
		type: "GET",
		cache: false,
		success: function(data, status, xhr) {
			if (status == "success") {
				parseXML(data);
			} else {
				alert('openAPI loading 실패 - 문의해주세요.');
			}
		}
	});
}


function parseXML(xmlDOM) {
	$(xmlDOM).find("db").each(function() {
		startdate = changeDateFormation($(this).find("prfpdfrom").text());
		enddate = changeDateFormation($(this).find("prfpdto").text());
		prftitle = $(this).find("prfnm").text();
		setSchedule(prftitle,startdate,enddate);
	});
	setCalander(schedule);
}

function changeDateFormation(date) {
	return date.replaceAll('.','-');
}

function setSchedule(title,sdate,edate) {
	schedule.push(
		{
			groupId: scheduleId,
			title: title,
			start: sdate,
			end: edate,
			color: colorlist[scheduleId]
		}
	);
	scheduleId += 1;
}



