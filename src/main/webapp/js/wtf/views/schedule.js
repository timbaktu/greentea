(function($) {

	var Schedule = Backbone.Model.extend({
		initialize : function() {
			this.name = 'name'
		}
	});

	var ScheduleList = Backbone.Collection.extend({
		model : Schedule,
		url : 'exerciseplanschedule/1'
	});
	

	var ScheduleListView = Backbone.View.extend({
		
		el : '#eventlisting',
		
		initialize : function() {
			var self = this;
			this.collection = new EventList();
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
		        $('.fc-day-content').html(log.attributes.name);
		        count = count + 1;
		    });
		},
	});

	new ScheduleListView();


})(jQuery);