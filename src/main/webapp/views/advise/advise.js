app.controller('adviseCtrl', function($scope) {
	$scope.submit = function(){
		var content = $scope.submitContent;
		var data = {
				content : content
			};
		$.post("advise.do",data,function(result){
			console.log(result);
			console.log("success!");
		},"json");
	}
	
	$scope.clear = function(){
		$scope.submitContent = "";
	}
});
