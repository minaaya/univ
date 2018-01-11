<?php
$connect = mysqli_connect('localhost','root','','univ');
//affichege des modules
$sql="SELECT * FROM module ";//id_module
$res=mysqli_query($connect,$sql);
while ($row=mysqli_fetch_array($res)) {
  echo $row['Titre_Module'];
}
//affichage doc
$sqll="SELECT * FROM doc WHERE ID_Moduel = $row[1] ";//id_module
$ress=mysqli_query($connect,$sqll);
while ($roww=mysqli_fetch_array($ress)) {
  echo $roww[2];
}

 ?>
