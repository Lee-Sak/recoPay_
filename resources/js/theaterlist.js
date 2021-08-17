var viewrow = 20;
var resultNo = 0;
var locationName = [];
var theaterName = [];
var id = [];
var presearchedArr = [];
var onPerformanceArr = [];
var onPerformanceTheaterNameArr = [];
var isSearch = 0;
var selectOption = "";
var api_key = "b9540b392fb0493c963e4b00ad293087";
var eddate = getFormatDate(new Date());

$(document).ready(function() {

	loadPage();
	loadxml();

	$("#but").click(function() {
		if (isSearch == 0) {
			viewrow += 10;
			loadPage();
		}
	});

	$("#searchbut").click(function() {
		isSearch = 1;
		hideAllPage();
		presearchedArr = [];
		selectOption = document.getElementById("selectOption");
		var tbIndex = document.getElementById("selectOption").options.selectedIndex;
		selectOption.options[tbIndex].value
		
		if($(searchName).val() == "" ) {
			presearchedArr = [];
		}

		if (selectOption.options[tbIndex].value == "위치") {
			for (var i = 0; i < locationName.length; i++) {
				if (locationName[i].indexOf($(searchName).val()) != -1) {
					$("#a" + id[i].trim()).show();
					presearchedArr.push(id[i]);
				}
			}

		} else if (selectOption.options[tbIndex].value == "극장명") {
			for (var i = 0; i < locationName.length; i++) {
				if (theaterName[i].indexOf($(searchName).val()) != -1) {
					$("#a" + id[i].trim()).show();
					presearchedArr.push(id[i]);
				}
			}
		}

		resultNo = presearchedArr.length;
		alert("검색 결과 : " + resultNo + "개");
	});

	$("input:radio[name=radiobut]").click(function() {
		if ($("input:radio[name=radiobut]:checked").val() == "ongoing") {
			//상영중으로 check 될 ㅅ ㅣ
			hideAllPage();

			electOption = document.getElementById("selectOption");
			var tbIndex = document.getElementById("selectOption").options.selectedIndex;
			
			var totalcnt = 0;
			
			if (presearchedArr.length == 0 ) {
				for(var i=0;i<onPerformanceArr.length; i++) {
					$("#a" + onPerformanceArr[i].trim()).show();
				}
			}
			
			if (selectOption.options[tbIndex].value == "극장명") {
				//극장명로 되어 있으면 
				//alert(document.getElementById('td1').childNodes[0].nodeValue);
				if (presearchedArr.length > 0) {
					for (var i = 0; i < presearchedArr.length; i++) {
						for (var j = 0; j < onPerformanceArr.length; j++) {
							if (theaterName[parseInt(presearchedArr[i])].indexOf(theaterName[parseInt(onPerformanceArr[j])]) != -1) {
								$("#a" + presearchedArr[i].trim()).show();
								totalcnt++;
							}
						}
					}
				}

			} else {
				// 위치으로 되어 있으면 
				if (presearchedArr.length > 0) {
					for (var i = 0; i < presearchedArr.length; i++) {
						for (var j = 0; j < onPerformanceTheaterNameArr.length; j++) {
							if (onPerformanceTheaterNameArr[j] == theaterName[parseInt(presearchedArr[i])]) {
								$("#a" + presearchedArr[i].trim()).show();
							}
						}
					}
				}
			}

		} else {
			// 모두에 check

			hideAllPage();
			if (resultNo != 0 && resultNo != id.length) {
				// 검색 결과가 존재하면,
				for (var i = 0; i < presearchedArr.length; i++) {
					$("#a" + presearchedArr[i].trim()).show();
				}
			}

			if (resultNo == 0 || resultNo == id.length) {
				// 검색 결과가 존재하면 모두 출력 
				loadPage();
			}

		}
	})
});

function loadPage() {
	for (var i = 0; i < viewrow; i++) {
		k = "#a" + i;
		$(k).show();
		resultNo = id.length;
	}
}

function hideAllPage() {
	for (var i = 0; i < locationName.length; i++) {
		k = "#a" + i;
		$(k).hide();
	}
}

function getFormatDate(date) {
	var year = date.getFullYear();
	var month = (1 + date.getMonth());
	month = month >= 10 ? month : '0' + month;
	var day = date.getDate();
	day = day >= 10 ? day : '0' + day;
	return year + '' + month + '' + day;
}

function parsePerformanceXML(xmlDOM) {
	$(xmlDOM).find("db").each(function() {
		// 극장이름을 뽑아서 setOnPerformanceArr 함수에 적용 
		setOnPerformanceArr($(this).find("fcltynm").text());
	});

	for (var i = 0; i < onPerformanceArr.length; i++) {
		$("#a" + onPerformanceArr[i].trim()).show();
	}

}

function loadxml() {
	// prfstate=02  -> 공연중 
	var url = "http://www.kopis.or.kr/openApi/restful/pblprfr?service=" + api_key +
		"&stdate=20160601&eddate=" + eddate + "&cpage=1&rows=400&prfstate=02";
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

function setOnPerformanceArr(theaterNamee) {

	for (var i = 0; i < theaterName.length; i++) {
		if (theaterNamee.trim() == theaterName[i].trim()) {
			onPerformanceArr.push(id[i]);
			onPerformanceTheaterNameArr.push(theaterName[i].trim())
		}
	}

}
