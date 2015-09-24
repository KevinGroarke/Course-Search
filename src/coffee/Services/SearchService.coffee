angular.module 'app'
  .factory 'SearchService', ($http) ->
    _rmpRating = 0
    _hoursWorked = 0
    _subjects = []
    _allExcept = false
    factory = {}

    factory.setSearchParams = (rmpRating, hoursWorked, subjects, allExcept) ->
      _rmpRating = rmpRating
      _hoursWorked = hoursWorked
      _subjects = subjects
      _allExcept = allExcept

    factory.search = ->
      searchPromise = $http.post('/search.php',
        'rmpRating': _rmpRating
        'hoursWorked': _hoursWorked
        'subjects': _subjects
        'allExcept': _allExcept
      )
      return searchPromise

    return factory