(function($) {

	var PlanDetail = Backbone.Model.extend({
		initialize : function() {
			this.name = 'name'
		}
	});

	var PlanDetailList = Backbone.Collection.extend({
		model : PlanDetail,
		//url : 'plandetail/1'
		initialize: function(models, options) {
			debugger;
			this.url = 'plandetail/' + options.planId;
		},
	});
	

	var PlanDetailListView = Backbone.View.extend({
		
		el : '#plandetail',
		
		initialize : function() {
			var self = this;
			debugger;
			var selectedPlanId = getVal('planid');
			this.collection = new PlanDetailList([], {planId: selectedPlanId});
		    this.collection.fetch().done(function(){
		        self.render();
		      });
		},
		
		render:function(){
			var source = $('#plandetail_template').html();
			var template = Handlebars.compile(source);
			var html = template(this.collection);
			
			$('#plandetail').html(html);
		},
	});

	new PlanDetailListView();

	function getVal(str) {
	    var v = window.location.search.match(new RegExp('(?:[\?\&]'+str+'=)([^&]+)'));
	    return v ? v[1] : null;
	}
	
})(jQuery);