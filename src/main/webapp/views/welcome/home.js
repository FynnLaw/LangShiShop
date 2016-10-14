app.registerCtrl('homeCtrl', function($scope,$location) {
	$scope.submit = function(){
		
		var pub_key = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDChdSw4i/6IVAHWe7LOZyebRBmjDuybNrcCDYRf5aGzzHPxRuNAuWLJnL2AX9cDd/x7Ot8WoeqCuMH3/YtLpEdlP52uOSTli2b34cN0Ae8ecgvn+5CUsxYW1AWb/64wDF61AVYQsYsO3esPO70F5pQscrdlWeSAJcJL1einB9x4QIDAQAB";
		
		var encrypt = new JSEncrypt();
        encrypt.setPublicKey(pub_key);
        encrypt.setPri(pub_key);
        var data = encrypt.encrypt("123456789");
        console.log(data);
        var text = encrypt.decrypt(data);
        console.log(text);
		
		$scope.clearError();
		
		if($scope.getReplyKey == "" || $scope.getReplyKey == undefined){
			$scope.showKeyError = true;
			return;
		}
		
		if($scope.submitContent == "" || $scope.submitContent == undefined){
			$scope.showContentError = true;
			$scope.errorMessage = "嗯？空白，你就是那张有无限可能的白纸吗？哈哈";
			return;
		}
		
		//md5加密
		var getReplyKey = hex_md5($scope.getReplyKey);
		
		var key1 = getReplyKey.substring(0,8);
		var key2 = getReplyKey.substring(8,16);
		var key3 = getReplyKey.substring(16,32);
		
		//des加密
		var content = strEnc($scope.submitContent,key1,key2,key3);
		
		var data = {
				getReplyKey : getReplyKey,
				content : content
			};
		
		$.post("transport.do",data,function(result){
			if(result.code == "0"){
//				$scope.submitContent = "解忧杂货店已经收到你的来信，请明晚来取信!";
				$location.path("/success");
			}else{
				$scope.showContentError = true;
				$scope.errorMessage = result.message;
			}
			$scope.$apply();
			
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
