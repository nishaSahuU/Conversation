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

    <section class="blog-post section-header-offset">
        <div class="blog-post-container container">

            <?php
            $id = $_GET['blogid'];
            $sql = "SELECT * FROM `blog_details` WHERE  b_id=$id";
            $result = mysqli_query($conn, $sql);

            while ($row = mysqli_fetch_assoc($result)) {
                $bid = $row['b_id'];
                $title = $row['b_title'];
                $blog = $row['b_description'];
                $date = $row['b_date'];
                $min = $row['b_min_read'];
                $tag = $row['category_tag'];
                $user_id = $row['b_user_id'];
                echo '
            <div class="blog-post-data">
                <h3 class="title blog-post-title">' . $title . '</h3>
                <div class="article-data">
                    <span>' . $date . '</span>
                    <span class="article-data-spacer"></span>
                    <span>' . $min . ' Min read</span>
                </div>
               
            </div>

            <div class="container">';
                echo nl2br(str_replace('  ', ' &nbsp;', htmlspecialchars($blog)));


            }
            ?>

            <div class="author d-grid">
                <div class="author-image-box">
                    <img src="assets/images/profile.jpg" alt="" class="article-image">
                </div>
                <div class="author-about">
                    <h2>Author:</h2>
                    <?php
                    $u_id = $user_id;
                    $sql1 = "SELECT * FROM `signup` WHERE  signup_id=$u_id";
                    $result1 = mysqli_query($conn, $sql1);

                    while ($row1 = mysqli_fetch_assoc($result1)) {
                        $user_name = $row1['user_name'];
                        $user_email = $row1['user_email'];
                        echo '
                        <h3 class="author-name">' . $user_name . '</h3>
                        <p>' . $user_email . '</p>
                            ';
                    }
                    ?>

                </div>

            </div>
            <div>
                <h2 class="logo">Comments</h2>

                <?php
                $showAlert = false;
                $method = $_SERVER['REQUEST_METHOD'];
                if ($method == 'POST') {
                    $sno = $_POST['sno'];
                    $comment = $_POST['blog'];
                    $sql = "INSERT INTO `comments` ( `c_desc`,  `c_user_id`, `c_post_id`,`c_date`) VALUES  ('$comment','$sno', '$id', current_timestamp());";
                    $run = mysqli_query($conn, $sql);
                    $showAlert = true;

                }

                ?>
                <?php
                if (isset($_SESSION['useremail']) && $_SESSION['loggedin'] == true) {
                    echo ' 
            <form action="' . $_SERVER["REQUEST_URI"] . '"  method="POST">
            <label for="Text">' . $_SESSION['username'] . '</label>     
            <div class="mb-3">
            <input type="text" class="form-input" id="blog" name="blog" placeholder="Write your views">
             </div>
                <input type="hidden" name="sno" value="' . $_SESSION['sno'] . '">
            <button class="list-link"  type="submit">
                Post comment
            </button>
            </form>
    
   ';
                } else {
                    echo '
    <div class="form-group">
    <h3>Login to comment.</h3>
    </div>';
                }
                ?>
            </div>
            <?php
            $id = $_GET['blogid'];
            $sql = "SELECT * FROM `comments` WHERE c_post_id='$id'";
            $run = mysqli_query($conn, $sql);
            $noResult = true;
            while ($row = mysqli_fetch_assoc($run)) {
                $noResult = false;
                $cid = $row['c_id'];
                $desc = $row['c_desc'];
                $date = $row['c_date'];
                $c_user_id = $row['c_user_id'];

                $sql_query = "SELECT user_name FROM `signup` WHERE  signup_id='$c_user_id'";
                $result_query = mysqli_query($conn, $sql_query);
                $row4 = mysqli_fetch_assoc($result_query);

                echo '<blockquote class="quote1">
            <div class="media my-3">
                       <h4>' . $row4['user_name'] . ' at ' . $date . '</h4>
                      <div class="media-body">
                        <h5> ' . $desc . '  </h5>
                       </div>
                   </div></blockquote>';
                // echo var_dump($noResult);
                if ($noResult) {
                    echo '<blockquote class="quote">
               <p>Be the first person to ask a question</p></blockquote> ';
                }

            }

            ?>

        </div>

    </section>



    <!-- Swiper.js -->
    <script src="./assets/js/swiper-bundle.min.js"></script>
    <!-- Custom script -->
    <script src="./assets/js/main.js"></script>
</body>

</html>