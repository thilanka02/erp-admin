'use strict';
App.factory('ModuleService',['$http','$q',function($http,$q){
	return{
		
		
		loginAttendance:function(){
			return $http.get('https://localhost:8444/erp-admin-web/service/')
			.then(
					function(response){
						console.log("****Service log:login success");
						console.log(response);
						return response.data;
					},
					function(errResponse){
						console.error('****Service log:Error while login success');
                        console.log(errResponse);
                        return $q.reject(errResponse);
					}
			);
		}
	};
}]);