<?php

if(isset($_POST['name'])) {
    $name = $_POST['name'];//по кнопке заказать не получить значение элемента массива
   $phone_number=$_POST['phone'];
   $email=$_POST['email'];
    //устанавливаем соединение с БД
    $mysqli = new mysqli("localhost", "root", "", "Burgers");
    if (mysqli_connect_errno()) {
        printf("Ошибка соединения: %s\n", mysqli_connect_error());
        exit();
    }
        $sql = "INSERT INTO Users (name, phone_number,email) VALUES ('$name','$phone_number','email')";
        $result = $mysqli->query($sql);

    if ($result = 'true'){
        echo "Информация занесена в базу данных";
    }else{
        echo "Информация не занесена в базу данных";
    }

}

//var_dump ($result);//
