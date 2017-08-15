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
		
		el : '#HelloList',
		
		initialize : function() {
			var self = this;
			this.collection = new HelloList();
		    this.collection.fetch().done(function(){
		        self.render();
		      });
		},
		
		render:function(){
			debugger;
			var id = "ep_";
			var count = 1;
		    this.collection.each(function(log) {
		        console.log('log item.', log.attributes.name);
		        $('#ep_' + count).html(log.attributes.name);
		        $('#epd_' + count).html(log.attributes.description);
		        count = count + 1;
		    });
		},
	});

	new HelloListView();


})(jQuery);