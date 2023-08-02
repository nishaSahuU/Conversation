<section class="popular-tags section">

    <div class="container">

        <h2 class="title section-title" id="category" data-name="Popular tags">Popular tags</h2>

        <div class="popular-tags-container d-grid">
            <?php
            $sql = "SELECT * FROM `category` LIMIT 6";
            $result = mysqli_query($conn, $sql);
            while ($row = mysqli_fetch_assoc($result)) {

                $id = $row['category_id'];
                $name = $row['cat_name'];
                echo '
        <a href="category.php?catid= ' . $id . '" class="article" id="travel">
            <span class="tag-name">#' . $name . '</span>
            <img src="./assets/images/tags/' . $id . '.jpg" alt="" class="article-image">
        </a>';
            }
            ?>

        </div>

    </div>
</section>