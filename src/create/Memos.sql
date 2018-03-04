CREATE TABLE Memos (
    Id      Integer PRIMARY KEY,
    UrlId   Integer NOT NULL,
    Memo    text,
    FOREIGN KEY(UrlId) REFERENCES Urls(Id)
);
