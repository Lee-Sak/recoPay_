var mtid = "";
var lat = "";
var lng = "";
// 페이지 최초 로딩 
$(document).ready(function() {
	loadPage(pfid);
	
    $("#facbutton").click(function(){
    	$("#facbutton").css('background-color','black');
    	$("#facbutton").css('color','white');
    
		$("#introbutton").css('background-color','white');
    	$("#introbutton").css('color','black');
		
		$("#introimg").hide();
		facPage(mtid);
		
		
		$("#faclity").show();
		
    });
    
	$("#introbutton").click(function(){
    	$("#introbutton").css('background-color','black');
    	$("#introbutton").css('color','white');
    
		$("#facbutton").css('background-color','white');
    	$("#facbutton").css('color','black');

		$("#introimg").show();
		$("#faclity").hide();
    });
	
	
});

function loadPage(pid) {
	$.ajax({
        url : "http://www.kopis.or.kr/openApi/restful/pblprfr/" + pid
			  + "?service=de93ee9825c24143a98506d9e7f616bd",
        type : "GET",
        cache : false,
        success : function(data, status){
            if(status == "success"){
				showDetail(data);
            }
        }
    });  // end $.ajax()
}

function showDetail(xmlDOM) {
	
	var table = "";
	
	table += "<tr><th>공연기간</th><td class='td0'>"
	table += $(xmlDOM).find("prfpdfrom").text() + " ~ " + $(xmlDOM).find("prfpdto").text() + "</td>";
	
	table += "<tr><th>공연장소</th><td class='td0'>"
	table += $(xmlDOM).find("fcltynm").text()
	
	table += "<tr><th>공연시간</th><td class='td0'>"
	table += $(xmlDOM).find("dtguidance").text()
	
	table += "<tr><th>관람연령</th><td class='td0'>"
	table += $(xmlDOM).find("prfage").text()
	
	table += "<tr><th>티켓가격</th><td class='td0'>"
	table += $(xmlDOM).find("pcseguidance").text()
	
	table += "<tr><th>출연진</th><td class='td0'>"
	table += $(xmlDOM).find("prfcast").text()
	
	table += "<tr><th>제작진</th><td class='td0'>"
	table += $(xmlDOM).find("prfcrew").text()
	
	table += "<tr><th>기획·제작</th><td class='td0'>"
	table += $(xmlDOM).find("entrpsnm").text()
	
	$(xmlDOM).find("styurl").each(function() {
		t = "<img src='" + $(this).text() + "'>";
		$("#introimg").html($("#introimg").html() + t);
	})
	mtid = $(xmlDOM).find("mt10id").text();
		
	$("#demoXML").html(table);
}

function facPage(mt) {
	$.ajax({
        url : "http://www.kopis.or.kr/openApi/restful/prfplc/" + mt
			  + "?service=de93ee9825c24143a98506d9e7f616bd",
        type : "GET",
        cache : false,
        success : function(data, status){
            if(status == "success"){
				facDetail(data);
            }
        }
    });  // end $.ajax()
}

function facDetail(xmlDOM) {
	//var table = "";	
	//alert($(xmlDOM).find("fcltynm").text());
	$('#facname').html($(xmlDOM).find("fcltynm").text());
	
	$("#theater_num").html(
		"공연장 수 : " + $(xmlDOM).find("mt13cnt").text());
	$("#theater_feature").html(
		"시설 특성 : " + $(xmlDOM).find("fcltychartr").text());
	$("#theater_openyear").html(
		"개관 연도 : " + $(xmlDOM).find("opende").text());
	$("#theater_seat_num").html(
		"객석 수 : " + $(xmlDOM).find("seatscale").text());
	$("#theater_phone").html(
		"전화번호 : " + $(xmlDOM).find("telno").text());
	$("#theater_addr").html(
		"주소 : " + $(xmlDOM).find("adres").text());
	lat = $(xmlDOM).find("la").text();
	lng = $(xmlDOM).find("lo").text();
	setMap(lat,lng);
	
}

// google map 초기화
function initMap() {
	//alert(lat);
	var mapProp = {
		center: new google.maps.LatLng(37.499558, 127.035861),
		zoom: 17
	}
	var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
	

}

// google map 초기화
function setMap(lat ,lng) {
	//alert(lat);
	var mapProp = {
		center: new google.maps.LatLng(lat, lng),
		zoom: 17
	}
	var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
	
	var marker = new google.maps.Marker({
		position: new google.maps.LatLng(lat, lng),
		map: map,
		animation: google.maps.Animation.BOUNCE
	});
}
