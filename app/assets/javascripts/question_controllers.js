var questionsControllers = angular.module('questionControllers', ['ngResource']);

questionsControllers.controller('questionListCtrl', ['$scope', 'Question',
  function($scope, Question) {
    $scope.newQuestion = {};
    $scope.questions = Question.query();
    
    $scope.createQuestion = function() {
      var question = new Question();
      $.extend(question, $scope.newQuestion);

      question.$save(function() {
        $scope.questions.push(question);
        $scope.newQuestion = {};
      });
    };
    
    $scope.toggleSelect = function(question) {
      question.selected = !(question.selected);
      question.$update(function() {
      })
    };
  }]);
  
var Question = questionsControllers.factory("Question", ["$resource",
  function($resource) {
    return $resource(
      '/api/questions/:id',
      {id: "@id"},
      {update: {method: "PUT"}}
    );
}]);