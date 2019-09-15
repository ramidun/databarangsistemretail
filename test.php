<?php
include_once(__DIR__ . "/lib/format_data.php");
include_once(__DIR__."/lib/MKPilihan.php");

$mkpilihan = new MKPilihan();
$fmt = new FormatData();
echo $fmt->build_table($mkpilihan->getAll());
