<head>
<style>

.login
{
    width:50%;
    margin:auto;
    margin-top:20%;
    border: 10px solid;
    border-collapse:collapse;
}

.login tr:first-child
{
    background-color: black;
    color:white;
    text-transform: uppercase;
    text-align: center;
    
}

.login td
{
    border: 1px solid;
    border-collapse: collapse;
    padding: 5px;
}
</style>

</head>


<body>
<form method="post">
<table class="login">

<tr><td colspan="2">Login Here</td></tr>
<tr><td>UserId:</td><td><input type="text" name="txtUserid" /></td></tr>
<tr><td>Password:</td><td><input type="password" name="txtPassword" /></td></tr>
<td colspan="2"><input type="submit" name="btnLogin" value="Sign In"/></td>
</tr>
<tr>
<td colspan="2">
<?php

if(isset($_POST["btnLogin"]))
{
    //login script
    $userid=$_POST["txtUserid"];
    $password=$_POST["txtPassword"];
    $authquery="select Status from login_master where UserId='$userid' and Password='$password'";
    require 'Projectdbconnection.php';
    $result=@mysqli_query($link,$authquery)or die(mysqli_error($link));
    if($row=mysqli_fetch_assoc($result))
    {
        if(strcmp($row["Status"],"Studn")==0)
        {
            header("loaction:student.php");
        }
        
        else if(strcmp($row["Status"],"Admin")==0)
        {
            header("location:admin.php");
        }
        else
        {
            header("location:faculty.php");
        }
       
       
       
        
        
    }
    else
    {
        echo "<font color=red size=4>Invalid UserId or Password</font>";
    }
}
?>


</td>

</tr>
</table>
</form>
</body>