function processform()
{
	var myform=document.details;
	var firstnm=document.getElementById("fname").value;
	var lastnm=document.getElementById("lname").value;
	var mobno=document.getElementById("mob").value;
	var mailid=document.getElementById("mail").value;
	var alphaExp = /^[a-zA-Z]+$/;
	var matchnm=false;
	if(firstnm.match(alphaExp))
	{
		matchnm=true;
	}
	else
	{
		alert("wrong first name");
	}
	if(lastnm.match(alphaExp))
	{
		matchnm=true;
	}
	else
	{
		alert("wrong last name");
	}
	if(mobno.length!=10)
	{
		alert("Re enter mobile number");
	}
	var branch= document.getElementsByName('branch');
      var genValue = false;
     for(var i=0; i<branch.length;i++)
	{
            if(branch[i].checked == true)
     		{
            	genValue = true;    
          	}
     	 }
     	if(!genValue)
	{
          	alert("Please Choose the branch");
     }
	
	
	var chks = document.getElementsByName('event');
	var checkCount = 0;
	for (var i = 0; i < chks.length; i++) 
	{
		if (chks[i].checked) 
		{
			checkCount++;
		}
	}
	if (checkCount < 1) 
	{
		alert("select the event");
	}
	 atpos = mailid.indexOf("@");
      dotpos = mailid.lastIndexOf(".");
         
      if (atpos < 1 || ( dotpos - atpos < 2 )) 
      {
           		 alert("Please enter correct email ID")
           		 document.myForm.EMail.focus() ;
       		 return false;
               }
}