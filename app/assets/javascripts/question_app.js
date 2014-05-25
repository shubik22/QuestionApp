var questionApp = angular.module('questionApp', [
  'questionControllers',
  'ngResource',
  'ngRoute'
]);


questionApp.config(["$httpProvider", function($httpProvider) {
  authToken = $("meta[name=\"csrf-token\"]").attr("content");
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken;  
}]);

// questionApp.config(['$routeProvider',
//   function($routeProvider) {
//     $routeProvider.when()
// }])