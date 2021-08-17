var viewrow = 2;
var viewnum = 6;
// 페이지 최초 로딩 
$(document).ready(function() {
	loadPage();
	
    $("#but").click(function(){
		viewrow = viewrow + 2;
		loadPage();
    });
    
    $("#prfser").click(function(){
    	prfname = $("#prfn").val();
    	$.ajax({
	        url : "/recopay" + "/perform/prfrun" + "/" + prfname,
	        type : "GET",
	        cache : false,
	        success : function(data, status){
	            if(status == "success"){
	
	                updatePerf(data)
	                
	            }
        	}
    	});  // end $.ajax()
    });
});
	
function updatePerf(jsonObj) {
	var items = jsonObj.data; // 배열
	var count = jsonObj.count; // 10
	var result = "";
	
	for(var i = 0; i < count; i++){
		result += "<div class='col-12 col-sm-6 col-md-4 col-lg-2 single-album'>"
        result += "<div class='single-album-area wow fadeInUp' data-wow-delay='100ms'>"
        result += "<div class='album-thumb'>";
                        
        result += "<a href='/recopay/perform/intro/" + items[i].uid + "'>";
        result += "<img src='" + items[i].poster + "'></a></div>"
        result += "<div class='album-info'>" + "<a href='#'>" + "<h5>" + items[i].name +"</h5></a>"    
                            
        result += "<a href='/recopay/theater/view/" + items[i].tuid +"'>"
        result += "<p>"+ items[i].fcltynm +"</p></a></div></div></div>"
    }
    
    $("#ah1").html(result);  // 업데이트
    $("#ah").hide();
   	$("#ah1").show();
}

function loadPage() {
	$("#ah").show();
	$("#ah1").hide();
	for(var i=0; i<viewrow*viewnum; i++) {
    	k = "#a" + i;
		$(k).show();
	}
}