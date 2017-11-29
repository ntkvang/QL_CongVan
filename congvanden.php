<?php
	require_once "config.php";
	include_once "functions.php";

	$sql = "SELECT * FROM congvande";
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

			<div class="card">
				<h4 class="card-header">Công văn đến</h4>
				<div class="card-body">
					<p><a class="btn btn-primary" href="congvanden_them.php" role="button">Thêm công văn đến</a></p>

					<table class="table table-bordered table-hover table-responsive">
						<thead>
							<tr>
								<th width="5%">#</th>
								<!--<th width="20%">Người Ký</th>-->
								<th width="10%">Người duyệt</th>
								<!--<th width="5%">Ngày ban hành</th>
								<th width="5%">Nơi ban hành</th>
								<th width="5%">Ngày gởi</th>-->
								<th width="10%">Người gởi</th>
								<th width="5">Số trang</th>
								<th width="10">Loại văn bản</th>
								<th width="5">lĩnh vực</th>
								<th width="15%">Nội dung tóm tắt</th>
								<th width="10%">File đính kèm</th>
								<th width="10%">Ghi chu</th>
								<th width="5%">Sửa</th>
								<th width="5%">Xóa</th>
							</tr>
						</thead>
						<tbody>
							<?php
								while($dong = mysqli_fetch_array($danhsach))
								{
									echo "<tr>";
										echo "<th>{$dong['ID']}</th>";
										//echo "<td>{$dong['Nguoiky']}</td>";
										echo "<td>{$dong['Nguoiduyet']}</td>";
										//echo "<td>{$dong['Ngaybanhanh']}</td>";
										//echo "<td>{$dong['Noibanhanh']}</td>";
										//echo "<td>{$dong['Ngaygoi']}</td>";
										echo "<td>{$dong['Nguoinhan']}</td>";
										echo "<td>{$dong['Tongtrang']}</td>";
										echo "<td>{$dong['Loaivanban']}</td>";
										echo "<td>{$dong['Linhvuc']}</td>";
										echo "<td>{$dong['Noidungtomtat']}</td>";
										echo "<td>{$dong['Filedinhkem']}</td>";
										echo "<td>{$dong['Ghichu']}</td>";
											echo "<td class='text-center'><a href='congvanden_sua.php?id={$dong['ID']}'><img src='img/edit.png' /></a></td>";
											echo "<td class='text-center'><a onclick='return confirm(\"Bạn có muốn xóa công văn đi {$dong['Loaivanban']} không?\");' href='congvanden_xoa.php?id={$dong['ID']}'><img src='img/delete.png' /></a></td>";

									echo "</tr>";
								}
							?>
						</tbody>
					</table>
				</div>
			</div>

			<hr />
			<footer>Bản quyền &copy; <?php echo date("Y") ?> bởi DH15TH.</footer>
		</div>

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
	</body>
</html>
