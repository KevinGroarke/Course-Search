angular.module 'app'
  .controller 'resultsController', ($scope, SearchService) ->
    $scope.result = []
    SearchService.query().then(
      $scope.result = SearchService.getResponse()
    )
