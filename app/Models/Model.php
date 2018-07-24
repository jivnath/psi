<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Model as Eloquent;
use Illuminate\Support\Facades\Schema;


abstract class Model extends Eloquent
{
    /**
     * @return string
     */
    public static function table()
    {
        return with(new static)->getTable();
    }

    /**
     * @return array;
     */
    public static function fields()
    {
        return Schema::getColumnListing((new static)->getTable());
    }


    /**
     * Insert each item as a row. Does not generate events.
     *
     * @param  array  $items
     *
     * @return bool
     */
    public static function insertAll(array $items)
    {
        $now = \Carbon\Carbon::now();
        $items = collect($items)->map(function (array $data) use ($now) {
            return $this->timestamps ? array_merge([
                'created_at' => $now,
                'updated_at' => $now,
            ], $data) : $data;
        })->all();

        return \DB::table(static::table())->insert($items);
    }

    /**
     * 
     */
    public static function inserts(array $items)
    {
        return \DB::table(static::table())->insert($items);
    }
}