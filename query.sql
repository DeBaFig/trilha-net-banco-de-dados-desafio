--1 - Buscar o nome e ano dos filmes
SELECT nome,
       ano
FROM   filmes

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT *
FROM   filmes
ORDER  BY ano

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT *
FROM   filmes
WHERE  nome = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
SELECT *
FROM   filmes
WHERE  ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT *
FROM   filmes
WHERE  ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT *
FROM   filmes
WHERE  duracao > 100
       AND duracao < 150
ORDER  BY duracao

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano,
       Count(*)
FROM   filmes
GROUP  BY ano
ORDER  BY Count(*) DESC

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT primeironome,
       ultimonome
FROM   atores
WHERE  genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT primeironome,
       ultimonome
FROM   atores
WHERE  genero = 'F'
ORDER  BY primeironome

--10 - Buscar o nome do filme e o gênero
SELECT f.nome,
       g.genero
FROM   filmes AS f
       JOIN filmesgenero AS fg
         ON fg.idfilme = f.id
       JOIN generos AS g
         ON fg.idgenero = g.id

--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.nome,
       g.genero
FROM   filmes AS f
       JOIN filmesgenero AS fg
         ON fg.idfilme = f.id
       JOIN generos AS g
         ON fg.idgenero = g.id
WHERE  g.genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT f.nome,
       a.primeironome,
       a.ultimonome,
       ef.papel
FROM   filmes AS f
       JOIN elencofilme AS ef
         ON ef.idfilme = f.id
       JOIN atores AS a
         ON ef.idator = a.id 