(function($) {

	var PlanDetail = Backbone.Model.extend({
		initialize : function() {
			this.name = 'name'
		}
	});

	var PlanDetailList = Backbone.Collection.extend({
		model : PlanDetail,
		url : 'plandetail/1'
	});
	

	var PlanDetailListView = Backbone.View.extend({
		
		el : '#plandetail',
		
		initialize : function() {
			var self = this;
			this.collection = new PlanDetailList();
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


})(jQuery);