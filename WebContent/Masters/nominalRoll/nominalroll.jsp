<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="script2.js"></script>
</head>
<body bgcolor="skyblue">
	<form name="nr">
			<table>
			<tr>
				<td><fieldset>
				<legend>Select Branch & Sem</legend>
			
				<table>
					<tr>
						<td>Branch:</td>
						<td>Semester:</td>
					</tr>
					<tr>
						<td width="200"><select name="branch" id="branch1" onchange="getBranDetails()" style="width:100%" >
							<option value="select">select</option>
							<option value="cse">cse</option>
							<option value="ece">ece</option>
							<option value="eee">eee</option>
							<option value="it">it</option>
							</select>
						</td>
						<td width="200"><select name="semester"  id="sem"  onchange="getSemDetails()" style="width:100%" disabled="disabled">
							<option value="select">select</option>
							<option value="1">1</option>
							<option value="2">2-1</option>
							<option value="3">2-2</option>
							<option value="4">3-1</option>
							<option value="5">3-2</option>
							<option value="6">4-1</option>
							<option value="7">4-2</option>
							</select>
						</td>
					</tr>
				</table>
				
				</fieldset>
				</td>
				<td>
					<fieldset>
						<legend>Strength of Branch</legend>
						<table>
							<tr>
								<td>figures</td>
								<td>Total</td>
							</tr>
							<tr>
								<td>Boys:<input type="text" name="boys" size="7">
								Girls:<input type="text" name="girls" size="7"></td>
								<td>Total:<input type="text" name="total"  id="total" size="7"></td>
							</tr>
						</table>
					</fieldset>
				
				</td>
				<td><input name="view" value="view" type="button"  onclick="pview()"></td>
				<td><input name="quit" value="quit" type="button"  onclick="window.close()"/></td>
				</tr>
				</table>
				<table border="2" width="900">
				
				<th width="100">Roll_no</th>
				<th width="100">Name</th>
				<th width="100">D.O.B</th>
				<th width="100">Gender</th>
				<th width="100">Parent_name</th>
				<th width="100"> Parent_mobile</th>
				<th width="100">E-mail</th>
				
				</table>
				
				<table id="newtable" border="2" width="900">
				
				</table>
</form>
</body>
</html>
