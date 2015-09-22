angular.module 'app'
  .controller 'resultsController', ($scope, SearchService) ->
    $scope.result = []
    SearchService.search().then(
      $scope.result = SearchService.getResponse()
      $scope.$apply()
    )
