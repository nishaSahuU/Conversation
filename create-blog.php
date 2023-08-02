<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Blog</title>


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
    <div class="search-form-container container" id="search-form-container">
        <div class="form-container">
            <form action="" class="form">
                <input class="form-input" type="text" placeholder="What are you looking for?">
                <button class="btn form-btn icon-box" type="submit">
                    <i class="ri-search-line"></i>
                </button>
            </form>
            <span class="form-note">Or press ESC to close.</span>
        </div>
    </div>

    <?php
    $showAlert = false;
    $method = $_SERVER['REQUEST_METHOD'];
    if ($method == 'POST') {
        $title = $_POST['title'];
        $b_category = $_POST['category'];
        $blog_desc = $_POST['blog'];
        $min_read = $_POST['min-read'];
        $sno = $_POST['sno'];

        $title = str_replace("<", "&lt;", $title);
        $title = str_replace(">", "&gt;", $title);

        $blog_desc = str_replace("<", "&lt;", $blog_desc);
        $blog_desc = str_replace(">", "&gt;", $blog_desc);

        //  $image= str_replace("<", "&lt;" , $image);
        // $image= str_replace(">", "&gt;" , $image);
    
        $min_read = str_replace("<", "&lt;", $min_read);
        $min_read = str_replace(">", "&gt;", $min_read);

        // $sno = $_POST['sno'];
        $sql = "INSERT INTO `blog_details` ( `b_title`, `b_min_read`, `b_description`,`b_date`, `b_category`, `b_user_id`) VALUES
         ('$title', '$min_read','$blog_desc',current_timestamp(), '$b_category', '$sno');";

        $run = mysqli_query($conn, $sql);
        $showAlert = true;
        if ($showAlert == true) {
            echo '<div class="alert alert-dark alert-dismissible fade show" role="alert">
            <strong>Success!</strong> Your blog have been saved.
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>';
        }
    }
    ;

    ?>

    <?php
    if (isset($_SESSION['useremail']) && $_SESSION['loggedin'] == true) {

        echo '
   
    <form action="' . $_SERVER['REQUEST_URI'] . '" class="form1" method="POST">   <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">Blog Title</label>
            <input type="text" class="form-input" id="title" name="title" placeholder="Type here">
        </div>
        <input type="hidden" name="sno" value="' . $_SESSION['sno'] . '">
        <label for="exampleDataList" class="form-label">Category</label>
        <select class="form-input " id="category" name="category" aria-label="Default select example">
            <option class="form-input" selected>Select one of the options</option>
            <option class="form-input">Travel</option>
            <option>Food</option>
            <option>Technology</option>
            <option>Health</option>
            <option>Nature</option>
            <option>Fitness</option>
            <option>Other</option>
        </select>
        <div class="mb-3">
            <label for="exampleFormControlTextarea1" class="form-label">Blog</label>
            <textarea class="form-input" id="blog" name="blog" rows="5"></textarea>
        </div>
        <div class="mb-3">
            <label for="exampleFormControlInput1" class="form-label">How long it take to read the whole article</label>
            <input type="text" class="form-input" id="min-read" name="min-read" placeholder="Type here">
        </div>
       
        <button class="list-link" id="liveAlertBtn" type="submit">
            Submit
        </button>
    </form>';
    } else {
        echo '
            <div class="form1">
              <h3>Login to create your blog</h3>
            </div>';
    }
    ?>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
        crossorigin="anonymous"></script>
    <!-- Swiper.js -->
    <script src="./assets/js/swiper-bundle.min.js"></script>
    <!-- Custom script -->
    <script src="./assets/js/main.js"></script>
    <script>const alertPlaceholder = document.getElementById('liveAlertPlaceholder')
        const appendAlert = (message, type) => {
            const wrapper = document.createElement('div')
            wrapper.innerHTML = [
                `<div class="alert alert-${type} alert-dismissible" role="alert">`,
                `   <div>${message}</div>`,
                '   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>',
                '</div>'
            ].join('')

            alertPlaceholder.append(wrapper)
        }

        const alertTrigger = document.getElementById('liveAlertBtn')
        if (alertTrigger) {
            alertTrigger.addEventListener('click', () => {
                appendAlert('Nice, you triggered this alert message!', 'success')
            })
        }</script>
</body>

</html>