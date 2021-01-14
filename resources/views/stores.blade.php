<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>店舗登録</title>
</head>
<body>
    <div>
        <div>
            店舗登録フォーム
        </div>
        <form action="/stores/store" method="POST">
            {{ csrf_field() }}
        <div>
                店舗名
                <div>
                    <input type="text" name="store_name">
                </div>
            </div>
            <div>
                店舗住所
                <div>
                    <input type="text" name="store_address">
                </div>
            </div>
            <div>
                店舗地図
                <div>
                    <input type="text" name="store_image">
                </div>
            </div>

            <div>
                <div>
                    <button type="submit">
                        Save
                    </button>
                </div>
            </div>
        </form>

        <form action="/" method="GET">
        <div>
                <div>
                    <button type="submit">
                        商品
                    </button>
                </div>
            </div>
        </form>
            <table>
                <!-- テーブルヘッダ -->
                <thead>
                <tr>
                <th>店舗名</th>
                <th>店舗住所</th>
                <th>店舗地図</th>
                </thead>
                @foreach($stores as $store)
                <td>{{$store->store_name}}</td>
                <td>{{$store->store_address}}</td>
                <td>{{$store->store_image}}</td>
                </tr>
                @endforeach
            </table>
    </div>
</body>
</html>
