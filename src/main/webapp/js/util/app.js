/* Module Creation */
var app = angular.module('myApp', ['ngRoute']);

app.config(['$routeProvider', '$controllerProvider', function($routeProvider, $controllerProvider){

/*Creating a more synthesized form of service of $ controllerProvider.register*/
app.registerCtrl = $controllerProvider.register;

var pathName=window.document.location.pathname;
var projectName = pathName.replace(/\//g,"");

function loadScript(path) {
  var result = $.Deferred(),
  script = document.createElement("script");
  script.async = "async";
  script.type = "text/javascript";
  script.src = path;
  script.onload = script.onreadystatechange = function (_, isAbort) {
      if (!script.readyState || /loaded|complete/.test(script.readyState)) {
         if (isAbort)
             result.reject();
         else
            result.resolve();
    }
  };
  script.onerror = function () { result.reject(); };
  document.querySelector("head").appendChild(script);
  return result.promise();
}

function loader(arrayName){

    return {
      load: function($q){
                var deferred = $q.defer(),
                map = arrayName.map(function(name) {
                    return loadScript('/' + projectName + '/'+name+".js");
                });

                $q.all(map).then(function(r){
                    deferred.resolve();
                });

                return deferred.promise;
        }
    };
}

$routeProvider  
    .when('/', {
        templateUrl: 'views/welcome/home.html',
        controller: 'homeCtrl',
        resolve: loader(['views/welcome/home'])
    })
    .when('/getReply',{
        templateUrl: 'views/getReply/getReply.html',
        controller: 'getReplyCtrl',
        resolve: loader(['views/getReply/getReply'])
    })
    .when('/advise',{
    	templateUrl: 'views/advise/advise.html',
    	controller: 'adviseCtrl',
    	resolve: loader(['views/advise/advise'])
    })
    .when('/success',{
    	templateUrl: 'views/util/success.html',
    	controller: 'successCtrl',
    	resolve: loader(['views/util/success'])
    })
    .otherwise({
        redirectTo: '/'
    });

}]);