<?php 
namespace model;

use Error;

class ItemModel{
    public int $id;
    public string $name;
    public string $img_path;
    public string $text_top;
    public string $text_bottom;
    public int $price;
    public string $size;
    public string $color;
    public string $material;

    private static $SESSION_NAME = '_item';

    public static function setSession($val) {

        if(empty(static::$SESSION_NAME)) {
            throw new Error('$SESSION_NAMEを設定していください。');
        }

        $_SESSION[static::$SESSION_NAME] = $val;

    }

    public static function getSession() {

        return $_SESSION[static::$SESSION_NAME] ?? null;

    }

}
?>