$(function() { // document ready
	$.get('/to_dos.json').then(function(toDos) {
		var events = [];
		_.forEach(toDos, function(todo) {
			events.push({
				title: todo.task,
				start: todo.created_at
			})
		});		

		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			defaultDate: new Date(),
			editable: true,
		    eventLimit: true, // allow "more" link when too many events
		    events: events
		});
	});
});
