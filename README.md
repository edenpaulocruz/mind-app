# MindApp - Uma Cloud Tags

Projeto prático realizado durante *bootcamp* na [Digital Innovation One](https://digitalinnovation.one/), sob orientação do [Bruno Oliveira](https://www.linkedin.com/in/brunoao86/).

## Descrição do projeto

Desenvolvimento de uma aplicação do zero utilizando o *framework* Ruby on Rails. 

A ideia da aplicação é reunir numa nuvem de tags artigos, notas, links etc.

Foi criado um CRUD dos conteúdos para cada usuário, que são associados às tags. É possível realizar pesquisa de conteúdos por tag. 

Para o gerenciamento de usuários e *login* foi utilizada a Gem [Devise](https://github.com/heartcombo/devise).

Foi utilizada a biblioteca [Bootstrap](https://getbootstrap.com/) para estilizar a aplicação. 

Foram criados alguns testes de validação para as tags.

Foi utilizada a versão 2.7 do Ruby e banco de dados Postgres.

## Como executar

Para executar localmente é ncessário clonar o repositório e ter instalado o Ruby, o Rails e o Postgres.

Após clonar o repositório, executar o `bundle install` para instalação das dependências.

Executar o comando `rails server` e abrir o navegador no endereço `http://127.0.0.1:3000`.