--1 - Buscar o nome e ano dos filmes
select 
Nome,
Ano
from filmes;
--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select 
Nome,
Ano,
Duracao
from filmes
order by Ano;
--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select 
Nome,
Ano,
Duracao
from filmes
where Nome = 'De Volta para o Futuro';
--4 - Buscar os filmes lançados em 1997
select 
Nome,
Ano,
Duracao
from filmes
where Ano = 1997;
--5 - Buscar os filmes lançados APÓS o ano 2000
select 
Nome,
Ano,
Duracao
from filmes
where Ano > 2000;
--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select 
Nome,
Ano,
Duracao
from filmes
where Duracao > 100 and Duracao < 150
order by Duracao;
--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY (Ano) 
ORDER BY min(Duracao) desc;
--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select primeironome, ultimonome
from atores 
where genero = 'M';
--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select primeironome, ultimonome
from atores 
where genero = 'F'
order by primeironome;
--10 - Buscar o nome do filme e o gênero
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN Generos ON Filmes.ID = Generos.ID;
--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
JOIN Generos ON Filmes.ID = Generos.ID
where Generos.genero = 'Mistério';
--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN elencofilme  ON Filmes.Id = Elencofilme.idfilme 
JOIN Atores ON elencofilme.idator  = Atores.id;
