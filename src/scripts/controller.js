
//控制器
function indexController($scope,$state,$stateParams){
  if(sessionStorage.getItem("userId")==null){
     $state.go('login');
  }else{
     $scope.userId=sessionStorage.getItem("userId");
     $scope.quituser=function($event){
     sessionStorage.clear();
     $state.go('login');
   }
  }
}
