<?php
// session_start();
// // we insert the customer name and customer status into the customer table in our database.


function addNameStatus($para1){
    include '../view/headerFile.php';
    $sql = "INSERT INTO customers (customer_name,customer_status) VALUES ('$para1',1)";
    if ($conn->query($sql) === TRUE) {
        echo '<script language="javascript">';
        echo 'alert("Welcome, '.$para1.'")';
        echo '</script>';
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
    return $row;
}

function insertCustomerInfo($para4, $para5, $para6){
    include '../view/headerFile.php';
    // $sql = "INSERT INTO tac (firstname, lastname, email)
    // VALUES ('John', 'Doe', 'john@example.com')";    
    $sql = "INSERT INTO tac (tac_phone,tac_value,customers_id,) VALUES ('$para4','$para5','$para6')";
    if ($conn->query($sql) === TRUE) {
        echo 'successinsercustomer';
    }else{
        // echo 'failureinsertcustomer';
        echo $para4;
    }
}

function getDateCreated($para7){
    include '../view/headerFile.php';
    // we want to get the date created in the customers table
    $sql = "SELECT customer_date_created FROM customers WHERE customers_id = '$para7'";
    $result_3 = $conn->query($sql);
    $row_3 = $result_3->fetch_all(MYSQLI_ASSOC);
    // print_r($row_3);
    $dateTimeCreated = explode(" ", $row_3[0]['customer_date_created']);
    $dateCreated = $dateTimeCreated[0];
    // echo $dateCreated;
    $_SESSION['dateCreated']= $dateCreated;
    // return $row_3;
    return $dateCreated;
}

function getNumberCheckIn($para8){
    include '../view/headerFile.php';
    $sql = "SELECT checkin_phone, COUNT(checkin_phone) FROM `checkin` WHERE checkin_phone = '$para8' GROUP BY checkin_phone;";
    $result_4 = $conn->query($sql);
    $row_4 = $result_4->fetch_all(MYSQLI_ASSOC);
    // print_r($row_4);
    // $checkIn_num = $row_4[0]['COUNT(checkin_phone)'];
    // return $checkIn_num;
    // echo $checkIn_num;
   
    return $row_4;
}

function getCompanyInfo($para9){
    include '../view/headerFile.php';
    $sql_2 = "SELECT checkin_phone, company_branch,company_name,checkin_date_created FROM `company` INNER JOIN `checkin` ON checkin.checkin_location = company.company_id WHERE checkin_phone = '$para9'";
    $result_4 = $conn->query($sql_2);
    $row_4 = $result_4->fetch_all(MYSQLI_ASSOC);
    return $row_4;
}


function companyDropDown(){
    include '../view/headerFile.php';
    // we want to place a drop down list for the user to select which company branch they want to check in
    $sql = "SELECT company_id, company_branch,company_name FROM company";
    $result = $conn->query($sql);
    $row_2 = $result->fetch_all(MYSQLI_ASSOC);
    // print_r ($row_2);
    return $row_2;
}





?>