<?php 
namespace controller\home;

use db\ItemQuery;

function get(){
    $items = ItemQuery::fetchItems(8);
    \view\home\index($items);
}
?>