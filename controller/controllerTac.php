<?php
    include '../model/modelTac.php';
    session_start(); 
    $userName =  $_SESSION['userInputName'];
    $tacUser = implode("",$_SESSION['tacPhone']);
    $phoneUser = $_SESSION['phoneUserInput'];   

    $newArr = [];
    array_push($newArr,$_POST['firstDig'],$_POST['secondDig'],$_POST['thirdDig'],$_POST['fourthDig'],$_POST['fifthDig'],$_POST['sixthDig']);


        

    if ($_SESSION['tacPhone'] == $newArr){       
        // we need to push the info into tac and customer table first before going into the scanner page
        
        // push the current user name into the customer
        addNameStatus($userName);
        $_SESSION['userid']=getCustomerId($userName);
        // echo $_SESSION['userid'];
        $userid = $_SESSION['userid'];
        // add into tac
        // insertCustomerInfo($userid);
        
        echo "<script> location.href='../view/scanner_2.php'; </script>";        
    }else{
        echo '<script language="javascript">';
        echo 'alert("Your TAC submitted just now is wrong. Please resubmit the TAC.")';
        echo '</script>';
        echo "<script> location.href='../view/index.php'; </script>";        
    }
?>