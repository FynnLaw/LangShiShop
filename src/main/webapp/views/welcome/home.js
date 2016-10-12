app.controller('homeCtrl', function($scope) {
	$scope.submit = function(){
		console.log($scope.submitContent);
		var getReplyKey = $scope.getReplyKey;
		var content = $scope.submitContent;
		
		var data = {
				getReplyKey : getReplyKey,
				content : content
			};
		console.log(data);
		$.post("transport.do",data,function(result){
			console.log(result);
			console.log("success!");
		},"json");
	}
	
	$scope.clear = function(){
		$scope.submitContent = "";
	}
});
