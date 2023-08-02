<?php
session_start();

echo '

<header class="header" id="header">
    <nav class="navbar container">
        <h2 class="logo"> Conversation</h2>

        <div class="menu" id="menu">
            <ul class="list">
                <li class="list-item">
                    <a href="index.php" class="list-link current">Home</a>
                </li>
                <li class="list-item dropdown">
                    <a class="list-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Category
                    </a>
                    <ul class="dropdown-menu">';
?>
<?php
$sql = "SELECT * FROM `category`";
$result = mysqli_query($conn, $sql);
while ($row = mysqli_fetch_assoc($result)) {

    $id = $row['category_id'];
    $name = $row['cat_name'];
    echo '
                        <li><a class="dropdown-item" href="category.php?catid= ' . $id . '">' . $name . '</a></li>
                       
                        ';
}
?>
</ul>
</li>
<li class="list-item">
    <a href="author.php" class="list-link">Authors</a>
</li>
<li class="list-item">
    <a href="create-blog.php" class="list-link">Create Blog</a>
</li>
<div class="list-item screen-lg-hidden">

    <button type="button" class="list-link" data-bs-toggle="modal" data-bs-target="#signupModal">
        Sign up
    </button>
    <button type="button" class="list-link" data-bs-toggle="modal" data-bs-target="#loginModal">
        <span>Login</span>
    </button>
</div>
</ul>
</div>
<div class="list list-right">
    <form class="d-flex" role="search" action="search.php" method="get">
        <input class="form-control" type="search" name="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-dark" type="submit"> <i class="ri-search-line"></i></button>
    </form>
    <button class="place-items-center screen-lg-hidden" type="button" data-bs-toggle="offcanvas"
        data-bs-target="#offcanvasRight" aria-controls="offcanvasRight" id="menu-toggle-icon">
        <i class="ri-menu-3-line open-menu-icon"></i>
    </button>
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="offcanvasRightLabel">Menu</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <div class="display">

                <ul class="list1">
                    <li class="list-item">
                        <a href="index.php" class="list1-link">Home</a>
                    </li>
                    <li class="list-item dropdown">
                        <a class="list-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu">
                            <?php
                            $sql = "SELECT * FROM `category`";
                            $result = mysqli_query($conn, $sql);
                            while ($row = mysqli_fetch_assoc($result)) {

                                $id = $row['category_id'];
                                $name = $row['cat_name'];
                                echo '
                        <li><a class="dropdown-item" href="category.php?catid= ' . $id . '">' . $name . '</a></li>
                       
                        ';
                            }
                            ?>
                        </ul>
                    </li>
                    <li class="list1-item">
                        <a href="author.php" class="list1-link">Authors</a>
                    </li>
                    <li class="list1-item">
                        <a href="create-blog.php" class="list1-link">Create Blog</a>
                    </li>
                    <?php
                    if (isset($_SESSION['username']) && $_SESSION['loggedin'] == true) {
                        echo '
                        <li class="list1-item">
      <a href="logout.php" type="button" class="sign-up-btn fancy-border " >
      <span>Logout</span>
      </a>
    </li>
   
    ';
                    } else {
                        echo ' </hr><li class="list1-item">
            <button type="button" class="list-link" data-bs-toggle="modal" data-bs-target="#signupModal">Sign up</button></li>
             <li class="list1-item">
            <button type="button" class="sign-up-btn" data-bs-toggle="modal" data-bs-target="#loginModal">
           Login
            </button></li>
          ';
                    }
                    ; ?>
                </ul>
            </div>

        </div>
    </div>
</div>
<?php
if (isset($_SESSION['username']) && $_SESSION['loggedin'] == true) {
    echo '
    <div class="list list-right">
    <a href="dashboard.php" type="button" class="list-link" >
    ' . $_SESSION['username'] . '
    </a>  
      <a href="logout.php" type="button" class="sign-up-btn fancy-border screen-sm-hidden" >
      <span>Logout</span>
      </a>
    </div>
    </nav>
    ';
} else {
    echo ' <div class="list list-right">
            <button type="button" class="list-link screen-sm-hidden" data-bs-toggle="modal" data-bs-target="#signupModal">
            Sign up
            </button>
            <button type="button" class="sign-up-btn fancy-border screen-sm-hidden" data-bs-toggle="modal" data-bs-target="#loginModal">
            <span>Login</span>
            </button>
            </div>
             </nav>';
}
;
if (isset($_GET['signupsuccess']) && $_GET['signupsuccess'] == "true") {
    echo '<div class="alert alert-dark alert-dismissible fade show" role="alert">
            <strong>Success!</strong> You have been signed in. Now you can login.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
                ';


}
;

echo '</header>';
?>


<?php
include 'signupmodal.php';
include 'loginmodal.php';
?>