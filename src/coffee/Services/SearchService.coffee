angular.module 'app'
  .factory 'SearchService', ->
    _rmpRating = 0
    _hoursWorked = 0
    _subjects = []
    _allExcept = false
    _response = []
    factory = {};

    factory.setSearchParams = (rmpRating, hoursWorked, subjects, allExcept) ->
      _rmpRating = rmpRating
      _hoursWorked = hoursWorked
      _subjects = subjects
      _allExcept = allExcept

    factory.search = ->
      jQuery.load(
        this.href(),
        {
          'rmpRating': _rmpRating
          'hoursWorked': _hoursWorked
          'subjects': _subjects
          'allExcept': _allExcept
        },
        (response, status, jqXHR) ->
          _response = response
      )
    factory.getResponse = ->
      return _response

    return factory