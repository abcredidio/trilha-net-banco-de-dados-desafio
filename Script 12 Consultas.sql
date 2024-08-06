SELECT Nome, Ano FROM  Filmes

SELECT * FROM Filmes
ORDER BY Ano ASC

SELECT * FROM Filmes
WHERE Nome = 'De Volta para o futuro'

SELECT * FROM Filmes
WHERE Ano = 1997

SELECT * FROM Filmes
WHERE Ano > 2000

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

SELECT * FROM Atores
WHERE Genero = 'M'

SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC

SELECT F.Nome, G.Genero 
FROM Filmes F
INNER JOIN FilmesGenero FG
ON F.Id = FG.IdFilme
INNER JOIN Generos G
ON G.Id = FG.IdGenero


SELECT Fi.Nome, G.Genero 
FROM Filmes Fi
INNER JOIN FilmesGenero FG
ON Fi.Id = FG.IdFilme
INNER JOIN Generos G
ON G.Id = FG.IdGenero
WHERE Genero = 'Mistério'


SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E
ON F.Id = E.IdFilme
INNER JOIN Atores A
ON E.IdAtor = A.Id

