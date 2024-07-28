<?php 
namespace controller\home;

use db\ItemQuery;

function get(){
    $items = ItemQuery::fetchItems();
    \view\home\index($items);
}
?>