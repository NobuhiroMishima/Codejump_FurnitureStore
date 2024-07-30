<?php 
namespace view\product;

function index($items, $page){
?>
<main>
<?php if(isset($items[0])): ?>
      <div class="content">
          <h2>Products</h2>
        <ul>
          <?php foreach($items as $item): ?>
          <li class="container hover">
            <a href="<?php the_url('detail?item_id=' . $item->id) ?>">
              <img src="<?php echo BASE_IMAGE_PATH . $item->img_path ?>">
              <div class="item">
                <p class="item__title"><?php echo $item->name ?></p>
                <p class="item__price">&yen;<?php echo number_format($item->price); ?> +tax</p>
              </div>
            </a>
          </li>
        <?php endforeach; ?>
        </ul>
        <div class="pagenation">
          <ul>
              <li class="page"><a href="<?php the_url('product?page=1'); ?>">1</a></li>
              <li class="page"><a href="<?php the_url('product?page=2'); ?>">2</a></li>
          </ul>
        </div>
      </div>
<?php else: ?>
 <div class="error no-page">商品はありませんでした。</div>
 </main>
<?php
endif;
}
?>