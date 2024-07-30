<?php 
namespace controller\detail;

use db\ItemQuery;
use model\ItemModel;

function get(){

    $item = new ItemModel;
    $item->id = get_param('item_id', null, false);

    $fetchedItem = ItemQuery::fetchItem($item);
    \view\detail\index($fetchedItem);

}