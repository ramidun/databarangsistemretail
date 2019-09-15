<?php
class FormatData
{
    function build_table($array)
    {
        $html = '<center><h1>Data Barang dari Sistem Retail</h1><table border=2>';
        // header row
        $html .= '<tr>';
        foreach ($array[0] as $key => $value) {
            $html .= '<th>' . htmlspecialchars($key) . '</th>';
        }
        $html .= '</tr>';

        // data rows
        foreach ($array as $key => $value) {
            $html .= '<tr>';
            foreach ($value as $key2 => $value2) {
                $html .= '<td>' . htmlspecialchars($value2) . '</td>';
            }
            $html .= '</tr>';
        }

        // finish table and return it

        $html .= '</table></center>';
        return $html;
    }
    function build_xml($array, $label_data)
    {
        header("Content-Type:application/xml");
        header("Access-Control-Allow-Origin:*");
        echo "<Data" . $label_data . ">";
        foreach ($array as $k => $v) {
            echo "<$label_data>";
            foreach ($v as $key => $value) {
                echo "<$key>";
                echo $value;
                echo "</$key>";
            }
            echo "</$label_data>";
        }
        echo "</Data" . $label_data . ">";
    }
}
