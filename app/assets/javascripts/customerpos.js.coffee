jQuery ->
	$('#customerpo_customerquote_name').autocomplete
		source: $('#customerpo_customerquote_name').data('autocomplete-source')
