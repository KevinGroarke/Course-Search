angular.module 'app'
  .controller 'resultsController', ($scope, SearchService) ->
    $scope.courses = []
    $scope.loadingMode = 'indeterminate'
    SearchService.search().then((response) ->
      $scope.loadingMode = ''
      $scope.courses = response.data.map((obj) -> 
        return JSON.parse(obj.data)  
      )
    )
