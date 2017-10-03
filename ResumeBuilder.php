<?php

require 'Projectdbconnection.php';
$selQry1="select Branch, Degree from student_master where UserId='haque.saif1905@gmail.com'";
$result1=@mysqli_query($link,$result1)or die(mysqli_error($link));
while($row1=mysqli_fetch_assoc($result1))
{
    echo "<table>";
    echo "<tr><td>Branch: ".$row1["Branch"]."</td></tr>";
    echo "<tr><td>Degree: ".$row1["Degree"]."</td></tr>";
    
}

$selQry2="select AcdAchvmt,Sports,Cultural from student_academic_master where UserId='haque.saif1905@gmail.com'";
$result2=@mysqli_query($link,$result2)or die(mysqli_error($link));
while($row2=mysqli_fetch_assoc($result2))
{
     echo "<tr><td>Academic Achievements: ".$row2["AcdAchvmt"]."</td></tr>";
      echo "<tr><td>Sports Skills: ".$row2["Sports"]."</td></tr>";
       echo "<tr><td>Cultural Skills: ".$row2["Cultural"]."</td></tr>";
}

$selQry3="select PrgmLanguage,Directory,OS,Software,OtherSkill,IndustryExp,AcademicProject from student_technical_master
where UserId='haque.saif1905@gmail.com'";
$result3=@mysqli_query($link,$result3)or die(mysqli_error($link));
while($row3=mysqli_fetch_assoc($result3))
{
    echo "<tr><td>Known Programming Languages: ".$row3["PrgmLanguage"]."</td></tr>";
    echo "<tr><td>Known Databases: ".$row3["Directory"]."</td></tr>";
    echo "<tr><td>Operating Systems: ".$row3["OS"]."</td></tr>";
    echo "<tr><td>Software Skills: ".$row3["Software"]."</td></tr>";
    echo "<tr><td>Other Skills: ".$row3["OtherSkill"]."</td></tr>";
    echo "<tr><td>Industry Experience: ".$row3["IndustryExp"]."</td></tr>";
    echo "<tr><td>Academic Projects: ".$row3["AcademicProject"]."</td></tr>";
    echo "</table>";
}

?>