//http://www.somacon.com/p355.php
String.prototype.trim = function()
{
	return this.replace(/^s+|s+$/g,"");
}
//http://www.experts-exchange.com/Web/Web_Languages/JavaScript/Q_21478202.html
function codeToList()
{
	//Convert code elements to ordered lists
	var code = document.getElementsByTagName("code")
	for (i = 0; i < code.length; i++)
	{
		code[i].innerHTML = "
		<ol class='code'>" + code[i].innerHTML.replace(/
/g, "<li>").trim() + "</ol>";
	} //end for
	
	//Apply zebra stripes
	if (document.getElementsByClassName)
	{
		var code = document.getElementsByClassName("code");
		for (i = 0; i < code.length; i++)
		{	
			var li = code[i].getElementsByTagName("li")
			var cn = "odd";						
			for (x = 0; x < li.length; x++)
			{
				li[x].className = cn;				
				cn == "odd" ? cn = "even" : cn = "odd"; //condition ? true : false
			} //end for
		} //end for
	} //end if
		
} //end function
window.onload = DOMReadyAll;
function DOMReadyAll()
{
	codeToList();
}