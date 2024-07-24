<?php 
namespace controller\product;

use db\ItemQuery;

function get(){
    $items = ItemQuery::fetchItems(12);
    \view\product\index($items);
}
?>