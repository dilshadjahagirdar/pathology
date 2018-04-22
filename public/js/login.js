angular.module('pathology', []).controller('loginCtrl', function($scope,$http) {

    console.log("In Controller")

    $scope.login = function() {
        $http.post('/authlogin',$scope.user).then(function (response) {
            window.location.assign(response.data.redirect_to)
        });
    }

    $scope.createUser = function () {
        $http.post('/new_user',$scope.user).then(function (response) {
            window.location.assign(response.data.redirect_to)
        });
    }
});