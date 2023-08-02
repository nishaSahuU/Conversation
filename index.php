<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Conversation</title>

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
    include 'include/feature_article.php';
    // include 'include/quick_reads.php';
    include 'include/older_post.php';
    include 'include/popularTags.php';
    include 'include/footer.php';
    ?>
    <!-- Swiper.js -->
    <script type="text/JavaScript" src="./assets/js/swiper-bundle.min.js"></script>
    <!-- Custom script -->
    <script type="text/JavaScript" src="./assets/js/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>

</body>

</html>