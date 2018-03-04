# このソフトウェアについて

SQLite3で別DBのテーブルを結合した。

# 開発環境

* [Raspberry Pi](https://ja.wikipedia.org/wiki/Raspberry_Pi) 3 Model B
    * [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) GNU/Linux 8.0 (jessie)
        * [SQLite](https://www.sqlite.org/index.html) 3.22.0

# 実行

```sh
$ bash test.sh 
main: /tmp/work/SQLite.Attach.20180304162145/src/../res/Urls.db
_M: /tmp/work/SQLite.Attach.20180304162145/src/../res/Memos.db
1|http://0|Memo0
2|http://1|Memo1
3|http://2|Memo2
```

URLとメモは別DBのテーブルである。結合されていることを確認した。

# 説明

要点は`./src/select/attach.sql`にあるDB結合。`ATTACH`文を使う。

```sql
ATTACH "../res/Memos.db" AS _M;
```

DB名`main`と`_M`を使ってテーブル結合。`INNER JOIN`句を使う。

```sql
SELECT u.Id, u.Url, m.Memo
FROM main.Urls u
INNER JOIN _M.Memos m
ON u.Id = m.UrlId;
```

これで2つの異なるDB内のテーブルを結合できる。

# ライセンス

このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)


