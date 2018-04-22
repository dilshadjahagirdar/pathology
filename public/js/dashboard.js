angular.module('pathology', []).controller('DashboardCtrl', function($scope,$http) {

    console.log("In Controller")

    $scope.createPatient = function () {
        console.log("====",$scope.patient);
        $http.post('/new_patient',$scope.patient).then( function(response){
            console.log("response=",response);
            window.location.assign(response.data.redirect_to)
        })
    }

    $scope.getAllPatients = function () {
        $http.get("/get_patients").then( function (response) {
            console.log("----------",response)
            $scope.patients = response.data.patients;
        })
    }

});