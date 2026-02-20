<link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.css">
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" href="style.css">

<?php 
$query = "SELECT * FROM tbl_theme WHERE id = '1' ";
$themes = $db->select($query);
$theme = 'default';

if ($themes) {
    $result = $themes->fetch_assoc();
    $theme = $result['theme'];
}

if (!file_exists("theme/$theme.css")) {
    $theme = "default";
}
?>

<link rel="stylesheet" href="theme/<?php echo $theme; ?>.css">
