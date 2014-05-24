var questionsControllers = angular.module('questionControllers', ['ngResource']);

questionsControllers.controller('questionListCtrl', ['$scope', 'questions',
  function($scope, questions) {
    $scope.questions = questions.query(),
    
    $scope.createQuestion = function() {
      $scope.questions.push({
        title: $scope.newQuestion,
        answer: "No idea"
      });
      $scope.newQuestion = "";
    }
  }]);
  
var questions = questionsControllers.factory("questions", ["$resource", function($resource) {
  return $resource('/api/questions');
}]);