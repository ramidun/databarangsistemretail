<?php
include_once (__DIR__ . "/DB.php");
class MKPilihan{
    private $table_name='harga_barang';
    private $db = null;

    function __construct(){
        if ($this->db ==  null){
            $conn = new DB();
            $this->db = $conn->db;
        }
    }

    function getAll(){
        // return "test";
        $kueri = "SELECT * FROM ".$this->table_name." ORDER BY kode_barang";
        $hasil = $this->db->query($kueri) or die ("Error ".$this->db->connect_error);
        $data = array();
        while ($row = $hasil->fetch_assoc()){
            $data[]=$row;
        }
        return $data;
    }
}