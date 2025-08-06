1 - Buscar o nome e ano dos filmes
sql
Copiar
Editar
SELECT Nome, Ano
FROM Filmes;
2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
sql
Copiar
Editar
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;
3 - Buscar pelo filme "De Volta Para o Futuro", trazendo o nome, ano e a duração
sql
Copiar
Editar
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';
4 - Buscar os filmes lançados em 1997
sql
Copiar
Editar
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;
5 - Buscar os filmes lançados APÓS o ano 2000
sql
Copiar
Editar
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;
6 - Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
sql
Copiar
Editar
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
sql
Copiar
Editar
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;
8 - Buscar os atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
sql
Copiar
Editar
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';
9 - Buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
sql
Copiar
Editar
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
10 - Buscar o nome do filme e o gênero
sql
Copiar
Editar
SELECT F.Nome AS Filme, G.Nome AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;
11 - Buscar o nome do filme e o gênero do tipo "Mistério"
sql
Copiar
Editar
SELECT F.Nome AS Filme, G.Nome AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Nome = 'Mistério';
12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
sql
Copiar
Editar
SELECT F.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id;
