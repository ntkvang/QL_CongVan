<?php

$fname=$_GET["Filedinhkem"];
//Mở file
fopen('filedown/'.$fname,"rb");
header("Content-Type:application/octect-stream");
header("content-Disposition:attachment;Filedinhkem".$fname);
fpassthru($fname);
fclose($fname);

?>
