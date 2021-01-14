<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    protected $table = 'stores';
    protected $fillable = [
        'store_name',
        'store_address',
        'store_image'
    ];

    public function items(){
        return $this->hasMany('App\Item');
    }
}
