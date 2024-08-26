<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<link href="css/style.css" rel="stylesheet">
<title>クラウンベーカリー</title>
</head>
<body>
<div id="contents">
    <header>
        <h1><img src="images/logo.png" alt="クラウンベーカリー"></h1>
    </header>
    <h2>商品のご注文</h2>
    <form action="" method="post">

        <h3 class="title">お名前</h3>
        <p><input type="text" name="name" size="45"></p>

	<h3 class="title">住所</h3>
        <p><textarea name="address" rows="5" cols="45"></textarea></p>

        <h3 class="title">ご注文商品</h3>
            <p>イチゴのプリンパン(単価：250円)
            <select name="item1count">
                <option value="0">0個</option>
                <option value="1">1個</option>
                <option value="2">2個</option>
                <option value="3">3個</option>
                <option value="4">4個</option>
                <option value="5">5個</option>
            </select></p>
        <p>チーズフランス(単価：350円)
            <select name="item2count">
                <option value="0">0個</option>
                <option value="1">1個</option>
                <option value="2">2個</option>
                <option value="3">3個</option>
                <option value="4">4個</option>
                <option value="5">5個</option>
            </select></p>

        <h3 class="title">お支払い方法</h3>
        <p>
            <input type="radio" name="payment" value="銀行振り込み" id="py_bank">
            <label for="py_bank">銀行振り込み</label>
            <input type="radio" name="payment" value="クレジットカード" id="py_card">
            <label for="py_card">クレジットカード</label>
            <input type="radio" name="payment" value="着払い" id="py_cod">
            <label for="py_cod">着払い</label>
        </p>
        <p>
            <input type="submit" value="送信する">
        </p>
    </form>
    <footer>
        <p>Copyright &copy; Crown Bakery</p>
    </footer>
</div>
</body>
</html>
