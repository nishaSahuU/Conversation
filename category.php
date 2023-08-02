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
    <?php include 'header.php';
    ?>

    <section class="popular-tags category1 section">
        <h2 class="title section-title" id="category" data-name="Popular tags">Category</h2>


        <div class="container">


            <div class="popular-tags-container d-grid">
                <?php
                $id = $_GET['catid'];
                $sql = "SELECT * FROM `blog_details` WHERE  b_category=$id";
                $run = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($run)) {
                    $id = $row['b_id'];
                    $b_header = $row['b_title'];
                    $b_title = substr($b_header, 0, 50);
                    
                    $date = $row['b_date'];
                    $min = $row['b_min_read'];
                    $tag = $row['category_tag'];


                    echo '
      

                <a href="post.php?blogid=' . $id . '" class="article" id="travel">

                    <img src="https://source.unsplash.com/random" alt="" class="article-image">
                    <span class="article-category">' . $tag . ' </span>
                    <div class="article-data-container">

                        <div class="article-data">
                            <span>' . $date . '</span>
                            <span class="article-data-spacer"></span>
                            <span>' . $min . ' Min read</span>
                        </div>

                        <h3 class="title article-title">' . $b_title . '</h3>

                    </div>
                </a>
               
        ';
                } ?>

               



            </div>

        </div>



    </section>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
    <!-- Swiper.js -->
    <script src="./assets/js/swiper-bundle.min.js"></script>
    <!-- Custom script -->
    <script src="./assets/js/main.js"></script>
</body>

</html>