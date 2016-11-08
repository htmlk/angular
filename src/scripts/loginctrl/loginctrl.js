function loginController($scope,$state,$http){

  $scope.user='';
  $scope.pwd='';
  $scope.code='';
  $scope.visible=true;
  $scope.checklogin=function(){
    $http({
      url:'http://www.htmlk.cn:3000/userAllyg'
    }).then(function(res){
      for(var i=0;i<res.data.length;i++){
          if(res.data[i].name==$scope.user&&res.data[i].pwd==$scope.pwd){
            console.log(0);
            $state.go('index.welcome',{userid:123});//路由跳转
            sessionStorage.setItem('userId',$scope.user);
          }else{
              $scope.visible=false;
          }
      }
    })
  }
  $scope.checkuserpwd=function(){
    $scope.visible=true;
  }
}
