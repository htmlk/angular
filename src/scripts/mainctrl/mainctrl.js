
function mainController($scope,$http,$state,$stateParams,$filter){
 readydata();
 function readydata(){
     $scope.goodtitle="123";
     $scope.goodshowhide=false;
     $scope.goodId="";
     $scope.goodName="";
     $scope.goodCode="";
     $scope.goodOldprice="";
     $scope.goodNewprice="";
     $scope.goodType="";
     $scope.goodSpecId="";
     $scope.goodPic="";
   }
  $scope.pageIndex=1;
  //全选
  $scope.checkbool=false;
  $scope.checkAll=false;
  $scope.checkclick=function(){
    console.log($scope.checkAll);
    if($scope.checkAll==true){
      $scope.checkbool=true;
    }else{
      $scope.checkbool=false;
    }
  }
  //全选删除
  $scope.deleteAll=function(){
    console.log($scope.list);
  }
  $scope.checkinput=function(event,id){
    console.log(event);
    console.log(id);
  }
  // console.log($route)
  //ajax调用
  $http({
    url: 'http://www.htmlk.cn:3000/goodAllyg'
  })
  .then(function(res){
    $scope.listAll= res.data;
    pagelist(res.data);
  }, function(){

  })
  //分页数据
  var  page=10; //每页的数量
  function pagelist(lists){
    //分页总数
      $scope.pagesum=[];
      var pagelength=Math.ceil(lists.length/page);
      for (var i = 0; i <pagelength; i++) {
          $scope.pagesum.push(i+1);
      }
    //分页数据
    pageTo(lists);
    //每页点击
    $scope.pageindex=function(index) {
      $scope.pageIndex=index;
      pageTo(lists);
    }
    $scope.pagePrev=function(){
      if($scope.pageIndex>1){
        $scope.pageIndex--;
        pageTo(lists);
      }
    }
    $scope.pageNext=function(){
      if($scope.pageIndex<pagelength){
        $scope.pageIndex++;
        pageTo(lists);
      }
    }

  }
  function pageTo(lists){
      $scope.list=lists.slice((($scope.pageIndex)-1)*page,($scope.pageIndex)*page)
  }

  //生成32位id存入数据库
  function generateUUID() {
    var d = new Date().getTime();
    var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        var r = (d + Math.random() * 16) % 16 | 0;
        d = Math.floor(d / 16);
        return (c == 'x' ? r : (r & 0x3 | 0x8)).toString(16);
    });
    return uuid;
  }
  //console.log(generateUUID());
  //添加数据操作
  $scope.addgoodbtn=function(){
    readydata();
    $scope.goodtitle="添加商品";
    $scope.goodshowhide=false;
  }
  $scope.addgood=function(event){
    $http({
      url:'http://www.htmlk.cn:3000/goodAddyg?CommodityId='+generateUUID()+'&CommodityName='+$scope.goodName+'&CommodityCode='+$scope.goodCode+'&OriginalPrice='+$scope.goodOldprice+'&CommodityPrice='+$scope.goodNewprice+'&Spec='+$scope.goodType+'&SpecId='+$scope.goodSpecId+'&SmallPic=http://img11.yiguoimg.com/e/items/2016/160728/9288696043184380_300.jpg'
    }).then(function(res){
      $state.reload();
    })
  }
  //删除数据操作
  function deleteid(id){
    $http({
      url:'http://www.htmlk.cn:3000/gooddeleteyg?CommodityId='+id
    }).then(function(res){
      $state.reload();
      console.log(res);
    })
  }

  $scope.deletegood=function(event){
    deleteid(event.target.dataset.id);
  }

  //修改商品
  $scope.changegood=function(event){
    $scope.goodtitle="修改商品";
    $scope.goodshowhide=true;
    var goodid=event.target.dataset.id
    $http({
      url:'http://www.htmlk.cn:3000/goodByIdyg?CommodityId='+goodid
    }).then(function(res){
      $scope.goodId=res.data[0].CommodityId;
      $scope.goodName=res.data[0].CommodityName;
      $scope.goodCode=res.data[0].CommodityCode;
      $scope.goodOldprice=res.data[0].OriginalPrice;
      $scope.goodNewprice=res.data[0].CommodityPrice;
      $scope.goodType=res.data[0].Spec;
      $scope.goodSpecId=res.data[0].SpecId;
      $scope.goodPic=res.data[0].SmallPic;
    })
  }
  $scope.changegoodbyid=function(event){
    $http({
      url:'http://www.htmlk.cn:3000/goodupdateyg?CommodityName='+$scope.goodName+'&CommodityCode='+$scope.goodCode+'&OriginalPrice='+$scope.goodOldprice+'&CommodityPrice='+$scope.goodNewprice+'&Spec='+$scope.goodType+'&SpecId='+$scope.goodSpecId+'&SmallPic=http://img11.yiguoimg.com/e/items/2016/160728/9288696043184380_300.jpg'+'&CommodityId='+$scope.goodId
    }).then(function(res){
      console.log(res);
      $state.reload();
    })
  }
  //搜索过滤

  $scope.filterchange=function(event){
    console.log($scope.filtervalue);
    if($scope.filtervalue==''){
      $state.reload();
    }else{
      let newlist=$filter('filter')(  $scope.listAll,$scope.filtervalue);
      pageTo(newlist)
    }


  }

}
