<html>
<head>
<?php session_start(); ?>
</head>


<body>
<?php
    // [1,2,3,4,5,6]
    $newArr = [];
    array_push($newArr,$_POST['firstDig'],$_POST['secondDig'],$_POST['thirdDig'],$_POST['fourthDig'],$_POST['fifthDig'],$_POST['sixthDig']);
    if ($_SESSION['tacPhone'] == $newArr){        
        echo "<script> location.href='scanner.php'; </script>";        
    }else{
        echo '<script language="javascript">';
        echo 'alert("Your TAC submitted just now is wrong. Please resubmit the TAC.")';
        echo '</script>';
        echo "<script> location.href='index.php'; </script>";        
    }
    ?>
</body>



</html>