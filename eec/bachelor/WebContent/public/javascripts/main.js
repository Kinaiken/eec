$(document).ready(function() {
//	 $('#pvc').keyup(function(event) {
//	    var keycode = event.keyCode || event.which;
//	    if(keycode == 13) {
//	       login();
//	    }
//	}); 

	$('#pswd').keyup(function(event) {
		var keycode = event.keyCode || event.which;
		if(keycode == 13) { 
			login();
		}
	});
	
	$('#nav-accordion').dcAccordion({
	    eventType: 'click',
	    autoClose: true,
	    saveState: true,
	    disableLink: true,
	    speed: 'slow',
	    showCount: false,
	    autoExpand: true,
	    classExpand: 'dcjq-current-parent'
	});
	
    $('.fa-bars').click(function () {
        if ($('#sidebar > ul').is(":visible") === true) {
            $('#main-content').css({
                'margin-left': '0px'
            });
            $('#sidebar').css({
                'margin-left': '-220px'
            });
            $('#sidebar > ul').hide();
            $("#container").addClass("sidebar-closed");
        } 
        else {
            $('#main-content').css({
                'margin-left': '220px'
            });
            $('#sidebar > ul').show();
            $('#sidebar').css({
                'margin-left': '0'
            });
            $("#container").removeClass("sidebar-closed");
        }
    });
    
 // custom scrollbar
    $("#sidebar").niceScroll({styler:"fb",cursorcolor:"#e8403f", cursorwidth: '3', cursorborderradius: '10px', background: '#404040', spacebarenabled:false, cursorborder: ''});
    $("html").niceScroll({styler:"fb",cursorcolor:"#bdc3c7", cursorwidth: '6', cursorborderradius: '10px', background: '#f1f2f8', spacebarenabled:false,  cursorborder: '', zindex: '1000', autohidemode: false});

	
    $('.tooltips').tooltip();
    
    jQuery('#sidebar .sub-menu > a').click(function () {

        var o = ($(this).offset());
        diff = 200 - o.top;
        if(diff > 0)
        	$("#sidebar").scrollTo("-=" + Math.abs(diff), 500);
        else
            $("#sidebar").scrollTo("+=" + Math.abs(diff), 500);
    });
    
    $(function() {
        function responsiveView() {
            var wSize = $(window).width();
            if (wSize <= 768) {
                $('#container').addClass('sidebar-close');
                $('#sidebar > ul').hide();
                $('#banner').hide();
            }

            if (wSize > 768) {
                $('#container').removeClass('sidebar-close');
                $('#sidebar > ul').show();
                $('#banner').show();
            }
        }
        $(window).on('load', responsiveView);
        $(window).on('resize', responsiveView);

        $("a#backtotop").click(function () {
            $("html, body").animate({scrollTop: 0}, 0);
            return false;
        });

    });   
    
});
    
function login() {
	var xmlDoc;
	if($("#nick").val() != "" && $("#pswd").val()) {
		xmlDoc = loadXMLDoc("authenticate.jsp?username=" + $("#nick").val() + "&password=" + $("#pswd").val());
		
//		alert(xmlDoc);
		
		//		if (xmlDoc.getElementsByTagName('userid')[0].childNodes[0].nodeValue != 0) {
//			$("#alert").html("<div class='alert alert-success'>Амжилттай нэвтэрлээ.</div>");    	
//		}
//		else {
//			$("#alert").html("<div class='alert alert-danger'>Та нэвтрэх боломжгүй байна.</div>");
//		}
	}
	else {
		$("#alert").html("<div class='alert alert-danger'>Шаардлагатай талбарыг бөглөнө үү!</div>");
	}
}

function loadXMLDoc(url) {	
	var xmlhttp;
	if (window.XMLHttpRequest) { // code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp = new XMLHttpRequest();
	}
	else { // code for IE6, IE5
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}

	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			var parser = new DOMParser();
			var xmlDoc = parser.parseFromString(xmlhttp.responseText, "application/xml");

//			alert(xmlDoc.getElementsByTagName('userid')[0].childNodes[0].nodeValue);
				
			if(xmlDoc.getElementsByTagName('userid')[0].childNodes[0].nodeValue > 0) {
				if(xmlDoc.getElementsByTagName('usertype')[0].childNodes[0].nodeValue == 1) {
					document.cookie = "Id=" + xmlDoc.getElementsByTagName('userid')[0].childNodes[0].nodeValue;
					window.location = "modules/manager/menu.jsp";
				}
				else {
					if(xmlDoc.getElementsByTagName('usertype')[0].childNodes[0].nodeValue == 2) {
						document.cookie = "Id=" + xmlDoc.getElementsByTagName('userid')[0].childNodes[0].nodeValue;
						window.location = "modules/teacher/menu.jsp";
					}
					else {
						if(xmlDoc.getElementsByTagName('usertype')[0].childNodes[0].nodeValue == 3) {
							document.cookie = "Id=" + xmlDoc.getElementsByTagName('userid')[0].childNodes[0].nodeValue;
							window.location = "modules/student/menu.jsp";
						}
					}
				}
			}
			else {
				$("#alert").html("<div class='alert alert-danger'>Та нэвтрэх боломжгүй байна.</div>");
			}
//			alert(xmlDoc.getElementsByTagName('usertype')[0].childNodes[0].nodeValue);
			return xmlDoc;
		}
	}
	xmlhttp.open("GET", url, false);
	xmlhttp.send("");
//    return xmlhttp.responseXML;
}




