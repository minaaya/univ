<?php
//le scripte de la connexion de l'utilisateur

 session_start();

$connect = mysqli_connect('localhost','root','','univ');// connexion a la base de donnée

$username=$_POST['log'];//obtenir le usrname et password écris les champs nommé log & pwd
$password=$_POST['pwd'];

$sql="SELECT * FROM user WHERE username='$username' AND mot_passe='$password'";//le requette de vérifiction si le usernamme et password existe 

$query= mysqli_query($connect,$sql);// conformation de requétte


$num=mysqli_fetch_array($query);// parcourir ta table user


		if($num[7]==1){//si utilisateur est admin
			//sauvgarder ta saission
			$_SESSION['categorie'] = "1";
			$_SESSION['nom'] = $num[1];
			$_SESSION['prenom']= $num[2];
			$_SESSION['email']= $num[3];
			$_SESSION['username']=$username;
			$_SESSION['mot_passe']=$password;
			echo"<script>document.location='admin.php'</script>";//la page de admin
		}
		else if($num[7]==2){//si utilisateur est un user simple
			//sauvgarder ta saission


			$_SESSION['categorie'] = "2";
			$_SESSION['nom'] = $num[1];
			$_SESSION['prenom']= $num[2];
			$_SESSION['email']= $num[3];
			$_SESSION['username']=$username;
			$_SESSION['mot_passe']=$password;
			echo"<script>document.location='index.php'</script>";//l'index de utilisateur simple


		}else{

			echo"<script>alert('Votre Nom de utilisateur ou le Mot de passe est incorrecte');</script>";//si l'username ou mot de passe sont incorrecte

			echo"<script>document.location='login.php'</script>";
		}

mysqli_close($connect);//fermer la connexion a la BDD

?>
