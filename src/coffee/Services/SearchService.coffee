angular.module 'app'
  .factory 'SearchService', ($http) ->
    _rmpRating = 0
    _hoursWorked = 0
    _subjects = []
    _allExcept = false
    _response = []
    factory = {}

    factory.setSearchParams = (rmpRating, hoursWorked, subjects, allExcept) ->
      _rmpRating = rmpRating
      _hoursWorked = hoursWorked
      _subjects = subjects
      _allExcept = allExcept

    factory.search = ->
      $http.get('/search.php',
        'rmpRating': _rmpRating
        'hoursWorked': _hoursWorked
        'subjects': _subjects
        'allExcept': _allExcept
      ).then((response) -> _response = response)

    factory.getResponse = ->
      return _response

    return factory