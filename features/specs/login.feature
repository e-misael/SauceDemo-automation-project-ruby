#language: pt
Funcionalidade: Login
    Sendo um usuário cadastrado
    Quero acessar a loja SauceDemo
    Para que eu possa acessar os produtos

    Cenário: Login do usuário

        Dado que acesso a tela de login
        Quando submeto minhas credenciais com "standard_user" e "secret_sauce"
        Então sou redirecionado para a tela principal

    Esquema do Cenario: Tentativa de login

        Dado que acesso a tela de login
        Quando submeto minhas credenciais com os valores
            | usuario   | senha   |
            | <usuario> | <senha> |
        Então vejo a mensagem de alerta: "<mensagem>"

        Exemplos:
            | usuario         | senha        | mensagem                                                                  |
            | standard_user   | pass12       | Epic sadface: Username and password do not match any user in this service |
            | standard_user   | pass1234     | Epic sadface: Username and password do not match any user in this service |
            | standard_user_  | secret_sauce | Epic sadface: Username and password do not match any user in this service |
            | standard_user_  |              | Epic sadface: Password is required                                        |
            |                 | secret_sauce | Epic sadface: Username is required                                        |
            |                 |              | Epic sadface: Username is required                                        |
            | locked_out_user | secret_sauce | Epic sadface: Sorry, this user has been locked out.                       |