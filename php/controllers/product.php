<?php 
namespace controller\product;

use db\ItemQuery;

function get(){

    $page = get_param('page', 1, false);

    $items = ItemQuery::fetchItems(12, $page);
    \view\product\index($items, $page);
}
?>