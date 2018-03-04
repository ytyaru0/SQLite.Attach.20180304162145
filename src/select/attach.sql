ATTACH "../res/Memos.db" AS _M;
.databases

SELECT u.Id, u.Url, m.Memo
FROM main.Urls u
INNER JOIN _M.Memos m
ON u.Id = m.UrlId;

