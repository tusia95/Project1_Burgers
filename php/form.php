<?php

$mysqli = new mysqli("localhost", "root", "", "Orders");
if (mysqli_connect_errno()) {
    printf("Ошибка соединения: %s\n", mysqli_connect_error());
    exit();
}
if(isset($_POST['name'])) {
    $fullName = $_POST['name'];//по кнопке заказать не получить значение элемента массива
    echo $fullName;
    $name_arr = explode(" ", $fullName,2);
    $firstname=$name_arr[0];
    $lastname=$name_arr[1];

}
$sql = "INSERT INTO users (firstName, lastName) VALUES ('$firstname','$lastname')";
$result = $mysqli->query($sql);
//var_dump ($result);//
