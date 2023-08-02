<section class="older-posts section">

    <div class="container">

        <h2 class="title section-title" data-name="Older posts">Older posts</h2>

        <div class="older-posts-grid-wrapper d-grid">

            <?php
           

                $sql = "SELECT * FROM `blog_details` ORDER BY b_date desc LIMIT 6 ";
                $result = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($result)) {
                    $id = $row['b_id'];
                    $b_header = $row['b_title'];
                    $b_title = substr($b_header, 0, 50);
                    $b_text = $row['b_description'];
                    $desc = substr($b_text, 0, 70);
                    $category = $row['b_category'];
                    $min = $row['b_min_read'];
                    $datetime = $row['b_date'];
                    $date = date('Y-m-d', strtotime($datetime));


                    echo '
            <a href="post.php?blogid=' . $id . '" class="article d-grid">
                <div class="older-posts-article-image-wrapper">
                    <img src="assets/images/older_posts/' . $id . '.jpg" alt="" class="article-image">
                </div>

                <div class="article-data-container">

                    <div class="article-data">
                        <span>' . $date . '</span>
                        <span class="article-data-spacer"></span>
                        <span>' . $min . ' Min read</span>
                    </div>

                    <h3 class="title article-title">' . $b_title . '</h3>
                    <p class="article-description">' . $desc . '</p>

                </div>

            </a>';
                }
            
            ?>


        </div>

        <div class="see-more-container">
            <a href="#" class="btn see-more-btn place-items-center">See more <i
                    class="ri-arrow-right-s-line"></i></i></a>
        </div>

    </div>

</section>