(function($) {

	var Event = Backbone.Model.extend({
		initialize : function() {
			this.name = 'name'
		}
	});

	var EventList = Backbone.Collection.extend({
		model : Event,
		url : 'events/'
	});
	

	var EventListView = Backbone.View.extend({
		
		el : '#eventlisting',
		
		initialize : function() {
			var self = this;
			this.collection = new EventList();
		    this.collection.fetch().done(function(){
		        self.render();
		      });
		},
		
		render:function(){
			var source = $('#event_template').html();
			var template = Handlebars.compile(source);
			var html = template(this.collection);
			
			$('#eventlisting').html(html);
		},
	});

	new EventListView();


})(jQuery);