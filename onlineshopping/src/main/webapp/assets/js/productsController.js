var app = angular.module('ShoppingApp', []);

app.controller('ProductController', function($http) {
	
	var me = this;
	
	me.mvProducts = [];
	me.mpProducts = [];
	
	me.fetchProducts = function() {
		
		$http.get('/onlineshopping/json/data/mv/products')
			.then(function(response) {
				me.mvProducts = response.data;
			});
		
	}
	
});
