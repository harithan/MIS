<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Individual Fee Table</title>
<script src="script2.js" type="text/javascript">
</script>
</head>
<body>
<form name="form1">
<fieldset>
<legend><b>Fee Refunds</b></legend>
<table cellpadding="5" cellspacing="5" align="center" border=0 width="70%">
<tr>
<td>
	<table border=0 width="100%" cellspacing="5" cellpadding=0>
	<tr>	
		<th align="left" width="20%">Ref. No:</th>
		<td width="40%"><input type="text" name="ref_num" id="ref_num" /></td>
		<th align="left" width="20%">Date: </th>
		<td width="30%"><input type="text" name="date" id="date" /></td>
	</tr>
	</table>
</td></tr>
<tr>
<td>
	<fieldset><legend><b>Student Details</b></legend>
	<table cellpadding="7" border=0>
		<tr>
			<th align="left" >RollNo:</th>
			<td><input name="roll_number" id="roll_number" type="text" size="15" maxlength="10" /></td>
			<th>Branch:</th>
			<td><input name="branch" type="text"  size="8" maxlength="5" /></td>
			<th>Sem:</th>
			<td><input name="sem" type="text"  size="5" maxlength="5" /></td>
		</tr>
		<tr><th>Student:</th>
			<td colspan="5"><input name="student" type="text"  size="50" maxlength="50" style="width:100%" /></td>
		</tr>
		<tr>
			<th>Parent:</th>
			<td colspan="5"><input name="parent" type="text"  size="50" maxlength="50" style="width:100%"/></td>
		</tr>
	</table>
	</fieldset>
</td>
<td >
	<img src="./images/mis.jpg" width="100" height="100" name="pick"/>
</td>
</tr>
</table>
<hr />
<table  cellpadding="5" cellspacing="5" align="center" border=0 width="90%">
<tr>
	<td colspan=2>
		<table cellspacing=7 border=0>
		<tr>
			<th width="30%" align="left">Receipt no: </th>
			<th width="50%" align="left">Fee Name:</th>
			<th width="10%" align="left">Receipt Amt:</th>
			<th width="10%" align="left">Refund Amt:</th>
		</tr>
		<tr>
			<td><select name="receipt_num" id="receipt_num" style="width:100%"><option>select</option></select></td>
			<td><select name="fee_name" id="fee_name" style="width:100%"><option>select</option></select></td>
			<td><input type="text" name="receipt_amt" id="receipt_amt" style="text-align:right" value="0.00"/></td>
			<td><input type="text" name="refund_amt" id="refund_amt" style="text-align:right" value="0.00"/></td>
		</tr>
		</table>
	</td>
</tr>
<tr>
<td colspan="2">

<table border=1 width="100%">
<tr bgcolor="lightblue">
	<th width="17%" >Receipt No. </th>
	<th width="30%">Fee Name</th>
	<th width="15%" >Receipt Amt</th>
	<th width="15%" >Refund Amt</th>
</tr>
<tr>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
</tr>
</table>

</td>
</tr>
</table>
<br />
<hr />
<table width="100%">
<tr>
		<th><h1>New / Modify</h1></th>
		<th><input type="submit" value="  Save  " />&nbsp;&nbsp;&nbsp;
		<input type="button" value="Cancel" />&nbsp;&nbsp;&nbsp;
		<input type="button" value="   Quit   " onclick="window.close()" />
		</th>
</tr>
</table>    
</fieldset>	
</form>
</body>
</html>
