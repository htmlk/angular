//自定义模态框指令
storeApp.directive('bootmodel', function(){
    return {
      restrict: 'EAC',
      templateUrl:'partials/model.html',
      replace: true
    }
  });
