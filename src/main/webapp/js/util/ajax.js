$.ajax({
	url : "transport.do",
	context : document.body,
	dataType : json,
	success : function() {
		$(this).addClass("done");
	},
	error : function(){
		
	},
	timeout : 30000
});