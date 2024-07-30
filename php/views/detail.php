<?php 
namespace view\detail;

function index($item){
?>
<main>
<?php if(!empty($item)): ?>
    <div class="content">
    <h2><?php echo $item->name; ?></h2>
    <div class="detail">
      <div class="detail__img"><img class="main-image" src="images/<?php echo $item->img_path; ?>"></div>
      <div class="detail__body">
        <p class="description top"><?php echo $item->text_top; ?></p>
        <p class="description bottom"><?php echo $item->text_bottom; ?></p>
        <p class="price">¥<?php echo number_format($item->price); ?> +tax</p>
        <dl class="propaty">
          <dt>SIZE：</dt>
          <dd><?php echo $item->size; ?></dd>
          <dt>COLOR：</dt>
          <dd><?php echo $item->color; ?></dd>
          <dt>MATERIAL：</dt>
          <dd><?php echo $item->material; ?></dd>
        </dl>
      </div>
    </div>
    <p class="back"><a class="back-link" href="<?php the_url('product?page=1'); ?>">Back To Products</a></p>
  </div>
<?php else: ?>
 <div class="error no-page">商品はありませんでした。</div>
 </main>
<?php
endif;
}
?>