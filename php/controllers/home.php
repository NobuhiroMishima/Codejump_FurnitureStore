<?php 
namespace controller\home;

use db\ItemQuery;

function get(){
    $items = ItemQuery::fetchAllItems();
    \view\home\index($items);
}
?>