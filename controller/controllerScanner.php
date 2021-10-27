<?php
session_start();
include '../view/headerFile.php';
include '../model/modelScanner.php';

$userName =  $_SESSION['userInputName'];
$tacUser = implode("",$_SESSION['tacPhone']);
$phoneUser = $_SESSION['phoneUserInput'];   
$customerId = $_SESSION['userid'];

$checkInComp = $_SESSION['checkInComp'];
// echo $checkIn_Comp;
// echo $userName;        
// echo($tacUser);
// echo $phoneUser;

// we insert the customer name and customer status into the customer table in our database.
// addNameStatus($userName);


// we want to update the tac table as well. We want to push tac_phone, tac_value, customer_id
// getCustomerId($userName);

// $customerId = $_SESSION['customerId'];


// we have the customer id already. Now, we will update the tac_phone, tac_value, customer_id in the tac table
// insertCustomerInfo($phoneUser,$tacUser,$customerId);

// we want to get the date created in the customers table



// we want to get the number of check in created from this customer


// now, we want to select company name, company address, checkin date into a new row. We want to use it for the activity later


// we want to return the list containing all the company for the drop down list in the check in sections
$row_compDropDown = companyDropDown();


// try, we want to add the check in company into tac table

$row_companyInfo= getCompanyInfo($phoneUser);

$_SESSION['checkIn_num'] = getNumberCheckIn($phoneUser);
$checkIn_num = $_SESSION['checkIn_num'];
$dateCreated = getDateCreated($customerId);
?>