<!DOCTYPE html>
<html lang="en">
<head>
  <title>CSD</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /*
     Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /*  Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="smile.php">LOGO</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="date.php">Home</a></li>
        
        <li><a href="#">Projects</a></li>
        <li><a href="contact.php">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><li><a href = "slide.php" title = "show images"><font  color=red>SLIDER</font></li></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1 ><font  color=red>WELCOME</font></h1>
      <h2><font color=green>computer science department</font></h2>
      <h2><font color=green><marquee>latest notice and announcement update in notice and announcement section</marquee> </font></h2>
      <p><font color=black>Sikkim Manipal University was born to with the basic objective of strengthening the close link of education to skill development and the making the youth of Sikkim educated, skilled and employable, giving them the capacity to harness diverse opportunities both within and outside Sikkim. This will also create more job opportunities for our youth, thus solving the growing unemployment in the State.
 
The Sikkim Manipal University was established in 1995. It is the first government-private initiative in the region. SMU is recognized by the University Grants Commission and approved by the Government of India. It is the first ever Public Private Partnership (PPP) in the country for higher Education and Health Care services.
 
Sikkim Manipal University offers quality education to the students from North and North Eastern parts of India and latest health care facilities at affordable costs to the people of Sikkim. 
 
Since its inception, Sikkim Manipal University has crossed several miles stones. The University is all set to expand its educational campus to new horizons highly qualified, competent and dedicated faculty members of SMU are committed to the task of ensuring that the students graduating from the University are well trained to meet the demanding challenges of their chosen profession in this competitive world. The University plays a significant role in contributing to the nation’s talent pool. Transparent procedures, merit based intake criteria and efforts to provide the best of facilities have been marked features.
 
All courses run by SMU are approved by the regulatory bodies like Medical Council of India (MCI), Nursing Council of India, Indian Association of Physiotherapy, All India Council for Technical Education (AICTE) ,UGC and the Distance Education Council.
 
THE CONSTITUENT INSTITUTES UNDER SIKKIM MANIPAL UNIVERSITY REGULATIONS:

Sikkim Manipal Institute of Medical Sciences (SMIMS)
Sikkim Manipal Institute of Technology (SMIT)
Sikkim Manipal College of Physiotherapy
Sikkim Manipal College of Nursing
School of Basic AND Applied Sciences
SMU's Directorate of Distance Education (SMU DDE)
Click here for Organisational Structure</font></p>
      <h3><font color=green>More Detils</font></h3>
      <p>..</p>
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <p><font color=red>NOTICE</font></p>
        <p><font color=blue><marquee>New's coming soon.......</marquee></font></p>
      </div>
      <div class="well">
        <p><font color=brown>ANNOUNCEMENT</font></p>
        <p><font color=yellow><marquee>coming soon......</marquee></font></p>
      </div>
    </div>
  </div>
</div>

 click here to connect......<a href = "div1.php" title = ""><font color=red>connect!!!.</font>

</body>
</html>
