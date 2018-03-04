#!/bin/bash
SQLite=/tmp/work/SQLite.Compile.20180301195412/sqlite-autoconf-3220000/sqlite3
DB_URLS="../res/Urls.db"
DB_MEMOS="../res/Memos.db"

# DROP TABLE
[ -e $DB_URLS ] && $SQLite $DB_URLS < "./drop/Urls.sql"
[ -e $DB_MEMOS ] && $SQLite $DB_MEMOS < "./drop/Memos.sql"

# CREATE TABLE
$SQLite $DB_URLS < "./create/Urls.sql"
$SQLite $DB_MEMOS < "./create/Memos.sql"

# INSERT
$SQLite $DB_URLS < "./insert/Urls.sql"
$SQLite $DB_MEMOS < "./insert/Memos.sql"

# SELECT
$SQLite $DB_URLS < "./select/attach.sql"

