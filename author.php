<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Blog</title>

    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/images/favicon.png">

    <!-- Remix icons -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <!-- Swiper.js styles -->
    <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css" />
    <!-- Custom styles -->
    <link rel="stylesheet" href="./assets/css/main.css">


</head>

<body>

    <?php include '_dbconnect.php'; ?>
    <?php include 'header.php'; ?>
    <section class="older-posts section">
        <div class="container">
            <h2 class="title section-title" data-name="Older posts">Popular Authors</h2>
            <div class="container">
                <h2 class="title section-title" id="category" data-name="Popular tags">Popular Authors</h2>
                <div class="popular-tags-container content d-grid">
                    <?php
                    $sql1 = "SELECT * FROM signup";
                    $result = mysqli_query($conn, $sql1);
                    while ($row = mysqli_fetch_assoc($result)) {
                        $user_id = $row['signup_id'];
                        $user_name = $row['user_name'];
                        $user_email = $row['user_email'];
                        $location = $row['location'];
                        $result1 = mysqli_query($conn, "SELECT COUNT(*) AS `count` FROM `blog_details` WHERE b_user_id =$user_id;");
                        $row = mysqli_fetch_assoc($result1);
                        $count = $row['count'];
                        if ($count > 0) {
                            echo '
                        <a href="author-post.php?authorid= '.$user_id.'" class="article travel " id="travel">
                             <h2>Author: <span> <strong>' . $user_name . '</strong></span> </h2>
                             <p>Email = ' . $user_email . '</p>
                             <p>Blogs writtten = ' . $count . '</p>
                             <p> ' . $location . '</p>
                        </a>';
                        }
                    }
                    ?>
                </div>
            </div>
        </div>
    </section>
    <!-- Swiper.js -->
    <script src="./assets/js/swiper-bundle.min.js"></script>
    <!-- Custom script -->
    <script src="./assets/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

</body>

</html>