(function($) {

	var Plan = Backbone.Model.extend({
		initialize : function() {
			this.name = 'name'
		}
	});

	var EventList = Backbone.Collection.extend({
		model : Plan,
		url : 'exerciseplan/'
	});
	

	var PlanListView = Backbone.View.extend({
		
		el : '#planlisting',
		
		initialize : function() {
			var self = this;
			this.collection = new EventList();
		    this.collection.fetch().done(function(){
		        self.render();
		      });
		},
		
		render:function(){
			var source = $('#plan_template').html();
			var template = Handlebars.compile(source);
			var html = template(this.collection);
			
			$('#planlisting').html(html);
		},
	});

	new PlanListView();


})(jQuery);