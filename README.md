# LoginCucumber

🎯 Objetivo

O objetivo deste projeto é demonstrar, de forma simples e prática, como implementar testes automatizados de aceitação utilizando a abordagem BDD (Behavior-Driven Development) com Cucumber em um projeto Java.
A aplicação simula um sistema básico de login, e os testes garantem que diferentes cenários de autenticação — como sucesso, falha e entradas inválidas — sejam corretamente tratados pela lógica da aplicação.
Este projeto é ideal para iniciantes que queiram aprender como:
Escrever testes em linguagem natural (Gherkin);
Integrar Cucumber com Java e JUnit;
Executar testes automatizados via Maven;
Estruturar um ambiente de teste separado da lógica da aplicação.

# 🧪 Projeto de Teste de Login com Cucumber e Java
Este projeto simula um sistema simples de autenticação com testes automatizados usando **Cucumber**, **JUnit** e **Java**.

## 📁 Estrutura do Projeto
├── src
│ ├── main
│ │ └── java
│ │ └── app
│ │ └── LoginService.java # Lógica da aplicação
│ └── test
│ ├── java
│ │ ├── runner
│ │ │ └── RunCucumberTest.java # Runner de testes
│ │ └── steps
│ │ └── LoginSteps.java # Definição dos passos BDD
│ └── resources
│ └── features
│ └── login.feature # Cenários de teste em Gherkin
├── pom.xml #Gerenciador Maven
└── README.md *

## ✅ Funcionalidade
A funcionalidade testada é uma autenticação simples baseada em usuários pré-definidos.

### Usuários válidos:
- `admin` / `1234`
- `joao` / `senha123`
- `maria` / `senha456`

## 💬 Exemplo de Cenário de Teste (`login.feature`)
gherkin
# language: pt

Funcionalidade: Login
  Cenário: Login com dados válidos
    Dado que o usuário digitou o nome "admin"
    E a senha "1234"
    Quando ele tenta fazer login
    Então o login deve ser autorizado
