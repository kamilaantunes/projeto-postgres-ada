CREATE VIEW public.PesquisaLivro AS
SELECT
    idBook AS idLivro,
    titulo,
    autor,
    genero,
    numeroCopias,
    isbn,
    palavraChave1,
    palavraChave2,
    palavraChave3,
    palavraChave4,
    CASE
        WHEN (SELECT COUNT(*)
            FROM public.disponibilidade
            WHERE disponibilidade.idBook = idLivro) > (SELECT COUNT(*)
                FROM public.acervo
                JOIN public.disponibilidade ex ON (ex.idBook = idLivro)
                WHERE idBook = idLivro
                AND ex.dataDevolucao IS NULL)
            Then 'Disponível'
            Else 'Indisponível'
    END AS disponivel
FROM public.acervo
LEFT JOIN public.disponibilidade emp ON (acervo.idLivro = idBook)
LEFT JOIN public.reserva res ON (acervo.idLivro = idBook)
GROUP BY idBook, titulo, autor, genero, numeroCopias, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel;
	
    -- Pesquisa de livro através de palavra-chave
SELECT * 
FROM acervo
WHERE titulo ILIKE '%palavraChave1%'
    OR titulo ILIKE '%palavraChave2'
    OR titulo ILIKE '%palavraChave3%'
    OR titulo ILIKE '%palavraChave4%';

    -- Pesquisa de livros através do autor
SELECT * 
FROM acervo
WHERE autor ILIKE '%autor%'; 

    -- Pesquisa de livros através do código ISBN
SELECT *
FROM acervo
WHERE isbn = 'ISBN123456';

    -- Verifica se um livro está reservado
SELECT COUNT(*)
FROM reserva
WHERE idBook = 1; 

    -- Consulta os dados dos usuários
SELECT *
FROM public.usuarios

    -- Consulta os dados dos administradores que cadastrou um determinado livro
SELECT l.idBook,
       l.titulo,
       l.autor,
       l.genero,
       a.idAdm,
       a.nome 
FROM public.acervo l
JOIN administradores ad ON (l.idAdm = ad.idAdm)

    -- Retorna os dados de empréstimos feitos por um funcionário
SELECT f.idAdm,
       f.nome,
       e.idDisp,
       e.dataEmprestimo,
       e.dataDevolucao,
       l.idBook
       l.titulo, 
       l.autor, 
       l.genero
FROM  public.administradores f
JOIN public.disponibilidade e ON (f.idAdm = e.idAdm)
JOIN public.acervo l ON (e.idBook = l.idBook)

    -- Pesquisa livros por condicionais
SELECT *
FROM public.acervo
WHERE titulo like '%Dom%'
    AND   autor = 'Machado de Assis'
    AND   genero = 'Romance'
    AND   isbn = 1234567890
    AND   numeroCopias = 5