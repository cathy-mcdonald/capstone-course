(function () {
	"use strict";
	
	angular.module("spa.cities")
	.controller("spa.cities.CitiesController", CitiesController);
	
	CitiesController.$inject = ["spa.cities.City"];
	function CitiesController(City) {
		var vm = this;
		vm.cities;
		vm.city;
		vm.create = create;
		
		activate();
		return;
		
		// Function declarations
		function activate() {
			newCity();
			vm.cities = City.query();
		}
		
		function newCity() {
			vm.city = new City();
		}
		
		function handleError(response) {
			console.log(response);
		}
		
		function create() {
			vm.city.$save()
			.then(function(response) {
				vm.cities.push(vm.city);
				newCity();
			})
			.catch(handleError);
		}
	};
	
})();
