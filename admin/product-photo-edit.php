<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

	if(empty($_POST['p_product_caption'])) {
        $valid = 0;
        $error_message .= "Product photo Caption Name can not be empty<br>";
    }

    $path = $_FILES['photo']['name'];
    $path_tmp = $_FILES['photo']['tmp_name'];

    if($path != '') {
    	$ext = pathinfo( $path, PATHINFO_EXTENSION );
        $file_name = basename( $path, '.' . $ext );
        if( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' ) {
            $valid = 0;
            $error_message .= 'You must have to upload jpg, jpeg, gif or png file<br>';
        }
    }
       
    if($valid == 1) {

    	if($path == '') {
    		// updating into the database
			$statement = $pdo->prepare("UPDATE tbl_photo_product SET p_product_caption=?, p_name_id=? WHERE p_photo_id=?");
			$statement->execute(array($_POST['p_product_caption'],$_POST['p_name_id'],$_REQUEST['id']));
    	} else {
    		unlink('../assets/uploads/'.$_POST['previous_photo']);

    		$final_name = 'product-photo-'.$_REQUEST['id'].'.'.$ext;
        	move_uploaded_file( $path_tmp, '../assets/uploads/'.$final_name );

        	// updating into the database
			$statement = $pdo->prepare("UPDATE tbl_photo_product SET p_product_caption=?, photo_name=?, p_name_id=? WHERE p_photo_id=?");
			$statement->execute(array($_POST['p_product_caption'],$final_name,$_POST['p_name_id'],$_REQUEST['id']));
    	}
    	
    	$success_message = 'Product Photo is updated successfully.';
    }
}
?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM tbl_photo_product WHERE p_photo_id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	if( $total == 0 ) {
		header('location: logout.php');
		exit;
	}
}
?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Edit Product photo</h1>
	</div>
	<div class="content-header-right">
		<a href="product-photo.php" class="btn btn-primary btn-sm">View All</a>
	</div>
</section>

<?php							
foreach ($result as $row) {
	$p_product_caption = $row['p_product_caption'];
	$photo_name = $row['photo_name'];
	$p_category_id = $row['p_name_id'];
}
?>

<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if($error_message): ?>
			<div class="callout callout-danger">
			
			<p>
			<?php echo $error_message; ?>
			</p>
			</div>
			<?php endif; ?>

			<?php if($success_message): ?>
			<div class="callout callout-success">
			
			<p><?php echo $success_message; ?></p>
			</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Product Photo Caption <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" class="form-control" name="p_product_caption" value="<?php echo $p_product_caption ?>">
							</div>
						</div>
						<div class="form-group">
				            <label for="" class="col-sm-2 control-label">Existing Photo</label>
				            <div class="col-sm-6" style="padding-top:6px;">
				                <img src="../assets/uploads/product/<?php echo $photo_name; ?>" class="existing-photo" style="width:300px;">

				                <input type="hidden" name="previous_photo" value="<?php echo $photo_name; ?>">
				            </div>
				        </div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Upload New Photo <span>*</span></label>
							<div class="col-sm-4" style="padding-top:6px;">
								<input type="file" name="photo">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label">Product Name <span>*</span></label>
							<div class="col-sm-4">
								<select class="form-control" name="p_name_id">
									<?php
									$statement = $pdo->prepare("SELECT * FROM tbl_product ORDER BY product_caption ASC");
									$statement->execute();
									$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
									foreach ($result as $row) {
										if($row['p_name_id'] == $p_category_id) {
											$selected = 'selected';
										} else {
											$selected = '';
										}
										echo '<option value="'.$row['product_id'].'" '.$selected.'>'.$row['product_caption'].'</option>';
									}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-2 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Submit</button>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>

<?php require_once('footer.php'); ?>