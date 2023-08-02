<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to iDiscuss - Coding Forums</title>

    <!-- Favicon -->
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/images/favicon.png">
    <!-- Remix icons -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
    <!-- Swiper.js styles -->
    <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css" />
    <style>
        .quote {
            /* top: 10rem; */
            margin-top: 1rem;
            margin-left: 9rem;
            margin-right: 9rem;

        }

        .logo1 {
            margin-top: 12rem;
            margin-left: 15rem;

            align-items: center;
        }
    </style>
    <!-- Custom styles -->
    <link rel="stylesheet" href="./assets/css/main.css">
</head>

<body>

    <?php include '_dbconnect.php'; ?>
    <?php include 'header.php'; ?>


    <section>
        <div>
            <h2 class="title section-title logo1" data-name="Newsletter">Search Results: "<em>
                    <?php echo $_GET['search'] ?>
                </em>"</h2>
        </div>
        <?php
        $noResult = true;
        $id = $_GET['search'];
        $sql = "SELECT * FROM `blog_details` WHERE MATCH (b_title,b_description) against ('$id');";
        $run = mysqli_query($conn, $sql);
        while ($row = mysqli_fetch_assoc($run)) {
        $noResult = false;
            $b_title = $row['b_title'];
            $b_text = $row['b_description'];
            $desc = substr($b_text, 0, 250);
            $b_id = $row['b_id'];
            $url = "post.php?blogid=" . $b_id;
            echo '
       
        <blockquote class="quote">
            <h3><strong><a href="' . $url . '" > ' . $b_title . '</a></strong></h3>
            <p> ' . $desc . '</p>
        </blockquote>
        ';
        }
        if ($noResult == true) {
            echo '<blockquote class="quote">
            <p>No result found!!!!</p>
        </blockquote>';
        }
        ?>
    </section>





    <?php include 'include/footer.php'; ?>

    <!-- Swiper.js -->
    <script src="./assets/js/swiper-bundle.min.js"></script>
    <!-- Custom script -->
    <script src="./assets/js/main.js"></script>
</body>

</html>