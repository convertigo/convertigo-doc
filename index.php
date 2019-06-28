<?php
if ($_GET["v"]) {
	$dir = "./";
	$filters = array(".","..");
	$folders = scandir($dir,1);
	$cleanFolders= array_diff($folders,$filters);

	$versions = array();

	try{
        for ($i=0; $i < count($cleanFolders); $i++){
            if(is_dir($cleanFolders[$i]))
                array_push($versions,$cleanFolders[$i]);
        }
		header("Content-Type: application/json");
		echo json_encode($versions, JSON_FORCE_OBJECT);
	}
	catch(E_WARNING $e){
		echo "Can't read folders ".$e;
	}
} else {
	header("Location: develop/");
}