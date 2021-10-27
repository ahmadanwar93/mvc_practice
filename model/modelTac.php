<?php

function insertCustomerInfo($para6){
    include '../view/headerFile.php';
        
    $sql = "INSERT INTO tac (customers_id) VALUES ('$para6')";
    if ($conn->query($sql) === TRUE) {
        // echo 'good';
    } else {
        echo "There is an error with your user name, please contact the admin";
    };
}

function addNameStatus($para1){
    include '../view/headerFile.php';
    $sql = "INSERT INTO customers (customer_name,customer_status) VALUES ('$para1',1)";
    if ($conn->query($sql) === TRUE) {
        // echo '<script language="javascript">';
        // echo 'alert("Welcome, '.$para1.'")';
        // echo '</script>';
    } else {
        echo "There is an error with your user name, please contact the admin";
    };
}

function getCustomerId($para3){
    include '../view/headerFile.php';
    // we need to get the customer id first
    // echo $userName;
    $sql = "SELECT customers_id, customer_name FROM customers WHERE customer_name = '$para3'";
    $result = $conn->query($sql);
    // $row is the associative array that has been returned from the SQL query
    $row = $result->fetch_all(MYSQLI_ASSOC);
    // print_r($row);
    $customerId = $row[0]['customers_id'];
    $_SESSION['customerId'] = $customerId;
    // echo $customerId;
    return $customerId;
}


?>