--database: ../DataBase/NAHormiguero.sqlite

DROP TABLE IF EXISTS NALugar;
DROP TABLE IF EXISTS NAAlimento;
DROP TABLE IF EXISTS NAHormiga;

CREATE TABLE NALugar (
     IdLugar    INTEGER PRIMARY KEY AUTOINCREMENT
    ,Pais       VARCHAR(50)
    ,Region     VARCHAR(50)
    ,Provincia  VARCHAR(50)
);

CREATE TABLE NAAlimento (
     IdAlimento     INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdHormiga      INTEGER UNIQUE
    ,IngestaNativa  VARCHAR(20)
    ,GenoAlimento   VARCHAR(5)
    ,CONSTRAINT "Fk_NAHormiga" FOREIGN KEY (IdHormiga) REFERENCES NAHormiga (IdHormiga)
);

CREATE TABLE NAHormiga (
     IdHormiga      INTEGER PRIMARY KEY AUTOINCREMENT
    ,TipoHormiga    VARCHAR(25)
    ,Sexo           VARCHAR(10)
    ,Provincia      VARCHAR(50)
    ,GenoAlimento   VARCHAR(5)
    ,IngestaNativa  VARCHAR(20)
    ,Estado         VARCHAR(1) NOT NULL DEFAULT ('A')
    ,FechaCreacion  DATETIME DEFAULT(datetime('now','localtime'))
    ,CONSTRAINT "Fk_NALugar" FOREIGN KEY (Provincia) REFERENCES NALugar (IdLugar)
);