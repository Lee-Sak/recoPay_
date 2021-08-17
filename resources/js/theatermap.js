/**
API 홈페이지에서 내껄로 로그인해서 IP등록해야 api 이용 가능
 */



var api_key = "qFd4EJ0onv0YbXergB2gvhL+Dtn+uK1XGsAO6bzfhfE";
var mapObject = "";
var currentLocationX, currentLocationY;
var endLocationX, endLocationY;
var map;
var pathArr = [];
var distance = [];
var mapObj = [];
var url; 
var graph_url; 

$(document).ready(function() {

});

function loadXML() {
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
	
	$(xmlDOM).find("info").each(function() {
		mapObj.push($(this).find("mapObj").text());
		distance.push($(this).find("trafficDistance").text());
		// 교통 정보 추가 
		document.getElementById("totalDistance").innerHTML = '총 거리 : ' + $(this).find("totalDistance").text() + 'm';
		document.getElementById("payment").innerHTML = '교통 요금 : ' + $(this).find("payment").text() + '원';
		document.getElementById("totalTime").innerHTML = '소요 시간 : ' + $(this).find("totalTime").text() + '분';
		document.getElementById("firstStartStation").innerHTML = '출발역 : ' + $(this).find("firstStartStation").text();
		document.getElementById("lastEndStation").innerHTML = '도착역 : ' + $(this).find("lastEndStation").text();
		document.getElementById("totalStationCount").innerHTML = '몇 정거장? : ' + $(this).find("totalStationCount").text() + ' 정거장';
		
		
	});
	
	var min =100000;
	
	for(var i =0; i < distance.length; i++) {
		if(min > distance[i]) {
			min = distance[i];
		}
	}
	
	
	
	for(var i =0; i < distance.length; i++) {
		if(min == distance[i]) {
			graph_url = "https://api.odsay.com/v1/api/loadLane?apiKey=" + encodeURIComponent(api_key) + "&output=xml&mapObject=126:37@" + mapObj[i];
			loadGraphXML();
			break;
		}
	}
}

function loadGraphXML() {
		console.log(graph_url);
		$.ajax({
		url: graph_url,
		type: "GET",
		cache: false,
		success: function(data, status, xhr) {
			if (status == "success") {
				parseGraphXML(data);
			} else {
				alert('openAPI loading 실패 - 문의해주세요.');
			}
		}
	});
}

function parseGraphXML(xmlDOM) {
	var lanecnt = 1;
	$(xmlDOM).find("graphPos").each(function() {
		setPath($(this).find("x").text(),$(this).find("y").text());
	});
	drawPathOnMap(lanecnt);
}



// google map 초기화
function initMap() {
	
	navigator.geolocation.getCurrentPosition((position) => {
		currentLocationX = position.coords.latitude;
		currentLocationY = position.coords.longitude;
		
		var mapProp = {
			center: new google.maps.LatLng((currentLocationX+endLocationY)/2, (currentLocationY+endLocationX)/2),
			zoom: 12
		}
	
		map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
		
		
  		setMarker(currentLocationX, currentLocationY,1);
		setMarker(endLocationY, endLocationX,0);
		url = "https://api.odsay.com/v1/api/searchPubTransPathT?apiKey=" + encodeURIComponent(api_key) + "&output=xml&lang=0&SX=" + currentLocationY + "&SY="+ currentLocationX + "&EX=" + endLocationX + "&EY=" + endLocationY;
		console.log(url);
		loadXML();
		

		
		console.log("position.coords.accuracy : " + position.coords.accuracy);
	});
	
}



function setMarker(lat, lng,isAnimate) {
	if(isAnimate == 1) {
		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(lat, lng),
			map: map,
			animation: google.maps.Animation.BOUNCE
		});	
	} else {
		var marker = new google.maps.Marker({
			position: new google.maps.LatLng(lat, lng),
			map: map,
		});	
	}

	
}

function setPath(x,y) {
	var xx = parseFloat(x) + 126;
	var yy = parseFloat(y) + 37;
	
	pathArr.push({lat: yy, lng: xx});
}

function drawPathOnMap(lanecnt) {
	
	var linecolor = "#FF0000";
	if(lanecnt == 2) {
		linecolor = "#00FF00";
	}
	
	
	var drawPath = new google.maps.Polyline({
	    path: pathArr,
	    strokeColor: linecolor,
	    strokeOpacity: 1.0,
	    strokeWeight: 3,
	});
	
	drawPath.setMap(map);
}





