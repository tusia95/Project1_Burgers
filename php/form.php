<?php
/**
 * Created by PhpStorm.
 * User: Роман Бурмистров
 * Date: 19.06.2018
 * Time: 21:55
 */

$mysqli = new mysqli("localhost", "root", " ", "Orders");
if (mysqli_connect_errno()) {
    printf("Ошибка соединения: %s\n", mysqli_connect_error());
    exit();
}