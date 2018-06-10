angular.module('pathology', []).controller('DashboardCtrl', function($scope,$http) {

    console.log("In Dashboard Controller")

    //=========================================================================================================
    //  PATIENT CONTROLLER
    //=========================================================================================================
    $scope.createPatient = function () {
        $http.post('/new_patient',$scope.patient).then( function(response){
            window.location.assign(response.data.redirect_to)
        })
    }

    $scope.getAllPatients = function () {
        $http.get("/get_patients").then( function (response) {
            $scope.patients = response.data.patients;
        })
    }
    //=============================================================================================================


    //=========================================================================================================
    //  REPORT CONTROLLER
    //=========================================================================================================
    $scope.createReport = function () {
        console.log("========",$scope.report);
        $http.post('/new_report',$scope.report).then( function(response){
            window.location.assign(response.data.redirect_to)
        })
    }

    $scope.getAllReports = function () {
        $http.get("/get_reports").then( function (response) {
            $scope.reports = response.data.reports;
            console.log("=========",$scope.reports)
        })
    }
    //=============================================================================================================


    //=======================================================================================================
    //TEST CONTROLLER
    //========================================================================================================
    $scope.createTest = function () {
        $http.post('/new_test',$scope.test).then( function (response) {
           window.location.assign(response.data.redirect_to);
        });
    }

    $scope.getAllTests = function () {
        $http.get("/get_tests").then( function (response) {
            $scope.tests = response.data.tests;
        });
    }
    //==========================================================================================================

});