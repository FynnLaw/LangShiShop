var app = angular.module('myApp', ['ngRoute']);
app.controller('myCtrl', function($scope,$rootScope) {
	console.log($rootScope);
});

app.config(['$routeProvider',function($routeProvider) {
  $routeProvider.when('/', {
      templateUrl: 'views/welcome/home.html'
    }).when('/getReply', {
	      templateUrl: 'views/getReply/getReply.html'
	    }).when('/advise', {
		      templateUrl: 'views/advise/advise.html'
		    }).otherwise({
	  redirectTo: '/'
	});
}])
