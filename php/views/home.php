<?php
namespace view\home;

function index($items){

?>
    <main>
    <div class="content">
      <ul>
        <?php foreach($items as $item): ?>
        <li class="container hover">
          <a href="item.php">
            <img src="<?php echo BASE_IMAGE_PATH . $item->img_path ?>">
            <div class="item">
              <p class="item__title"><?php echo $item->name ?></p>
              <p class="item__price">&yen;<?php echo $item->price ?> +tax</p>
            </div>
          </a>
        </li>
        <?php endforeach; ?>
      </ul>
      <a class="btn hover" href="<?php the_url('product'); ?>">View More</a>
    </div>
</main>

<?php
}
?>