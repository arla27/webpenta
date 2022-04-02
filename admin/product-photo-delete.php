<?php require_once('header.php'); ?>

<?php
if(!isset($_REQUEST['id'])) {
	header('location: logout.php');
	exit;
} else {
	// Check the id is valid or not
	$statement = $pdo->prepare("SELECT * FROM tbl_photo_product WHERE p_photo_id=?");
	$statement->execute(array($_REQUEST['id']));
	$total = $statement->rowCount();
	if( $total == 0 ) {
		header('location: logout.php');
		exit;
	}
}
	
// Getting product ID to unlink from folder
$statement = $pdo->prepare("SELECT * FROM tbl_photo_product WHERE p_photo_id=?");
$statement->execute(array($_REQUEST['id']));
$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
foreach ($result as $row) {
	$photo_name = $row['photo_name'];
}

// Unlink the roduct
if($photo_name!='') {
	unlink('../assets/uploads/product'.$photo_name);
}

// Delete from tbl_photo_product
$statement = $pdo->prepare("DELETE FROM tbl_photo_product WHERE p_photo_id=?");
$statement->execute(array($_REQUEST['id']));

header('location: product-photo.php');
?>