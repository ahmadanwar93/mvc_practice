<?php
    session_start(); 

    $userInputName = $_POST['userNameInput'];
    
    // we store the usernameinput in $_SESSION['userInputName']
    function userNameFunction($username){
        $_SESSION['userInputName'] = $username;
        echo "<script> location.href='../view/mobileno.php'; </script>"; 
    }
    // call the function to store the user input and redirect to mobileno
    userNameFunction($userInputName);
    




?>