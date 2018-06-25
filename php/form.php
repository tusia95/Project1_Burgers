<?php

if(isset($_POST['email'])) {
    $name = $_POST['name'];
    $phone_number = $_POST['phone'];
    $email = $_POST['email'];
    $address = 'улица ' . $_POST['street'] . ' ' . $_POST['home'] . ' к ' . $_POST['part'] . ' кв. ' . $_POST['appt'] . ' этаж ' . $_POST['floor'];
    $comment = $_POST['comment'];
    $need_change = $_POST['change'];
    $card_pay = $_POST['payment'];
    $no_callback = $_POST['callback'];
    //echo $card_payment;


    //устанавливаем соединение с БД
    $mysqli = new mysqli("localhost", "root", "", "Burgers");
    if (mysqli_connect_errno()) {
        printf("Ошибка соединения: %s\n", mysqli_connect_error());
        exit();
    }
    $sql = "select * from Users where email='$email'";
    $result = $mysqli->query($sql);
    $user_id = 0;
    $orders_num = 0;
    //пользователь с введенным email уже есть в базе данных
    if ($result->num_rows) {
        $data = $result->fetch_all();
        $user_id = $data[0][0];
        echo $user_id;
        //подсчитываем кол-во заказов данного пользователя
        $sql = "select count(*) from Orders where user_id='$user_id'";
        $count_result = $mysqli->query($sql);
        $numorders_data = $count_result->fetch_all();
        $orders_num = $numorders_data[0][0] + 1;
        echo $orders_num;
    } //новый пользователь совершает заказ
    else {
        $sql = "INSERT INTO Users (name, phone_number,email) VALUES ('$name','$phone_number','$email')";
        $result = $mysqli->query($sql);
        $sql = "select user_id from Users where email='$email'";
        $result = $mysqli->query($sql);
        $data = $result->fetch_all();
        $user_id = $data[0][0];
        $orders_num = 1;
    }
//вставка данных в таблицу Orders по user_id
    $order_id = rand(1, 2000);//!!!!нужно добавить обработку ошибки при попытке вставить заказ с неуникальным id
    $sql = "INSERT INTO Orders (user_id,address,comment,card_pay,no_callback,need_change,order_id) VALUES ('$user_id','$address','$comment','$card_pay','$no_callback','$need_change','$order_id')";
    $result = $mysqli->query($sql);
    if ($result = 'true') {
        echo "Информация занесена в базу данных";
    } else {
        echo "Информация не занесена в базу данных";
    }

//запись данных о заказе в файл
    $mail_header = 'Заказ № ' . $order_id . PHP_EOL;
    $mail_text = 'Ваш заказ будет доставлен по адресу: ' . $address . PHP_EOL . 'Содержимое заказа:DarkBeefBurger за 500 рублей, 1 шт'.PHP_EOL;
    if ($orders_num == 1) {
        $mail_thank = 'Спасибо! Это Ваш первый заказ';
    } else {
        $mail_thank = 'Спасибо! Это уже ' . $orders_num . ' заказ.';
    }
//записываем данные в создаваемый файл
    $orders_data = $mail_header . $mail_text . $mail_thank;
    $name_dir= date("j F Y G-i-s A");
    //echo $name_dir;
    mkdir($_SERVER['DOCUMENT_ROOT'].'/php/'.$name_dir,0777);

    //$dir=opendir($name_dir);
    file_put_contents($name_dir.'/order.txt', $orders_data);
//var_dump ($result);*/
}
