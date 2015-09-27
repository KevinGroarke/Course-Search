angular.module 'app'
  .controller 'resultsController', ($scope, $q, $timeout, SearchService) ->
    $scope.courses = []
    $scope.loadingMode = 'indeterminate'
    $scope.query =
      limit: 15
      page: 1
    SearchService.search().then((response) ->
      $scope.loadingMode = ''
      $scope.courses = response.data.map((obj) -> 
        courseObj = JSON.parse(obj.data)
        courseObj.averageCape.studyHours = courseObj.averageCape.studyHours.toFixed(2)
        courseObj.averageCape.averageGradeExpected = courseObj.averageCape.averageGradeExpected.toFixed(2)
        courseObj.averageCape.averageGradeReceived = courseObj.averageCape.averageGradeReceived.toFixed(2)
        courseObj.averageCape.recommendProfessor = courseObj.averageCape.recommendProfessor.toFixed(2)
        courseObj.averageCape.recommendClass = courseObj.averageCape.recommendClass.toFixed(2)

        return courseObj 
      )
    )

    $scope.onpagechange = (page, limit) ->
      deferred = $q.defer()
      $timeout (->
        deferred.resolve()
        return
      ), 2000

      return deferred.promise
