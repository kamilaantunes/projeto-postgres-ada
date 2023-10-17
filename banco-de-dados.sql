CREATE DATABASE IF NOT EXISTS projeto-bancodados-ada

CREATE TYPE public.tipo_usuario AS ENUM ('administrador', 'funcionario');

CREATE TABLE IF NOT EXISTS public.usuarios(
    idUsuario SERIAL PRIMARY KEY,
    	nome CHARACTER VARYING(100) NOT NULL,
    	email CHARACTER VARYING(50) NOT NULL UNIQUE,
    	telefone CHARACTER VARYING(20) NOT NULL,
    	cep CHARACTER VARYING(10) NOT NULL,
    	logradouro CHARACTER VARYING(100) NOT NULL,
    	complemento CHARACTER VARYING(100),
    	bairro CHARACTER VARYING(45) NOT NULL,
    	cidade CHARACTER VARYING(45) NOT NULL,
    	estado CHARACTER VARYING(30) NOT NULL,
    	numero_residencia CHARACTER VARYING(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.acervo(
	idBook SERIAL PRIMARY KEY,
	titulo CHARACTER VARYING(50) NOT NULL,
	autor CHARACTER VARYING(100) NOT NULL,
	genero CHARACTER VARYING(50) NOT NULL,
	editora CHARACTER VARYING(50) NOT NULL,
	numeroCopias INTEGER DEFAULT 1,
	isbn INTEGER NOT NULL UNIQUE,
	palavraChave1 CHARACTER VARYING(20) NOT NULL,
	palavraChave2 CHARACTER VARYING(20),
	palavraChave3 CHARACTER VARYING(20),
	palavraChave4 CHARACTER VARYING(20),
	disponivel CHARACTER VARYING(20)
);
	
CREATE TABLE IF NOT EXISTS public.disponibilidade (
	idDisp SERIAL PRIMARY KEY,
	idUsuario INT REFERENCES public.teste_usuario(idUsuario),
	idBook INT REFERENCES public.teste_acervo(idBook),
	dataEmprestimo DATE,
	prazoDevolucao DATE,
	dataDevolucao DATE
);

CREATE TABLE if NOT EXISTS public.reserva (
	idReserva SERIAL PRIMARY KEY,
	idUsuario INT REFERENCES public.teste_usuario(idUsuario),
	idBook INT REFERENCES public.teste_acervo(idBook),
	dataReserva DATE,
	ativo BOOLEAN NOT NULL
);

    -- Criando tabela de administradores
CREATE TABLE if NOT EXISTS public.administradores(
	idAdm serial primary key,
	nome CHARACTER VARYING(100) NOT NULL,
    	email CHARACTER VARYING(50) NOT NULL UNIQUE,
    	telefone CHARACTER VARYING(20) NOT NULL,
    	cep CHARACTER VARYING(10) NOT NULL,
    	logradouro CHARACTER VARYING(100) NOT NULL,
    	complemento CHARACTER VARYING(100) NOT NULL,
    	bairro CHARACTER VARYING(45) NOT NULL,
    	cidade CHARACTER VARYING(45) NOT NULL,
    	estado CHARACTER VARYING(30) NOT NULL,
    	numero_residencia CHARACTER VARYING(5) NOT NULL
);

---------------------------------------------------------------------------------------------------------------

INSERT INTO public.usuario(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Ana Beatriz', 'ferraz.anab@gmail.com', '9953124250', '00000-000', 'Rua da Alegria', 'apto 12', 'Campestre', 'Santo André', 'São Paulo', 111
);

INSERT INTO public.usuario(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Filipe Santos', 'filipsants@gmail.com', '996336963', '00000-000', 'Rua da Laranja', 'apto 12', 'Jardim', 'Santo André', 'São Paulo', 845
);

INSERT INTO public.usuario(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Ana Maria', 'mariaana@gmail.com', '985258558', '00000-000', 'Rua Peixes', 'bloco c', 'Jardim Irene', 'Santo André', 'São Paulo', 1024
);

INSERT INTO public.usuario(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Henrique Silva', 'henrsilv@gmail.com', '945275742', '00000-000', 'Rua Aquário', 'bloco a, apto 55', 'Jardim Santo André', 'Santo André', 'São Paulo', 798
);

INSERT INTO public.usuario(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Leticia Kleiman', 'kkveigaleticia@gmail.com', '971241241', '00000-000', 'Rua das Aroeiras', 'apto 72', 'Centro', 'Santo André', 'São Paulo', 352
);

INSERT INTO public.administradores(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Ana Ferraz', 'ana.ferraz@gmail.com', '997735624', '00000-000', 'Rua das Bandeiras', 'apto 11', 'Vila Assunção', 'Santo André', 'São Paulo', 555
);

INSERT INTO public.administradores(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Bruna Leal', 'bruna.leal@gmail.com', '997735624', '00000-000', 'Avenida Oratório', 'apto 11', 'Vila Assunção', 'Santo André', 'São Paulo', 65
);

INSERT INTO public.administradores(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Ren Wrobleski', 'ren.wrobleski@gmail.com', '998567648', '00000-000', 'Rua Vitória Régia', 'apto 54', 'Campestre', 'Santo André', 'São Paulo', 167
);

INSERT INTO public.administradores(
    nome, email, telefone, cep, logradouro, complemento, bairro, cidade, estado, numero_residencia
) VALUES (
    'Kamila Antunes', 'kamilaantunes1@gmail.com', '994568754', '00000-000', 'Rua Caminho do Pilar', 'bloco 2', 'Vila Gilda', 'Santo André', 'São Paulo', 405
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
	'Aventuras de Alice no País das Maravilhas', 'Lewis Carroll', 'Fantasia', 'Editora Wonderland', 9781234567890, 'Aventura', 'Fantasia', 'Alice', 'Maravilhas', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'Dom Quixote', 'Miguel de Cervantes', 'Romance', 'Editora Mancha', 9780987654321, 'Aventura', 'Loucura', 'Cavaleiro', 'Sancho Pança', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    	'1984', 'George Orwell', 'Ficção Distópica', 'Editora Totalitarismo', 9785432109876, 'Distopia', 'Totalitarismo', 'Big Brother', 'Vigilância', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'O Hobbit', 'J.R.R. Tolkien', 'Fantasia', 'Editora Terra Média', 9780618968633, 'Aventura', 'Fantasia Épica', 'Tolkien', 'Anel', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'Orgulho e Preconceito', 'Jane Austen', 'Romance', 'Editora Regência', 9781987654321, 'Romance Clássico', 'Inglaterra', 'Elizabeth Bennet', 'Sr. Darcy', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
	'A Menina que Roubava Livros', 'Markus Zusak', 'Drama', 'Editora Roubada', 9780142001740, 'Segunda Guerra Mundial', 'Liesel Meminger', 'Literatura Alemã', 'Amizade', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'O Código Da Vinci', 'Dan Brown', 'Suspense', 'Editora Illuminati', '9781400079179', 'Mistério', 'Arte', 'Religião', 'Símbolos', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'O Alquimista', 'Paulo Coelho', 'Romance', 'Editora Caminho das Estrelas', 9780061122415, 'Espiritualidade', 'Jornada', 'Sonhos', 'Alquimia', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'A Revolução dos Bichos', 'George Orwell', 'Ficção Política', 'Editora Animal Farm', 9780451526342, 'Distopia', 'Sátira', 'Política', 'Animais', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Fantasia', 'Editora Hogwarts', 9780747532743, 'Magia', 'Escola de Magia', 'Harry Potter', 'Bruxos', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'Crime e Castigo', 'Fiódor Dostoiévski', 'Romance', 'Editora Russian Literature', 9780140449136, 'Psicologia', 'Crime', 'Redenção', 'Dostoiévski', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'As Crônicas de Nárnia: O Leão, a Feiticeira e o Guarda-Roupa', 'C.S. Lewis', 'Fantasia', 'Editora Mundo Mágico', 9780060764890, 'Mundo Fantástico', 'Aventura', 'Nárnia', 'Leão', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Conto', 'Editora Asteroide B-612', 9782701144126, 'Filosofia', 'Amizade', 'Planeta', 'Estrela', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'O Ladrão de Raios (Percy Jackson e os Olimpianos)', 'Rick Riordan', 'Fantasia', 'Editora Camp Half-Blood', 9780786838653, 'Mitologia Grega', 'Aventura', 'Percy Jackson', 'Deuses', 'disponível'
);

INSERT INTO public.acervo(
	titulo, autor, genero, editora, isbn, palavraChave1, palavraChave2, palavraChave3, palavraChave4, disponivel
) VALUES (
    'Cem Anos de Solidão', 'Gabriel García Márquez', 'Realismo Mágico', 'Editora Macondo', 9780061120091, 'Família', 'Amor', 'Solidão', 'Macondo', 'indisponível'
);


INSERT INTO public.disponibilidade(
	idUsuario, idBook, dataEmprestimo, prazoDevolucao, dataDevolucao
) VALUES (
	1, 1, '2023-10-15', '2023-10-30', NULL
);

INSERT INTO public.disponibilidade(
	idUsuario, idBook, dataEmprestimo, prazoDevolucao, dataDevolucao
) VALUES (
    2, 2, '2023-09-25', '2023-10-10', '2023-10-05' 
);

INSERT INTO public.disponibilidade(
	idUsuario, idBook, dataEmprestimo, prazoDevolucao, dataDevolucao
)VALUES(
    3, 3,'2023-08-20','2023-09-05','2023-09-01'
);

INSERT INTO public.disponibilidade(
	idUsuario, idBook, dataEmprestimo, prazoDevolucao, dataDevolucao
)VALUES(
    4, 4, '2023-11-02', '2023-11-17',  NULL
);

INSERT INTO public.disponibilidade(
	idUsuario, idBook, dataEmprestimo, prazoDevolucao, dataDevolucao
) VALUES (
    5, 5, '2023-07-10','2023-07-25','2023-07-20'
);

INSERT INTO public.reserva(
	idUsuario, idBook, dataReserva, ativo
) VALUES (
    1, 10, '2023-10-10', true
);

INSERT INTO public.reserva(
	idUsuario, idBook, dataReserva, ativo
) VALUES (
    2, 9, '2023-10-10', true
);

INSERT INTO public.reserva(
	idUsuario, idBook, dataReserva, ativo
) VALUES (
    3, 8, '2023-08-15', false
);

INSERT INTO public.reserva(
	idUsuario, idBook, dataReserva, ativo
) VALUES (
    4, 7, '2023-11-05', true
);

INSERT INTO public.reserva(
	idUsuario, idBook, dataReserva, ativo
) VALUES (
    5, 6, '2023-07-25', true
);

    -- Criando um empréstimo
INSERT INTO public.disponibilidade(
    idUsuario, idBook, idAdm, dataEmprestimo, prazoDevolucao
) VALUES (
    1, 1, 1, '2023-10-07', '2023-10-14'
);

commit;

    -- Criando uma reserva
INSERT INTO public.reservas(
    idBook, idUsuario, dataReserva
) VALUES (
    2, 1, now()
);

commit;