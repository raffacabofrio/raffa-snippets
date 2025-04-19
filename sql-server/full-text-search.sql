-- DOR: Buscas usando like são muito simplórias. Nosso usuário espera buscas mais inteligentes.
-- SOLUÇÃO: O recurso de full-text search do SQL SERVER fornece buscas mais espertas e ranqueadas.


-- 1 - verificar se o full-text está habilitado no sql server 
SELECT FULLTEXTSERVICEPROPERTY('IsFullTextInstalled');

-- 2 - criar o índice e força idioma pt-br para usar stopwords brasileiras
CREATE FULLTEXT CATALOG ftCatalog AS DEFAULT;

CREATE FULLTEXT INDEX ON Exams(
    Title LANGUAGE 1046,
    Description LANGUAGE 1046
)
KEY INDEX PK_Exams
WITH STOPLIST = SYSTEM, CHANGE_TRACKING = AUTO;

-- 3 - deu merda? dropa o índice e cria de novo
DROP FULLTEXT INDEX ON Exams;

-- 3.1 - Ou tenta rebuildar o índice.
ALTER FULLTEXT INDEX ON Exams START UPDATE POPULATION;



-- 4 - Missão cumprida. Agora é só usar similar ao exemplo abaixo:
SELECT e.Title, ft.[RANK]
FROM CONTAINSTABLE(Exams, (Title, Description),
  'ISABOUT ("php*" WEIGHT(0.5), "kafka" WEIGHT(0.5))') AS ft
JOIN Exams e ON e.Id = ft.[KEY]
ORDER BY ft.[RANK] DESC;


