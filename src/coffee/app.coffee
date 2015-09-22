angular.module 'app', ['ui.router', 'ngMaterial', 'ngMessages']
  .config ($stateProvider, $urlRouterProvider, $mdThemingProvider) ->
    $urlRouterProvider.otherwise '/'

    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: './views/main.html'
        controller: 'mainController'
        controllerAs: 'mainCtrl'
      .state 'results',
        url: '/results'
        templateUrl: './views/results.html'
        controller: 'resultsController'
      .state 'partial',
        url: '/partial'
        templateUrl: './views/partial.html'

    $mdThemingProvider.theme('default')
      .primaryPalette('blue')
      .accentPalette('grey')