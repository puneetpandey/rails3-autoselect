// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
  $("#user_country_id").live('change', function() {
      if($("#user_country_id").val()!=""){
          var countryId = $("#user_country_id").val();
	  $.ajax({
              type: 'GET',
              url: '/users/add_states',
              data: 'country_id='+countryId,
              success: function(msg) {
              }
          });
          return false;
      }
  });

  $("#user_state_id").live('change', function() {
    if($("#user_state_id").val()!=""){
        var stateId = $("#user_state_id").val();
	$.ajax({
            type: 'GET',
            url: '/users/add_cities',
            data: 'state_id='+stateId,
            success: function(msg) {
            }
        });
        return false;
    }
  });
});