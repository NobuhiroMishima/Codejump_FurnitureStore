<?php 
namespace db;

use db\DataSource;
use model\ItemModel;

class ItemQuery{
    public static function fetchItems($count = 8, $page = 1){
        $db = new DataSource;
        $sql = 'select * from mst_items where id between :min and :max';

        $result = $db->select($sql, [
            ':min' => $count * ($page - 1) + 1,
            ':max' => $count * $page
        ], DataSource::CLS, ItemModel::class);

        return $result;

    }
}