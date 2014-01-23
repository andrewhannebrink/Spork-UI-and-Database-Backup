
$(function() {
/* Convenience for forms or links that return HTML from a remote ajax call.
The returned markup will be inserted into the element id specified.
*/
	$('form[data-update-target]').live('ajax:success', function(evt, data) {
		var target = $(this).data('showdiv');
		$('#' + target).html(data);
	});
});
