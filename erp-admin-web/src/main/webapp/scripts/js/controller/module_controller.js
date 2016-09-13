'use strict';
App.controller('ModuleController',['$scope','ModuleService',function($scope,ModuleService){
	
	var self		= this;
	
	
	
	self.resultStatusModel      = {serviceResult:null,serviceResultMessage:''};
	
	
	self.loginAttendance = function () {
		alert("Manoj");
		ModuleService.loginAttendance()
		.then(
			function(data){
				console.log("****Controller log:login finished");
				console.log(data);
				self.courses = data;
			},
			function(errResponse){
				 console.log("****Controller log:Login failed");
			}
		);
	};
	
	
	
	//submit
    self.submit = function() {
    	
    };
    
    
    self.edit = function(id){
    	/* console.log('id to be edited', id);
    	 for(var i = 0; i < self.reservations.length; i++){
             if(self.reservations[i].reservationId === id) {
                self.courseRegisterPanelObj = angular.copy(self.reservations[i]);
                break;
             }
         }*/
    };
    
    self.reset = function(){
    	 $scope.myForm.$setPristine()
    }
	
    
    angular.element(document).ready(function () {
	
    });
	
}]);