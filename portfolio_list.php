<?

  require_once('inc/config.inc.php');
  require_once(INC_DIR.'dbinit.php');

  header("Content-Type: text/xml");

  $query = "SELECT * FROM portfoliolist";
  $data = $dbh->getAll($query);	

  $path = UPLOAD_DIR;

echo $xml_data = <<<EOT
<?xml version="1.0"?>
<root>
<call result="1">
EOT;

foreach ($data as $value) {

echo <<<EOT
<item id="{$value['id']}" image="{$path}{$value['image']}"/>
EOT;

}

echo <<<EOT
</call>
</root>
EOT;

/* output sample

<?xml version="1.0"?>
<root>
  <call result="1">
    <data id="1" image="pic/celebration.jpg" />
    <data id="2" image="pic/grandtour.jpg"  />
    <data id="3" image="pic/foxauto.jpg" />
    <data id="4" image="pic/wildlotus.jpg" />
    <data id="5" image="pic/4all2date.jpg" />
    <data id="6" image="pic/wired.jpg" />
    <data id="7" image="pic/tomatovine.jpg" />
    <data id="8" image="pic/e37auto.jpg" />
    <data id="9" image="pic/3dgame.jpg" />
    <data id="11" image="pic/pic_12.jpg" />
    <data id="12" image="pic/kashwere.jpg" />
    <data id="13" image="pic/lrh.jpg" />
    <data id="14" image="pic/mta.jpg" />
    <data id="15" image="pic/nastel.jpg" />
    <data id="16" image="pic/viatrade.jpg" />
    <data id="17" image="pic/froghouse.jpg" />
    <data id="18" image="pic/rockyou.jpg" />
  </call>
</root>

*/
?>