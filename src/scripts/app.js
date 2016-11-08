var storeApp = angular.module('AngularStore', ['ui.router']);
//var storeApp = angular.module('AngularStore', ['ngroute']);

//默认跳转到
storeApp.config(function($urlRouterProvider){
  $urlRouterProvider.otherwise('/login');
});
//url不区分大小写
storeApp.config(function($urlMatcherFactoryProvider){
  $urlMatcherFactoryProvider.caseInsensitive(false);
});

//路由设置
storeApp.config(['$stateProvider',function($stateProvider){
  $stateProvider
  .state('index.welcome',{
    url:'/welcome',
    templateUrl: '/angular/partials/welcome.html',
    controller: welcomeController
  })
    .state('login',{
      url:'/login',
      templateUrl:'/angular/partials/login.html',
      controller: loginController
      //controllerAs:'loginCtrl'
    })
    .state('index',{
      url:'/index',
      templateUrl: '/angular/partials/index.html',
      controller: indexController
      // controllerAs:'indexCtrl'
    })

    .state('index.main',{
      url:'/main',
      templateUrl: '/angular/partials/store.html',
      controller: mainController,
      //controllerAs:'mainCtrl'
    })
}])


// ngroouter
// storeApp.config(['$routeProvider', function($routeProvider) {
//     $routeProvider
//       .when('/login',{
//         templateUrl:'partials/login.html',
//         controller:'loginController'
//       })
//       .when('/store', {
//         templateUrl: 'partials/store.html',
//         controller: 'HomeController'
//       })
//       .otherwise({
//         redirectTo: '/login'
//       })
//   }]);
