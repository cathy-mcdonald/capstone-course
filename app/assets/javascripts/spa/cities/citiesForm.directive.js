(function() {
	"use strict";
	
	angular.module("spa.cities")
	.directive("sdCitiesForm", CitiesFormDirective);
	
	CitiesFormDirective.$inject = ["spa.APP_CONFIG"];
	function CitiesFormDirective(APP_CONFIG) {
		var directive = {
			templateUrl: APP_CONFIG.cities_form_html,
			replace: true,
			bindToController: true,
			controller: "spa.cities.CitiesController",
			controllerAs: "citiesVM",
			restrict: "A",
		};
		
		return directive;
		
	}
	
})();
