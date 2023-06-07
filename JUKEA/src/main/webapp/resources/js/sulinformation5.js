var alcs = document.getElementsByName("alc");

for(var i=0; i<alcs.length; i++) {
	alcs[i].addEventListener('click', function() {
		output(this.value);
	})
}

function output(category) {
	var form = document.createElement("form");
	form.setAttribute("charset","UTF-8");
	form.setAttribute("method", "post");
	form.setAttribute("action", "/sulinformation");
	
	var hiddenField = document.createElement("input");
	hiddenField.setAttribute("type", "hidden");
	hiddenField.setAttribute("name", "selectedCategory");
	hiddenField.setAttribute("value", category);
	form.appendChild(hiddenField);
	
	document.body.appendChild(form);
	form.submit();
}