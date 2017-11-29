<?php
	require_once "config.php";
	include_once "functions.php";

	$sql = "SELECT * FROM congvandi";
			$danhsach = mysqli_query($link, $sql);
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Required meta tags -->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<title>iNews</title>
		<link rel="shortcut icon" type="image/x-icon" href="images/inews.png" />

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-custom.css" />
	</head>
	<body>
		<div class="container">
			<?php include_once "navbar.php"; ?>
			<div class="card" style="margin-top: 10px;margin-bottom: 10px;">
				<h4 class="card-header">Công văn đi</h4>
				<div class="card-body">
					<?php
						while($dong = mysqli_fetch_array($danhsach))
						{
							/*echo"<div class='list-group'>";
								 echo"<a href='#' class='list-group-item list-group-item-action flex-column align-items-start active'>";
								    echo"<div class='d-flex w-100 justify-content-between'>";
								     echo" <h5 class='mb-1'>{$dong['Noidungtomtat']}</h5>";
								      //echo"<small>{($dong['Ngaygoi']}</small>";
								    echo"</div>";
								    echo"<p class='mb-1'>{$dong['Noidungvanban']}</p>";
								    echo"<small>{$dong['Tongsotrang']}</small>";
								  echo"</a>";
							echo"</div>";*/
							echo "<div class=list-group>";
								//echo "<div class='card list-books'>";
									echo "<div class='card-body'>";
										echo "<h5 class='card-title'>{$dong['Noidungtomtat']}</h5>";
										echo" dowload:<a href='xuly.php?Filedinhkem={$dong['Filedinhkem']}'>{$dong['Filedinhkem']}</a>";
										//echo"<input type='button' onclick='xuly.php?filename=abc.pdf' name='Filedinhkem' value='dowload'>{$dong['Filedinhkem']}";
										echo "<h6 class='card-title'>Loại văn bản: {$dong['Loaivanban']}</h6>";
										echo"<h7 class='card-tittle'>Người gửi: {$dong['Nguoigoi']}</h7>";

										echo "<p class='card-text'> Tổng số trang: {$dong['Tongsotrang']}</p>";
										//echo "<p class='card-text'>{($dong['Filedinhkem']}</p>";
									echo "</div>";
									echo "<div class='card-footer'>";
										//echo "<p class='card-text'>{($dong['Ngaygoi']}</p>";
									echo "</div>";
								echo "</div>";
							echo "</div>";
						}
					?>
				</div>
			</div>
		</div>

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>
