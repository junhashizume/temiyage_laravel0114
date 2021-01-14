<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商品登録</title>
</head>
<body>
    <div>
        <div>
            商品登録フォーム
        </div>
        <form action="/items/store" method="POST">
            {{ csrf_field() }}
            <div>
                商品名
                <div>
                    <input type="text" name="item_name">
                </div>
            </div>
            <div>
                商品説明
                <div>
                    <input type="text" name="item_desc">
                </div>
            </div>
            <div>
                商品画像
                <div>
                    <input type="text" name="item_image">
                </div>
            </div>
            <!-- 価格 -->
            <div>
                価格
                <div>
                    <input type="text" name="price">
                </div>
            </div>
            <!--　登録ボタン -->
            <div>
                <div>
                    <button type="submit">
                        Save
                    </button>
                </div>
            </div>
        </form>

        <form action="/stores/view" method="GET">
        <div>
                <div>
                    <button type="submit">
                        店舗
                    </button>
                </div>
            </div>
        </form>
            <table>
                <!-- テーブルヘッダ -->
                <thead>
                <tr>
                <th>商品名</th>
                <th>商品説明</th>
                <th>商品画像URL</th>
                <th>価格</th>
                </thead>
                @foreach($items as $item)
                <td>{{$item->item_name}}</td>
                <td>{{$item->item_desc}}</td>
                <td>{{$item->item_image}}</td>
                <td>{{$item->price}}</td>
                </tr>
                @endforeach
            </table>
    </div>
</body>
</html>
