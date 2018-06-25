<?php
$mysqli = new mysqli("localhost", "root", "", "Burgers");
if (mysqli_connect_errno()) {
    printf("Ошибка соединения: %s\n", mysqli_connect_error());
    exit();
}
//выводим всех пользователей
$sql="select * from Users";
$result = $mysqli->query($sql);
$data = $result->fetch_all();

//выводим имена колонок
/*$result=$mysqli->query(
     "select COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Users'");
$columns_name=$result->fetch_all();
echo "<table border = 2px>";
for ($i=0;$i<count($columns_name)-3;$i++)
{
    echo '<tr>';
foreach ($columns_name[$i] as $value) {

    echo '<th>'.$value.'</th>';
}
echo '</tr>';
}
*/

echo "<table border = 2px><tr><th>user_id</th><th>name</th><th>phone</th><th>email</th></tr>";//заголовки столбцов
for($i=0;$i<count($data);$i++) {
    echo '<tr>';
    foreach ($data[$i] as $value) {

        echo '<td>'.$value.'</td>';
    }
    echo '</tr>';
}
echo '</table>';

//выводим все заказы
$sql="select * from Orders";
$result = $mysqli->query($sql);
$data = $result->fetch_all();
//var_dump($data);
echo "<table border = 2px>";
echo "<table border = 2px><tr><th>user_id</th><th>address</th><th>comment</th><th>cardpay</th><th>no_callback</th><th>need_change</th><th>order_id</th></tr>";//заголовки столбцов
for($i=0;$i<count($data);$i++) {
    echo '<tr>';
    foreach ($data[$i] as $value) {

        echo '<td>'.$value.'</td>';
    }
    echo '</tr>';

}
echo '</table>';
