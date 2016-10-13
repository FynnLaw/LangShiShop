app.controller('getReplyCtrl', function($scope) {
	$scope.getMessage = function(){
		$("#fat-btn").button('loading');
		var getReplyKey = $scope.getReplyKey;
		
		var data = {
				getReplyKey : getReplyKey
			};
		$.post("getReply.do",data,function(result){
			console.log(result.reply);
			$scope.result = result;
			$scope.$apply();
			console.log($scope.result);
			$("#fat-btn").button('reset');
		},"json");
	}
	
});
