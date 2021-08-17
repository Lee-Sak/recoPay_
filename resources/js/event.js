/**
 * 
 */
 
var finishedIdArr = []; 
var ongoingIdArr = [];

$(document).ready(function() {
	
});


 $('#myModal').on('shown.bs.modal', function() {
	$('#myInput').trigger('focus')
})

function totalLoadFunction() {
	for(var i = 0; i < (finishedIdArr.length + ongoingIdArr.length); i ++) {
		k = "#n" + i;
		$(k).show();
	}
}

function ongoingLoadFunction() {
	hideAll();
	for(var i = ongoingIdArr.length; i > 0; i--) {
		k = "#" + ongoingIdArr[i];
		$(k).show();
	}
}

function finishLoadFunction() {
	hideAll();
	for(var i = 0; i < finishedIdArr.length; i ++) {
		k = "#" + finishedIdArr[i];
		$(k).show();
	}
}

function hideAll() {
	for(var i = 0; i < (finishedIdArr.length + ongoingIdArr.length); i ++) {
		k = "#n" + i;
		$(k).hide();
	}
}
	