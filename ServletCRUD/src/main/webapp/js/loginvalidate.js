
function validateForm() {
  var x = document.forms["myForm"]["loginname"].value;
  var y = document.forms["myForm"]["loginpassword"].value;
  if (x == "") {
    alert("UserName must be filled out");
    return false;
  }
  else if (y == "")
	  {
		    alert("Password must be filled out");
		    return false;
	  }
}
