<section class="postletter section">

    <div class="container">

        <h2 class="title section-title" data-name="Newsletter">Newsletter</h2>

        <div class="form-container-inner">
            <h6 class="title postletter-title">Subscribe to Conversation</h6>
            <p class="postletter-description">To have latest blogs and articles updates, subscribe to our newsletter</p>

            <form action="" class="form">
                <input class="form-input" type="text" placeholder="Enter your email address">
                <button class="btn form-btn" type="submit">
                    <i class="ri-mail-send-line"></i>
                </button>
            </form>

        </div>

    </div>

</section>


<footer class="footer section">

    <div class="footer-container container d-grid">

        <div class="company-data">
            <a href="./index.html">
                <h2 class="logo"> Conversation</h2>
            </a>
            <p class="company-description">Conversation is where you can write to your heart's content. </p>

            <ul class="list social-media">
                <li class="list-item">
                    <a href="#" class="list-link"><i class="ri-instagram-line"></i></a>
                </li>
                <li class="list-item">
                    <a href="#" class="list-link"><i class="ri-facebook-circle-line"></i></a>
                </li>
                <li class="list-item">
                    <a href="#" class="list-link"><i class="ri-twitter-line"></i></a>
                </li>
                <li class="list-item">
                    <a href="#" class="list-link"><i class="ri-pinterest-line"></i></a>
                </li>
            </ul>

            <span class="copyright-notice">&copy;2023 Conversation. All rights reserved.</span>
        </div>

        <div>

            <h6 class="title footer-title">Categories</h6>

            <ul class="footer-list list">
                <?php
                
                $sql = "SELECT * FROM `category`";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                
                    $id = $row['category_id'];
                    $name = $row['cat_name'];
                    echo '
            <li class="list-item">
                <a href="category.php?catid= ' . $id . '" class="list-link">' . $name . '</a>
            </li>';}
                ?>
                
            </ul>

        </div>

        <div>
            <h6 class="title footer-title">Useful links</h6>

            <ul class="footer-list list">
                <li class="list-item">
                    <a href="index.php" class="list-link">Home</a>
                </li>
                <li class="list-item">
                    <a href="create-blog.php" class="list-link">create-blog</a>
                </li>
                <li class="list-item">
                    <a href="author.php" class="list-link">Authors</a>
                </li>
            </ul>

        </div>

        <div>
            <h6 class="title footer-title">Company</h6>

            <ul class="footer-list list">
                <li class="list-item">
                    <a href="#" class="list-link">Contact us</a>
                </li>
                <li class="list-item">
                    <a href="#" class="list-link">F.A.Q</a>
                </li>
                <li class="list-item">
                    <a href="#" class="list-link">Careers</a>
                </li>
            </ul>

        </div>

    </div>

</footer>