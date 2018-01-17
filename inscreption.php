<?php
session_start();
 require_once('connexion_bd.php');
$test=false;
if(isset($_POST['submit'])){
	$nom=$_POST['nom'];
	$prenom=$_POST['prenom'];
	$username=$_POST['username'];
	$email=$_POST['email'];
	$password=$_POST['password'];
	$confermer=$_POST['re-password'];
	$annee=$_POST['annee'];
	$categorie=2;
	if($nom&&$prenom&&$username&&$email&&$password&&$confermer &&$annee){
	if($password==$confermer){
	$req ="SELECT * FROM user WHERE username='$username'";
	$query=mysqli_query($connect,$req);
	$row=mysqli_num_rows($query);
		if($row==0){
			$test=true;
		$sql="INSERT INTO user(nom,prenom,username,email,mot_passe,annee,categorie) VALUES ('$nom','$prenom','$username','$email','$password','$annee','$categorie')";
		$query2=mysqli_query($connect,$sql);
	}else{
		echo"<script>alert('Votre Nom de utilisateur est déja réservé');</script>";
		echo"<script>document.location='index.php'</script>";}
	}else{
		echo"<script>alert('LE mot de passe et le re-mot de passe sont pas les méme');</script>";
		echo"<script>document.location='index.php'</script>";}
  }else{
	echo"<script>alert('Remplir tout les champs SVP ');</script>";
	echo"<script>document.location='index.php'</script>";}
 if($test){
 echo"<script>alert('t'a bien inscris Merci');</script>";
 $_SESSION['categorie'] = $categorie;
 $_SESSION['nom'] = $nom;
 $_SESSION['prenom']= $prenom;
 $_SESSION['email']= $email;
 $_SESSION['username']=$username;
 $_SESSION['mot_passe']=$password;
 echo"<script>document.location='index.php'</script>";
 }
}
?>
