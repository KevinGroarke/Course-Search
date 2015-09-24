angular.module 'app'
  .controller 'resultsController', ($scope, $q, $timeout, SearchService) ->
    $scope.courses = []
    $scope.loadingMode = 'indeterminate'
    $scope.query =
      limit: 5
      page: 1
    SearchService.search().then((response) ->
      $scope.loadingMode = ''
      $scope.courses = response.data.map((obj) -> 
        return JSON.parse(obj.data)  
      )
    )

    $scope.onpagechange = (page, limit) ->
      deferred = $q.defer()
      $timeout (->
        deferred.resolve()
        return
      ), 2000

      return deferred.promise
