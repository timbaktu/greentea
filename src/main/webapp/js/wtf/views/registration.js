(function($) {

	var UserRegistrationModel = Backbone.Model.extend({
	  	
		validate: function(attributes, options) {
		    if (attributes.description.length === 0) {
		      return 'Description cannot be empty';
		    }
		  },
		 
		initialize: function() {
		    this.on('invalid', function(model, error) {
		      console.log('Validation error:', error);
		    });
		  },
		  
		 url: 'saveuser'
	
	});
	

	var UserRegistrationView = Backbone.View.extend({
		
		el: $('#registrationformAdd'),
		
	    events: {
	        'click #register'        : 'userRegistration',
	    },
	    
		initialize : function() {
			alert('init');
			var self = this;
			_.bindAll(this,'userRegistration');
			e.preventDefault();
		},
		
	    userRegistration: function(e) {
	    	alert('hurray');
	    	debugger;
	        //Save Animal model to server data
	        e.preventDefault();
	        var pet_data = JSON.stringify( this.getFormData( this.$el.find('form') ) );
	        this.model.save(pet_data);
	        this.collection.add(this.model);
	        return false    
	    },

	    //Auxiliar function
	    getFormData: function(form) { 
	        var unindexed_array = form.serializeArray();
	        var indexed_array = {};

	        $.map(unindexed_array, function(n, i){
	            indexed_array[n['name']] = n['value'];
	        });

	        return indexed_array;
	    },
	});

	new UserRegistrationView();


})(jQuery);