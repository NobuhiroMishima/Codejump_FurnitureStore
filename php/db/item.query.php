<?php 
namespace db;

use db\DataSource;
use model\ItemModel;

class ItemQuery{
    public static function fetchItems($count = 16){
        $db = new DataSource;
        $sql = 'select * from mst_items limit :count';

        $result = $db->select($sql, [
            ':count' => $count
        ], DataSource::CLS, ItemModel::class);

        return $result;

    }
}