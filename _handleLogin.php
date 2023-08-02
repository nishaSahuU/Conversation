<?php
session_start();

$showError = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include '_dbconnect.php';
    $login_email = $_POST['loginEmail'];
    $pass = $_POST['loginPass'];
    $exitSql = "SELECT * FROM `signup` WHERE user_email ='$login_email'";
    $result = mysqli_query($conn, $exitSql);
    $numrows = mysqli_num_rows($result);
    if ($numrows == 1) {
        $row = mysqli_fetch_assoc($result);
        if (password_verify($pass, $row['password']) == false) {
            $_SESSION['loggedin'] = true;
            $_SESSION['sno'] = $row['signup_id'];
            $_SESSION['username'] = $row['user_name'];
            $_SESSION['location'] = $row['location'];
            $_SESSION['useremail'] = $login_email;
            echo 'loggedin';
            header("Location: index.php?loginsuccess=true");
            exit();
        }
    }
    header("Location: index.php?loginsuccess=false&error=$showError");
}
?>