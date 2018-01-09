<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Sign In</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
		      <form class="form-login" action="inscreption.php" method="post">
		        
		        <h2 class="form-login-heading">sign in now</h2>
		        
		        <div class="login-wrap">
		        
		            <input type="text" class="form-control" name="nom" placeholder="Nom" autofocus>
		            <br>
		       		  <input type="text" class="form-control" name="prenom" placeholder="Prenom" autofocus>
		            <br>
		            <input type="text" class="form-control" name="username" placeholder="Username" autofocus>
		            <br>
		        	 <input type="email" class="form-control" name="email" placeholder="E-mail" autofocus>
		            <br>
		        
		            <input type="password" class="form-control" name="password" placeholder="Password">
					<br>
					<input type="password" class="form-control" name="re-password" placeholder="Re-Password">
		           <br>
		           <select name="annee" id="Année">
						<option value="1">Licence 1</option>
						<option value="2">Licence 2</option>
						<option value="3">Licence 3</option>
						<option value="4">Master 1</option>
						<option value="5">Master 2</option>
						<option value="6">Autre..</option>
					</select>
					<br>
					<br>
		            <button class="btn btn-theme btn-block" name="submit" type="submit"><i class="fa fa-lock"></i> SIGN IN</button>
		            <hr>
		              
				 <div class="login-social-link centered">
		            <p>you can visit us in social Media</p>
		                <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i>Facebook</button>
		            </div>
		        </div>
		
		          <!-- Modal -->
		        
		          <!-- modal -->
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("assets/img/login-bg.jpg", {speed: 500});
    </script>


  </body>
</html>
