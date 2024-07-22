<?php 
namespace db;

use db\DataSource;
use model\ItemModel;

class ItemQuery{
    public static function fetchAllItems(){
        $db = new DataSource;
        $sql = 'select * from mst_items';

        $result = $db->select($sql, [], DataSource::CLS, ItemModel::class);

        return $result;

    }
}