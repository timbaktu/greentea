(function($) {

	var Hello = Backbone.Model.extend({
		initialize : function() {
			this.name = 'name'
		}
	});

	var HelloView = Backbone.View.extend({
		tagName : 'li',
		render : function() {
			$(this.el).html('Hello ' + this.model.get('name'));
			return this;
		}
	});

	var HelloList = Backbone.Collection.extend({
		model : Hello,
		url : 'exerciseplan/'
	});
	

	var HelloListView = Backbone.View.extend({
		
		el : '#fc-day',
		
		initialize : function() {
			var self = this;
			this.collection = new HelloList();
		    this.collection.fetch().done(function(){
		        self.render();
		      });
		},
		
		render:function(){
			var source = $('#exercise_plan_template').html();
			var template = Handlebars.compile(source);
			var html = template(this.collection);
			
			$('#fc-day').html(html);
		},
	});

	new HelloListView();


})(jQuery);