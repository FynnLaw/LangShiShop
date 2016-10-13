app.controller('homeCtrl', function($scope) {
	$scope.submit = function(){
		
		$scope.clearError();
		
		var getReplyKey = $scope.getReplyKey;
		var content = $scope.submitContent;
		
		if(getReplyKey == "" || getReplyKey == undefined){
			$scope.showKeyError = true;
			return;
		}
		
		if(content == "" || content == undefined){
			$scope.showContentError = true;
			return;
		}
		
		var data = {
				getReplyKey : getReplyKey,
				content : content
			};
		$.post("transport.do",data,function(result){
			console.log(result);
			console.log("success!");
			$scope.submitContent = "success!";
		},"json");
	}
	
	$scope.clear = function(){
		$scope.submitContent = "";
	}
	
	$scope.clearError = function(){
		$scope.showKeyError = false;
		$scope.showContentError = false;
	}
});
