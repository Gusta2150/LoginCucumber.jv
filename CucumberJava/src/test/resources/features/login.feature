# language: pt

Funcionalidade: Login

  Cenário: Login com dados válidos
    Dado que o usuário digitou o nome "admin"
    E a senha "1234"
    Quando ele tenta fazer login
    Então o login deve ser autorizado

  Cenário: Login com dados inválidos
    Dado que o usuário digitou o nome "admin"
    E a senha "errada"
    Quando ele tenta fazer login
    Então o login deve ser negado

  Cenário: Login com usuário vazio
    Dado que o usuário digitou o nome ""
    E a senha "1234"
    Quando ele tenta fazer login
    Então o login deve ser negado

  Cenário: Login com senha vazia
    Dado que o usuário digitou o nome "admin"
    E a senha ""
    Quando ele tenta fazer login
    Então o login deve ser negado

  Cenário: Login com usuário e senha vazios
    Dado que o usuário digitou o nome ""
    E a senha ""
    Quando ele tenta fazer login
    Então o login deve ser negado

  Cenário: Login com usuário incorreto e senha correta
    Dado que o usuário digitou o nome "usuarioErrado"
    E a senha "1234"
    Quando ele tenta fazer login
    Então o login deve ser negado

  Cenário: Login com usuário correto e senha incorreta
    Dado que o usuário digitou o nome "admin"
    E a senha "senhaErrada"
    Quando ele tenta fazer login
    Então o login deve ser negado

  Cenário: Login com usuário joao e senha correta
    Dado que o usuário digitou o nome "joao"
    E a senha "senha123"
    Quando ele tenta fazer login
    Então o login deve ser autorizado

  Cenário: Login com usuário maria e senha correta
    Dado que o usuário digitou o nome "maria"
    E a senha "senha456"
    Quando ele tenta fazer login
    Então o login deve ser autorizado