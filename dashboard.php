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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Swiper.js styles -->
    <link rel="stylesheet" href="./assets/css/swiper-bundle.min.css" />
    <!-- Custom styles -->
    <link rel="stylesheet" href="./assets/css/main.css">
    <style>
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            max-width: 300px;
            margin: 16rem 30rem;
            text-align: center;
            padding: 1rem;
        }
        @media screen and (max-width: 2000px) {
            .card {
                margin: 16rem 50rem;
            }
        }
        @media screen and (max-width: 1000px) {
            .card {
                margin: 16rem 30rem;
            }
        }
        @media screen and (max-width: 800px) {
            .card {
                margin: 16rem 28rem;
            }
        }

        @media screen and (max-width: 700px) {
            .card {
                margin: 16rem 18rem;
            }
        }

        @media screen and (max-width: 600px) {
            .card {
                margin: 16rem 15rem;
            }
        }

        @media screen and (max-width: 500px) {
            .card {
                margin: 16rem 10rem;
            }
        }

        @media screen and (max-width: 400px) {
            .card {
                margin: 16rem 1rem;
            }
        }



        @media screen and (max-width: 300px) {
            .card {
                margin: 16rem 1rem;
            }
        }

        .title {
            color: grey;
            font-size: 18px;
        }

        .content1 {
            padding: 1rem;
        }

        .link1 {
            text-decoration: none;
            font-size: 22px;
            color: black;
        }
    </style>
</head>

<body>

    <?php include '_dbconnect.php'; ?>
    <?php include 'header.php'; ?>

    <section>
        <div class="card">
            <img src="assets/images/profile.jpg" alt="John" style="width:100%">
            <?php
            if (isset($_SESSION['username']) && $_SESSION['loggedin'] == true) {

                echo '
                <p class="title">' . $_SESSION['username'] . '</p>
                     <h1>' . $_SESSION['useremail'] . '</h1>
                     <div class="content1">
                         <a href="#" class="link1"><i class="fa fa-dribbble"></i></a>
                         <a href="#" class="link1"><i class="fa fa-twitter"></i></a>
                         <a href="#" class="link1"><i class="fa fa-linkedin"></i></a>
                         <a href="#" class="link1"><i class="fa fa-facebook"></i></a>
                      </div>  
                            ';
            }
            ?>

        </div>
    </section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
    <script src="./assets/js/swiper-bundle.min.js"></script>
    <script src="./assets/js/main.js"></script>
</body>

</html>