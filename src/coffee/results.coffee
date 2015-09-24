angular.module 'app'
  .controller 'resultsController', ($scope, SearchService) ->
    $scope.courses = []
    $scope.loadingMode = 'indeterminate'
    SearchService.search().then((response) ->
      $scope.loadingMode = ''
      $scope.courses = JSON.parse(response).data
    )
