<?php
	session_start();
	$link = mysqli_connect("localhost", "root", "", "127_0_0_1 (3)") or die ("no connect");
	mysqli_query($link, "SET NAMES 'utf8'");
?>
