# Sistema de Gerenciamento de Biblioteca!
<hr>

Bem-vindo ao projeto final do Módulo 05 - Banco de Dados (Postgres), parte integrante do curso de DevOps oferecido pela Ada Tech em parceria com a Núclea. Este projeto foi desenvolvido utilizando a linguagem SQL e o banco de dados relacional, Postgres.

Este projeto tem como objetivo criar o design de um banco de dados para uma biblioteca fictícia. A finalidade principal do desenvolvimento deste projeto é a avaliação dos alunos no módulo de banco de dados - PostgreSQL, no âmbito do curso de DevOps oferecido pela Ada Tech em parceria com a Nuclea, sob a instrução do professor Cristiano Neves.
O escopo do projeto envolve o desenvolvimento da estrutura do banco de dados para um sistema de gerenciamento de biblioteca. Esse sistema permitirá que os usuários realizem pesquisas e reservem livros, que os funcionários efetuem empréstimos e devoluções, e que os administradores mantêm o controle do acervo da biblioteca.
<hr>

## Funcionalidades principais
As principais funcionalidades do sistema de gerenciamento de biblioteca, são:
1. **Cadastro de usuários**: os usuários devem se cadastrar no sistema fornecendo informações como nome, endereço, número de telefone e endereço de e-mail.
2. **Gerenciamento do acervo**: os administradores do sistema podem adicionar, atualizar e excluir informações sobre livros (incluindo autor, ISBN, editora e número de cópias disponíveis), deve ser possível identificar individualmente cada exemplar de um mesmo livro.
3. **Empréstimo e devolução**: os funcionários da biblioteca podem registrar empréstimos, associando um exemplar de livro a um usuário e uma data de empréstimo e prazo de devolução. Os funcionários também podem registrar devoluções, atualizando o status do livro emprestado e registrando a data de devolução.
4. **Pesquisa de livros**: os usuários podem pesquisar livros por títulos, autor, gênero, IBSN, palavras chaves, etc. Os resultados da pesquisa devem mostrar informações sobre o livro e sua disponibilidade.
5. **Reserva de livros**: os usuários podem reservar livros que estão atualmente emprestados por outros usuários. Quando um livro resvervado se tornar disponível, será possível o sistema notificar o usuário que o reservou. Quando for efetuar o empréstimo de um livro deve ser possível verificar se o mesmo se encontra reservado para outros usuários que devem ter prioridade no empréstimo do mesmo.
<hr>

## Cenários e requisitos
1. **Cadastro de usuários**: <br>
    1.1. Os usuários devem poder se cadastrar no sistema, fornecendo informações como nome, endereço, número de telefone e endereço de e-mail.<br>
    1.2. O sistema deve validar a unicidade do endereço de e-mail para evitar últimos cadastrados com o mesmo e-mail.<br>
    1.3. Deve ser possível que os usuários atualizem suas informações pessoais, como endereço ou número de telefone.<br>
2. **Gerenciamento de acervo**:
    2.1. Os administradores do sistema devem ter a capacidade de adicionar, atualizar e excluir informações sobre livros.
    2.2. Cada exemplar de um livro deve ser identificado individualmente para controle de disponibilidade.
    2.3. O sistema deve manter informações detalhadas sobre cada livro, incluindo autor, ISBN, editora e número de cópias disponíveis.
3. **Empréstimo e devolução**:
    3.1. Os funcionários da biblioteca devem ser capazes de registrar empréstimos, associando um exemplar de livro a um usuário e especificando a data de empréstimo e o prazo de devolução.
    3.2. O sistema deve calcular automaticamente a data de devolução com base no prazo estabelecido.
    3.3. Os funcionários também devem ser capazes de registrar devoluções, atualizando o status do livro emprestado e registrando a data de devolução.
    3.4. Deve haver um mecanismo para lidar com atrasos nas devoluções, incluindo cálculo de multas, se aplicável.
4. **Pesquisa de livros**:
    4.1. Os usuários devem poder pesquisar livros por diferentes critérios, como título, autor, gênero, IBSN e palavras-chaves.
    4.2. Os resultados da pesquisa devem mostrar informações detalhadas sobre o livro, incluindo disponibilidade (se está emprestado ou não) e a localização na biblioteca.
5. **Reserva de livros**:
    5.1. Os usuários devem ser capazes de reservar livros que estão atualmente emprestados por outros usuários.
    5.2. O sistema deve manter uma lista de reservas para cada livro, registrando os usuários que reservaram e a ordem de reservas.
    5.3. Quando um livro reservado se tornar disponível, o sistema deve notificar o usuário que o reservou.
    5.4. Durante o processo de empréstimo, o sistema deve verificar se o livro está reservado para outros usuários e priorizar o empréstimo para o usuário que fez a reserva.
<hr>

## Execução do projeto
1. Clonar este repositório em sua máquina;
2. Instale as dependências necessárias.
<hr>

Kamila Antunes ☕
