function linkClicked(link) {
	$('#sidebar .sidebar-menu li').removeClass('active');
	
	var menu = $('#sidebar .sidebar-menu a[onclick="linkClicked(\''+link+'\')"]');
	menu.parent().addClass('active');

	if(link.indexOf("http") == 0 ) {
		document.getElementById("homeframe").src = link;
		window.open(link);
	} 
	else {
		$("#homeframe").attr("src", link);
	}
}

