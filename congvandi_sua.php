<?php
	require_once "config.php";
	include_once "functions.php";

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

		<?php include_once "navbar.php"; ?>
			<div class="container" style="margin: 5% 8% 2% 5%;">
			<div class="card">
				<h4 class="card-header">Thêm công văn đi</h4>
				<div class="card-body">
					<?php
						if(isset($_POST['Nguoiky']))
						{
							$ID=addslashes($_POST['ID']);

							$Nguoiky=addslashes($_POST['Nguoiky']);
							$Nguoiduyet=addslashes($_POST['Nguoiduyet']);
							$Noibanhanh=addslashes($_POST['Noibanhanh']);
							$Nguoigoi=addslashes($_POST['Nguoigoi']);
							$Tongsotrang=addslashes($_POST['Tongsotrang']);
							$Loaivanban = addslashes($_POST['Loaivanban']);
							$Linhvuc=addslashes($_POST['Linhvuc']);

							$Noidungtomtat = addslashes($_POST['Noidungtomtat']);
							$Noidungvanban = addslashes($_POST['Noidungvanban']);
							$Filedinhkem=addslashes($_POST['Filedinhkem']);

							$Ghichu = addslashes($_POST['Ghichu']);


							if(trim($Nguoiky) == "")
							ThongBaoLoi("Người ký không được bỏ trống!");
							else
								if(trim($Nguoiduyet) == "")
								ThongBaoLoi("Người duyệt không được bỏ trống!");
							else
								if(trim($Noibanhanh) == "")
								ThongBaoLoi("Nơi ban hành không được bỏ trống!");
							else
								if(trim($Nguoigoi) == "")
								ThongBaoLoi("Người gởi không được bỏ trống!");
							else
								if(trim($Tongsotrang) == "")
								ThongBaoLoi("Tổng số trang không được bỏ trống!");
							else
								if(trim($Loaivanban) == "")
								ThongBaoLoi("Loại văn bản không được bỏ trống!");
							else
								if(trim($Linhvuc) == "")
								ThongBaoLoi("Lĩnh vực không được bỏ trống!");
							else
								if(trim($Noidungtomtat) == "")
								ThongBaoLoi("Nội dung tóm tắt không được bỏ trống!");
							else
								if(trim($Noidungvanban) == "")
								ThongBaoLoi("Nội dung văn bản không được bỏ trống!");
							else
								if(trim($Filedinhkem)=="")
									ThongBaoLoi("File đính kèm không được bỏ trống!");
							else
								if(trim($Ghichu) == "")
								ThongBaoLoi("Ghi chu không được bỏ trống!");

							else
							{
								$sql="UPDATE `congvandi` SET `Nguoiky`='$Nguoiky',`Nguoiduyet`='$Nguoiduyet',`Ngaybanhanh`=now(),`Noibanhanh`='$Noibanhanh',`Ngaygoi`=now(),`Nguoigoi`='$Nguoigoi',`Tongsotrang`=$Tongsotrang,`Loaivanban`=$Loaivanban,`Linhvuc`='$Loaivanban',`Noidungtomtat`='$Noidungtomtat',`Noidungvanban`='$Noidungvanban',`Filedinhkem`='$Filedinhkem',`Ghichu`='$Ghichu' WHERE ID=$ID";
								if($kq)
									header("Location: congvandi.php");
								elseif(mysqli_errno($link) == 1062)
									ThongBaoLoi("Chủ đề <strong>$Loaivanban</strong> đã tồn tại!");
								else
									ThongBaoLoi(mysqli_error($link));


							}
						}
						$id = $_GET['id'];

							$sql = "SELECT * FROM congvandi WHERE ID = $id";
							$danhsach = mysqli_query($link, $sql);

							// Vì chỉ trả về 1 dòng nên không cần vòng lặp while
							$dong = mysqli_fetch_array($danhsach);
					?>

					<form method="post" action="congvandi_sua.php">
						<div class="form-group">
						      <label for="Loaivanban">Loại văn bản</label>
						      <select class="form-control" id="Loaivanban" name="Loaivanban" value="<?php echo $dong['Loaivanban'] ?>">

						        <option value="">-- Chọn loại công văn --</option>
								<?php
									foreach($danhsach as $value)
									{
										if($dong['MaNhaXB'] == $value['ID'])
											echo "<option value='{$value['ID']}' selected='selected'>{$value['Loaivanban']}</option>";
										else
											echo "<option value='{$value['ID']}'>{$value['Loaivanban']}</option>";
									}
								?>
						      </select>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">

								<label for="Nguoiky">Người Ký </label>
								<input type="text" class="form-control" id="Nguoiky" name="Nguoiky" value="<?php echo $dong['Nguoiky'] ?>" />
							</div>
							<div class="form-group col-md-6">
								<label for="Nguoiduyet">Người Duyệt</label>
								<input type="text" class="form-control" id="Nguoiduyet" name="Nguoiduyet" value="<?php echo $dong['Nguoiduyet'] ?>" />
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="Noibanhanh">Nơi Ban Hành</label>
								<input type="text" class="form-control" id="Noibanhanh" name="Noibanhanh" value="<?php echo $dong['Noibanhanh'] ?>" />
							</div>


						</div>

						<div class="form-row">
							<div class="form-group col-md-6">
								<label for="Nguoigoi">Người gửi</label>
								<input type="text" class="form-control" id="Nguoigoi" name="Nguoigoi" value="<?php echo $dong['Nguoigoi'] ?>"/>
							</div>
							<div class="form-group col-md-2">
								<label for="Tongsotrang">Tổng số trang</label>
								<input type="text" class="form-control" id="Tongsotrang" name="Tongsotrang" value="<?php echo $dong['Tongsotrang'] ?>" />
							</div>
							<div class="form-group col-md-4">
								<label for="Linhvuc">Lĩnh vực</label>
								<input type="text" class="form-control" id="Linhvuc" name="Linhvuc" value="<?php echo $dong['Linhvuc'] ?>" />
							</div>
						</div>
						<div class="form-group">
							<label for="Noidungtomtat">Tóm tắt</label>
							<textarea class="form-control" id="Noidungtomtat" name="Noidungtomtat" value="<?php echo $dong['Noidungtomtat'] ?>" ></textarea>
						</div>
						<div class="form-group">
							<label for="Noidungvanban">Nội dung</label>
							<textarea class="form-control ckeditor" id="Noidungvanban" name="Noidungvanban" value="<?php echo $dong['Noidungvanban'] ?>" ></textarea>
						</div>
						<div class="form-group">

							<label for="Filedinhkem">File đính kèm</label>
								<div class="input-group mb-2 mb-sm-0">
								<div class="input-group-addon">
								<?php
									//$path = "http://localhost/quanly_CongVan-master/file/";
									// $_SESSION['baseUrl'] = $path;
								?>
									<a href="#" onclick="BrowseServer();">File đính kèm</a> </div>
								<input type="file" class="form-control" id="Filedinhkem" name="Filedinhkem" value="<?php echo $dong['Filedinhkem'] ?>" />
							</div>


						</div>

						<div class="form-group">
							<label for="Ghichu">Ghi chú</label>
							<textarea class="form-control" id="Ghichu" name="Ghichu" value="<?php echo $dong['Ghichu'] ?>" ></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Cập nhật vào CSDL</button>

					</form>
				</div>
			</div>

			<hr />

		</div>
		<?php include_once "footer.php"; ?>
		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="js/jquery-3.2.1.min.js"></script>
		<script src="js/popper.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/ckeditor/ckeditor.js"></script>
		<script src="js/ckfinder/ckfinder.js"></script>
	      <script type="text/javascript">
	      function BrowseServer()
	      {
	        var finder = new CKFinder();
	        finder.basePath = '../';
	        // finder.selectActionFunction = function(fileUrl) {
	        //   document.getElementById('Filedinhkem').value = fileUrl.substring(fileUrl.lastIndexOf('/') + 1);
	        // };
	        finder.popup();
	    }
	</script>
			</body>
</html>
