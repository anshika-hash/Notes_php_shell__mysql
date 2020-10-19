file.html

<form action="upload.php" method="post" enctype="multipart/form-data">
    <input type="file" name="file" />
    <input type="submit" name="send" />
</form>
--------------------------------------------------------

file.php

$f=$_FILES["file"];
...
move_uploaded_file($f("tmp_name"], "photos/".$f["name"]);  //"tep_name" upload file by server."photos/" where we want to store this file.
?>
