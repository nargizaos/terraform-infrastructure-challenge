<?php
$link = mysql_connect('<your_aws_mysql_rds_endpoint>', 'myuser', 'mypassword');
if (!$link)
{
die('Could not connect: ' . mysql_error());
}
else
{
$selectdb = mysql_select_db("mydb");
if (!$selectdb)
{
die('Could not connect: ' . mysql_error());
}
else
{
$data = mysql_query("SELECT visits FROM counter");
if (!$data)
{
die('Could not connect: ' . mysql_error());
}
else
{
$add=mysql_query("UPDATE counter SET visits = visits+1");
if(!$add)
{
die('Could not connect: ' . mysql_error());
}
else
{
print "<table><tr><th>Visits</th></tr>";
while($value=mysql_fetch_array($data))
{
print "<tr><td>".$value['visits']."</td></tr>";
}
print "</table>";
}
}
}
}
mysql_close($link);
?>