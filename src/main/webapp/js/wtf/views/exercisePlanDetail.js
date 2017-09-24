(function($) {

	var ExercisePlanDetail = Backbone.Model.extend({
		initialize : function() {
			this.name = 'name'
		}
	});

	var ExercisePlanDetailList = Backbone.Collection.extend({
		model : ExercisePlanDetail,
		url : 'exerciseplandetail/1'
	});
	

	var ExercisePlanDetailListView = Backbone.View.extend({
		
		el : '#exerciseplandetail',
		
		initialize : function() {
			var self = this;
			this.collection = new ExercisePlanDetailList();
		    this.collection.fetch().done(function(){
		        self.render();
		      });
		},
		
		render:function(){
			var source = $('#exerciseplandetail_template').html();
			var template = Handlebars.compile(source);
			var html = template(this.collection);
			
			$('#exerciseplandetail').html(html);
		},
	});

	new ExercisePlanDetailListView();


})(jQuery);