$(document).ready(function()
{
	$("div#newuserdiv").hide();
	$("div#signupdiv").hide();

	$("a#newuser").click(function() {
		buttonTuck();
		logoSlide();
		showNewUserDiv();
		hideSignInDiv();
		hideAboutDiv();
		hideTryDiv();
	});
	
	$("a#newuserx").click(function() {
		buttonUntuck();
		logoUnslide();
		hideNewUserDiv();
	});

	$("a#signin").click(function() {
		buttonTuck();
		logoSlide();
		showSignInDiv();
		hideNewUserDiv();
		hideAboutDiv();
		hideTryDiv();
	});
	
	$("a#signinx").click(function() {
		buttonUntuck();
		logoUnslide();
		hideSignInDiv();
	});

	$("a#about").click(function() {
		buttonTuck();
		logoSlide();
		showAboutDiv();
		hideNewUserDiv();
		hideSignInDiv();
		hideTryDiv()
	});

	$("a#aboutx").click(function() {
		buttonUntuck();
		logoUnslide();
		hideAboutDiv();
	});

	$("a#try").click(function() {
		buttonTuck();
		logoHide();
		showTryDiv();
		hideNewUserDiv();
		hideSignInDiv();
		hideAboutDiv();
	});

	$("a#tryx").click(function() {
		buttonUntuck();
		logoUnslide();
		hideTryDiv();
	});

	
	//MOVE LOW BUTTONS TO TOP OF SCREEN
	function buttonTuck() {
		var a = parseInt($(about).position().top);
		var b = parseInt($(signin).position().top);
		if (a>95 && b>95) {
			$("a#about").animate({top:"65px", left:"142px"}, "fast");
			$("a#signin").animate({top:"65px", left:"658px"}, "fast");
		}
	}
	
	//MOVE BUTTONS BACK AROUND LOGO
	function buttonUntuck() {
		var a = parseInt($(about).position().top);
		var b = parseInt($(signin).position().top);
		if (a<96 && b<96) {
			$("a#about").animate({top:"175px", left:"183px"}, "fast");
			$("a#signin").animate({top:"175px", left:"617px"}, "fast");
		}
	}
	
	//SLIDE OVER LOGO TO SIDE
	function logoSlide() {
		var a = parseInt($(introbackground).position().left);
		if (a>280 || a<20) {
			$("div#introbackground").animate({left:"25%"});
		}
	}
	//SLIDE LOGO BACK TO MIDDLE
	function logoUnslide() {
		var a = parseInt($(introbackground).position().left);
		if (a<280) {
			$("div#introbackground").animate({left:"50%"});
		}
	}
	//HIDE LOGO
	function logoHide() {
		var a = parseInt($(introbackground).position().left);
		if (a>10) {
			$("div#introbackground").animate({left:"-25%"});
		}
	}
	//SHOW NEW USER DIV
	function showNewUserDiv() {
		$("div#newuserdiv").show();
		$("div#newuserdiv").animate({top:"150px"});
	}
	//HIDE NEW USER DIV 
	function hideNewUserDiv() {
		$("div#newuserdiv").animate({top:"750px"},function(){
			$("div#newuserdiv").hide();
		});
	}
	//SHOW SIGN UP DIV
	function showSignInDiv() {
		$("div#signindiv").show();
		$("div#signindiv").animate({top:"150px"});
	}
	//HIDE SIGN UP DIV
	function hideSignInDiv() {
		$("div#signindiv").animate({top:"750px"},function(){
			$("div#signindiv").hide();
		});
	}
	//SHOW ABOUT DIV
	function showAboutDiv() {
		$("div#aboutdiv").show();
		$("div#aboutdiv").animate({top:"150px"});
	}
	//HIDE ABOUt DIV
	function hideAboutDiv() {
		$("div#aboutdiv").animate({top:"750px"},function(){
			$("div#aboutdiv").hide();
		});
	}
	//SHOW TRY DIV
	function showTryDiv() {
		$("div#trydiv").show();
		$("div#trydiv").animate({top:"150px"});
	}
	//HIDE TRY DIV
	function hideTryDiv() {
		$("div#trydiv").animate({top:"750px"},function(){
			$("div#trydiv").hide();
		});
	}
		
	
});
