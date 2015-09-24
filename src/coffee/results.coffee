angular.module 'app'
  .controller 'resultsController', ($scope, SearchService) ->
    $scope.result = []
    SearchService.search().then((response) ->
      $scope.result = response
    )
