function getCount(counter_name)
{
  var req=getRequestObject();
  req.onreadystatechange=function(){
  							handleResponse(req);
  							};
  req.open("GET","./getCounter.jsp?counter_name="+counter_name,true);
  req.send(null);
}
function home() {
	window.navigate("http://localhost:8089/Masters/menu.html");
}
function viewFee(v) {
	var req=getRequestObject();
  req.onreadystatechange=function(){
  							handleResponse(req);
  							};
  req.open("GET","./viewFee.jsp?fee_name="+v,true);
  req.send(null);
}
function viewFeebycode() {
	var fee_code=document.form1.fee_code.value;
	alert(fee_code);
	var req=getRequestObject();
  req.onreadystatechange=function(){
  							handleResponse(req);
  							};
  req.open("GET","./viewFeebycode.jsp?fee_code="+fee_code,true);
  req.send(null);
}
function handleResponse(req)
{ 

 if(req.readyState==4)
 {
	var s=req.responseText;
	var p=s.split("$");
	var n=p[0].length;
	if(n<=3) {	
		document.form1.counter_num.value=p[0];
		document.form1.counter_name.value=p[1];
		document.form1.location.value=p[2];
		document.form1.incharge.value=p[3];
		document.form1.password.value=p[4];
	}
	else{
		
		document.form1.fee_code.value=p[0];
		document.form1.fee_name.value=p[1];
		document.form1.account_name.value=p[2];
		document.form1.fee_sched.value=p[3];
		document.form1.fine.value=p[4];
		document.form1.refundable.value=p[5];
		document.form1.exclude.value=p[6];
		document.form1.fee_admin.value=p[7];
		document.form1.fee_cat.value=p[8];
		document.form1.fees_type.value=p[9];
		document.form1.under_group.value=p[10];
		document.form1.counter_type.value=p[11];
		document.form1.counter_num.value=p[12]
		document.form1.counter_name.value=p[13];
		document.form1.location.value=p[14];
		document.form1.incharge.value=p[15];
		document.form1.password.value=p[16];
	}
	p=null;
	
  }
}
function getRequestObject()
{
  if(window.XMLHttpRequest)
  {
    return(new XMLHttpRequest());
  }
  else if(window.ActiveXObject)
  {
    return(new ActiveXObject("Microsoft.XMLHTTP"));    
  }
  else
  return(null);
} 
function val() {
	var a1=document.form1.fee_code.value;
	var a2=document.form1.fee_name.value;
	var a3=document.form1.account_name.value;
	if(a1=="" || a2=="" || a3=="") {
		alert("Please fill all the fields..");
		return false;
	}
	return true;
}
