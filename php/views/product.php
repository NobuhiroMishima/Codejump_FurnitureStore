<?php 
namespace view\product;

function index($items){
?>
  <main>
      <div class="content">
          <h2>Products</h2>
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
        <div class="pagenation">
          <ul>
              <li class="page"><a href="">1</a></li>
              <li class="page"><a href="">2</a></li>
          </ul>
        </div>
      </div>
  </main>
<?php 
}
?>