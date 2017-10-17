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
		
		events: function() {
		      $('a').click(function (e) {
		    	  e.preventDefault();
		          SearchApp.navigate(e.target.pathname, true);
		        });
		},
			  
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
			
			
		    $(".fa-play").on('click', function(event){
		        var url = $(event.target).data('name');
		        
		        url = url.replace("watch?v=", "embed/");
		        $("#cartoonVideo").attr('src', url);
		        
		        $("#myModal").on('hide.bs.modal', function(){
		            $("#cartoonVideo").attr('src', '');
		        });
		        
		        /* Assign the initially stored url back to the iframe src
		        attribute when modal is displayed again */
		        $("#myModal").on('show.bs.modal', function(){
		            $("#cartoonVideo").attr('src', url);
		        });
		        
		        $(".modal-title").text($(event.target).data('workoutname'));
		        
		    });
			
		    $("#modal1").on('click', function(){

		    });
			
		    $("#myModal").on('hide.bs.modal', function(){
		        $("#cartoonVideo").attr('src', '');
		    });
		    
		    /* Assign the initially stored url back to the iframe src
		    attribute when modal is displayed again */
		    $("#myModal").on('show.bs.modal', function(){
		    	$("#cartoonVideo").attr('src', url);
		    });
		    
		    
		},
		
		tester1: function() {
		}

	});

	new ExercisePlanDetailListView();

	
})(jQuery);