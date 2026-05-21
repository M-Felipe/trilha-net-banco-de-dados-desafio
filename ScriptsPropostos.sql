
-- 1 Buscar o nome e ano dos filmes
SELECT Nome, Ano from Filmes

-- 2 Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao from Filmes ORDER BY Ano ASC

-- 3 Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao from Filmes WHERE Nome = 'De Volta para o Futuro'

-- 4 Buscar os filmes lançados em 1997
SELECT Nome, Ano, Duracao from Filmes WHERE Ano = 1997

-- 5 Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao from Filmes WHERE Ano > 2000

-- 6 Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Nome, Ano, Duracao from Filmes WHERE Duracao BETWEEN 100 AND 150

-- 7 Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, Count(1) from Filmes GROUP BY Ano

-- 8 Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome from Atores

-- 9 Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome from Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 Buscar o nome do filme e o gênero
SELECT f.Nome, g.Genero from Filmes f
JOIN FilmesGenero fg ON fg.IdFilme = f.Id
JOIN Generos g on g.Id = fg.IdGenero

-- 11 Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome, g.Genero from Filmes f
JOIN FilmesGenero fg ON fg.IdFilme = f.Id
JOIN Generos g on g.Id = fg.IdGenero
WHERE g.Genero = 'Mistério'

-- 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from Filmes f
JOIN ElencoFilme ef on ef.IdFilme = f.Id
JOIN Atores a on a.Id = ef.IdAtor
