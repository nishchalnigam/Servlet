<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html >
<head lang="en">
    <title>Welcome</title>
	  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
	<style>
</style>
</head>
<body>
    <% if(session.getAttribute("username").equals("nishchal") == false )
    {
        session.setAttribute("wrongname",session.getAttribute("username"));
        response.sendRedirect("index.jsp");
    }
        
    %>
    
<script type="text/javascript" language="JavaScript">
function select(obj){
	id = obj.getAttribute("class");
	switch(id) {
    case "sopra":
        alert("Skills: C#, JavaScript (jQuery), VBScript, HTML5, SQL");
        break;
    case "Times":
        alert("Skills: Linux (Ubuntu), Perl, HTML/CSS/Bootstrap");
        break;
	case "Pitt":
        alert("Courses Taken:\nInteractive System Design \nWeb Technologies\nAdaptive Information Systems");
        break;
	case "Amity":
        alert("Planned various events for the Software Engineering Club at Amity University");
        break;	
}
}

</script>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page"><a href="index.html">About Me</a></li>
    <li class="breadcrumb-item"><a href="placestovisit.html">Places I want to Visit</a></li>
    <li class="breadcrumb-item"><a href="games.html">Hobbies & Interests</a></li>
	<li class="breadcrumb-item"><a href="contact.html">Contact Me</a></li>
  </ol>
</nav>
	
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h2>About Me</h2>
      <h5><div id="logo"><img style="height:10em;object-fit:contain;float:left;margin-right:1em;" src="images/Me.jpg" alt="Nishchal"></h5>
      <p align="left">I'm a Graduate student at the University of Pittsburgh, pursuing MS in Information Science. I was a software developer at Sopra Steria, where I worked on .net Technology. I'm truly passionate about programming and can learn different languages quickly</p>
      <hr class="hidden-sm hidden-md hidden-lg">
    </div>
	<br>
	<br>
	<br>
    <div class="col-sm-8">
      <h2>Work Experience</h2>
<table class="table table-bordered table-hover">
	  <thead>
	<tr>
	<th scope="col">Company</th>
	<th scope="col">Role</th>
	<th scope="col">Year</th>
	</tr>
	</thead>
	<tbody>
	<tr align="left" onclick=select(this) class = "sopra">
	<td>Sopra Steria</td>
	<td>Software Engineer</td>
	<td>2015-2018</td>
	</tr>
	<tr align="left" onclick=select(this) class = "Times">
	<td>Times Internet Limited</td>
	<td>Intern</td>
	<td>2014</td>
	</tr>
	</tbody>
</table>
      <br>
      <h2>Education</h2>
<table class="table table-bordered table-hover">
	<tr>
	<th>University</th>
	<th>Degree</th>
	<th>Year</th>
	</tr>
	<tr align="left" onclick=select(this) class = "Pitt">
	<td>University of Pittsburgh</td>
	<td>MS Information Science</td>
	<td>2018-2020</td>
	</tr>
	<tr align="left" onclick=select(this) class = "Amity">
	<td>Amity University</td>
	<td>B.Tech CSE</td>
	<td>2011-2015</td>
	</tr>
</table>	  
    </div>
  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <p>Hail to Pitt!</p>
</div>	
</div>
</body>
</html>