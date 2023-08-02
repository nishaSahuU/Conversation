<?php
$showError = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include '_dbconnect.php';
    $user_name = $_POST['signupName'];
    $user_email = $_POST['signupEmail'];
    $pass = $_POST['signupPassword'];
    $cpass = $_POST['signupcPassword'];

    $exitSql = "SELECT * FROM `signup` where user_email ='$user_email'";
    $result = mysqli_query($conn, $exitSql);
    $numrows = mysqli_num_rows($result);
    if ($numrows > 0) {
        $showError = "Email already exist!";
    } else {
        if ($pass == $cpass) {
            $hash = password_hash($pass, PASSWORD_DEFAULT);
            $sql = "INSERT INTO `signup` (`user_name`,`user_email`, `password`) VALUES ('$user_name','$user_email', '$hash');";
            $result = mysqli_query($conn, $sql);
            if ($result) {
                $showAlert = true;
                header("Location: index.php?signupsuccess=true");
                exit();
            }
        } else {
            $showError = "Password do not match.";
        }
    }

    header("Location: index.php?signupsuccess=false&error=$showError");

}
?>