<?php
require 'Projectdbconnection.php';

//to search user
if(isset($_POST["btnSearch"]))
{
    $id=$_POST["txtUserid"];
    $searchQry="select * from login_master where UserId=$id";
    $result=@mysqli_query($link,$searchQry)or die(mysqli_error($link));
    if($row=mysqli_fetch_assoc($result))
    {
        //print_r($row);
    }
    else
    {
        //echo("<font color=red size=4>No Record found!!!!</font>");
       // $error="<font color=red size=4>No Record found!!!!</font>";
       
       echo"<script>alert('No Record found!!!!'):</script>";
    }
}
?>

<head>
<script type="text/javascript">
       function displayConfirm()
       {
        return   confirm("Are You Sure?");
       }
       function validateInput()
       {
        if(document.getElementById("txtUserid").value.length==0)
        {
            alert("User Id is Mandatory");
            document.getElementById("txtUserid").focus();
            document.getElementById("txtUserid").style.border="2px solid red";
            return false;
        }
       
       function changeStyle()
       {
         if(document.getElementById("txtUserid").value.length>0)
         {
          document.getElementById("txtUserid").style.border="2px solid green";  
         }
         else
         {
           document.getElementById("txtUserid").style.border="2px solid red";  
         }
       }


</script>

</head>


<h2 align="center">Login Master</h2>
<hr color="red" size="5" />
<form method="post">
<table align="center" width="50%"><tr><td>
<div style="margin: auto:width50% ">
<fieldset>
<legend>Administrator Form</legend>
<table style="width:80%:margin:auto:border: 2px solid black">
<tr><td>User ID  :   </td>
<td>
<input type="email" name="txtUserid" id="txtUserid" onblur="changeStyle()" value="<?php if(isset($row)) echo $row["id"]; ?>"  />
<input type="submit" name="btnSearch" value="search user"/><br />
</td></tr>
<tr><td>Password  :   </td>
<td>
<input type="password" name="txtpassword" value="<?php if(isset($row)) echo $row["password"]; ?>" />
</td>
</tr>
<tr><td>Status  :  </td>
<td>
<select name="status">
<option value="-1">---select status---</option>
<option>Faculty</option>
<option>Student</option>
</select>
</td></tr>

<tr><td colspan="2" align="center">
<input type="submit" name="btnsave" value="Save Record" onclick="return validateInput()"/>&nbsp;&nbsp;
<input type="submit" name="btnupdate" value="Update Record"/>&nbsp;&nbsp;
<input type="submit" name="btndelete" value="Delete Record"/>&nbsp;&nbsp;
<input type="submit" name="btnviewall" value="View all" onclick="return displayConfirm()"/>&nbsp;&nbsp;
</td></tr>
<tr><td colspan="2">
<?php
     //to insert new record
     if(isset($_POST["btnsave"]))
     {
        $id=$_POST["txtUserid"];
        $password=$_POST["txtpassword"];
        $status=$_POST["status"];
        $insertQry="insert into login_master values($id,'$password','$status')";
        @mysqli_query($link,$insertQry)or die(mysqli_error($link));
        echo "<font color=green size=4>Details Saved Successfully</font>";
     }
     //to display all record
     else if(isset($_POST["btnviewall"]))
     {
        $selqry="select UserId,Status from login_master";
        $result=@mysqli_query($link,$selqry) or die(mysqli_error($link));
        
        echo"<table>
        <tr>
        <td>User id</td>
        <td>Status</td>
        </tr>";
        while($row=mysqli_fetch_assoc($result))
        {
            echo "<tr>";
            echo "<td>".$row["UserId"]."</td>";
            echo "<td>".$row["Status"]."</td></tr>";
            
        }
        echo "</table>";
     }
     else if(isset($_POST["btnupdate"]))
     {
        $id=$_POST["txtUserid"];
        $password=$_POST["txtpassword"];
        $status=$_POST["status"];
        $updateQry="update login_master set Password='$password',Status='$status' where UserId=$id";
        @mysqli_query($link,$updateQry)or die(mysqli_error($link));
        echo "<font color=green size=4>Details Updated Successfully</font>";
     }
     else if(isset($_POST["btndelete"]))
     {
        $id=$_POST["txtUserid"];
        
        $deleteQry="delete from login_master where UserId=$id";
        @mysqli_query($link,$deleteQry)or die(mysqli_error($link));
        if(mysqli_affected_rows($link))
        {
          echo "<font color=green size=4>Details Deleted Successfully</font>";  
        } 
        else 
        echo "<font color=red size=4>No such user id exist!</font>";  
     }
        
?>

</td></tr>
</table>
</fieldset>
</div>