<section class="featured-articles section section-header-offset">

    <div class="featured-articles-container container d-grid">

        <div class="featured-content d-grid">

            <div class="headline-banner">
                <h3 class="headline fancy-border">
                    <span class="place-items-center">New Articles</span>
                </h3>
            </div>

            <?php
            $sql = "SELECT * FROM `blog_details` ORDER BY b_id desc LIMIT 6";
            $result = mysqli_query($conn, $sql);
            while ($row = mysqli_fetch_assoc($result)) {
                $id = $row['b_id'];
                $b_header = $row['b_title'];
                $b_title = substr($b_header, 0, 35);
                $category = $row['category_tag'];
                $min = $row['b_min_read'];
                $datetime = $row['b_date'];
                $date = date('Y-m-d', strtotime($datetime));



                echo '
                    
                    <a href="post.php?blogid=' . $id . '" class="article featured-article featured-article">
                        <img src="assets/images/featured/' . $id . '.jpg" alt="image" class="article-image">
                        <span class="article-category">' . $category . '</span>
                        <div class="article-data-container">
                            <div class="article-data">
                                <span>' . $date . '</span>
                                <span class="article-data-spacer"></span>
                                <span>' . $min . ' Min read</span>
                            </div>
                            <h3 class="title article-title">' . $b_title . '</h3>
                        </div>
                    </a>';
            }

            ?>

        </div>

        <div class="sidebar d-grid">

            <h3 class="title featured-content-title">Trending post</h3>
            <?php
            $sql = "SELECT * FROM `blog_details` LIMIT 5 ";
            $result = mysqli_query($conn, $sql);


            while ($row = mysqli_fetch_assoc($result)) {

                $id = $row['b_id'];
                $b_header = $row['b_title'];
                $b_title = substr($b_header, 0, 32);
             
                $category = $row['b_category'];
                $min = $row['b_min_read'];

                $datetime = $row['b_date'];
                $date = date('Y-m-d', strtotime($datetime));



                echo '
                <a href="post.php?blogid=' . $id . '" class="trending-post-box">
                <div class="trending-post-img-box">
                    <img src="./assets/images/quick_read/' . $id . '.jpg" alt="" class="article-image">
                </div>

                <div class="trending-post-data">

                <div article-data>
                <span>' . $date . '</span>
                <span class="article-data-spacer"></span>
                <span>' . $min . ' Min read</span>
            </div>

            <h3 class="title article-title">' . $b_title . '</h3>

                </div>
             </a>
               ';
            }


            ?>



        </div>

    </div>

</section>