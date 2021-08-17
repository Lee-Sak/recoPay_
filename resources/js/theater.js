/**
 * 
 */

var api_key = "b9540b392fb0493c963e4b00ad293087";
var eddate = getFormatDate(new Date());
var lat, lng, id;

$(document).ready( function() {
	getPerformanceXML();
});

function getPerformanceXML() {
	
	// prfstate=02  -> 공연중 추가해야댐 
	var url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=" + api_key +
	"&stdate=20160601&eddate="+ eddate +"&cpage=1&rows=900&prfplccd=" + id + "&prfstate=02";
	console.log(url);
	
	
	$.ajax({ 
		url: url,
		type: "GET",
		cache: false,
		success: function(data, status, xhr) {
			if (status == "success") {
				parsePerformanceXML(data);
			} else {
				alert('openAPI loading 실패 - 문의해주세요.');
			}
		}
	});
}

function parsePerformanceXML(xmlDOM) {
	var img_url = "";
	var img = "";

	$(xmlDOM).find("db").each(function() {
		if(typeof $(this).find("poster") == undefined) {
			document.getElementById("poster_img").innerHTML = "<p style='font-weight:bold; font-size: large;'> 상영중인 작품이 없습니다. </p>";
		} else {
			img_url = $(this).find("poster").text();
			img += "<img src='" + img_url + "' style='width: 310px; height: 500px; max-height: 600px; margin-right:30px; margin-bottom:35px'>";
			document.getElementById("poster_img").innerHTML = img;
			img_url = "";
		}
	});
}


// google map 초기화
function initMap() {
	var mapProp = {
		center: new google.maps.LatLng(37.499558, 127.035861),
		zoom: 17
	}
	var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
	setMap(lat, lng);
}


function setMap(lat, lng) {

	var mapProp = {
		center: new google.maps.LatLng(lat, lng),
		zoom: 16
	}
	var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(lat, lng),
		map: map,
		animation: google.maps.Animation.BOUNCE
	});
}

function getFormatDate(date) {
	var year = date.getFullYear();
	var month = (1 + date.getMonth());
	month = month >= 10 ? month : '0' + month;
	var day = date.getDate();
	day = day >= 10 ? day : '0' + day;
	return year + '' + month + '' + day;
}

