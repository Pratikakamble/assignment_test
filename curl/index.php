<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Comptible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>

 <?php
if(isset($_FILES['FILENAME']['tmp_name']))
{
    $ch = curl_init();
    $cfile = new CURLFile($_FILES['FILENAME']['tmp_name'],$_FILES['FILENAME']['type'], $_FILES['FILENAME']['name']);
    $data = array("myimage" => $cfile);
    curl_setopt($ch, CURLOPT_URL, "http://localhost/curl/upload.php");
    curl_setopt($ch, CURLOPT_POST, true);

    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);

    $response = curl_exec($ch);
    if($response){
    ?>
    <div class="alert alert-success alert-dismissible ">
      <button type="button" class="close" data-dismiss="alert">&times;</button>
      <strong>Success!</strong> File Posted.
    </div>
<?php
    }else{
        echo "Error:".curl_error($ch);
    }
}  
?>
<div class="container mt-5">
    <h4 class="mb-4">Assignment 4 : File Uploading using CURL</h4>
<form method="post" enctype="multipart/form-data">
    <input type="file" name="FILENAME">
    <button type="submit" name="submit">submit</button>
</form>
<hr>
<?php
$arrFiles = array();
$iterator = new FilesystemIterator("uploads");
?><ol><?php
foreach($iterator as $entry) {
    echo "<li>".$entry->getFilename()."</li>";
}
?>
</ol>
</div>

</body>
</html>