<?php
    session_start(); 

    $phoneUserInput = $_POST['phone'];
    $_SESSION['phoneUserInput'] = $phoneUserInput;
    
    function mobileNumberFunction($phoneNumber){        
        // $_SESSION['phoneUserInput'] = $phoneUserInput; 
        echo "<script> location.href='../view/tacno.php'; </script>"; 
    }
    // call the function to store the user input and redirect to mobileno
    mobileNumberFunction($phoneUserInput);




?>