<?php 
namespace partials;

function header() {
?>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<?php echo BASE_CSS_PATH ?>vendors/css-reset.css" />
    <link rel="stylesheet" href="<?php echo BASE_CSS_PATH ?>style.css">
    <script src="<?php echo BASE_JS_PATH ?>main.js" defer></script>
</head>
<body>
  <header class="header menu__cover">
    <h1><a href="<?php the_url('/') ?>"><img src="<?php echo BASE_IMAGE_PATH ?>logo.svg"></a></h1>
    <nav class="header__nav">
      <ul class="header__ul">
        <li class="header__li item"><a href="<?php the_url('product?page=1'); ?>">PRODUCTS</a></li>
        <li class="header__li item"><a href="<?php the_url('about'); ?>">ABOUT</a></li>
        <li class="header__li item"><a href="<?php the_url('company'); ?>">COMPANY</a></li>
        <li class="header__li item"><a href="mailto:xxxxx@xxx.xxx?subject=お問い合わせ">CONTACT</a></li>
      </ul>
    </nav>
    <button class="menu__btn">
      <span></span>
      <span></span>
    </button>
    <div class="cover"></div>
  </header>
  <?php 
}
  ?>