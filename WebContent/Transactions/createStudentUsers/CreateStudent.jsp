<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <title>Creating student login permissions</title>
  <script type="text/javascript">
     function check()
     {
      var r1=document.getElementById("roll_num1").value;
      
       if(r1=="")
       {
        alert("roll numaber  must be required");
        return false;
       }
       var pass=document.getElementById("password").value;
       if(pass=="")
       {
       alert("password is required");
       return false;
       }
      
     }
  </script>
  </head>
  <body>
   <fieldset>
         <legend align="center">Give permission to student</legend>
         <table align="center" border=0>
           <tr>
           <td>User name:</td><td><input type="text" name="roll_num" id="roll_num"></td>
           <td>(user name must be roll/reg number)</td>
           </tr>
           <tr>
           <td>Password:</td><td><input type="password" name="password" id="password"></td>
           </tr>
           <tr>
            <td colspan="2" align="center"> <input type="submit" value="Create" onclick="return check()">
            <input type="Reset" value="Cancel">
            </td>
           </tr>
         </table>
   </fieldset>
  </body>
</html>
