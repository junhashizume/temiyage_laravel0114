<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    protected $table = 'items';
    protected $fillable = [
        'item_name',
        'item_desc',
        'item_image',
        'price'
    ];

    public function store(){
        return $this->belongsTo('App\Store');
    }

}
