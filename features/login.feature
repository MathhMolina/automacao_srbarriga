# language: pt
@sprint2
Funcionalidade: Login
    Sendo um usuário
    Posso logar no sistema
    Para ter acesso as funcionalidades

    Dado que estou na pagina de login
    @login_sucesso @logout
    Cenário: Login com sucesso
        E tenho um usuário já cadastrado na base
        Quando realizo o login
        Então tenho acesso para as funcionalidades
        E vejo a mensagem "Bem vindo,(NOME)!"
        
    @login_errado
    Esquema do Cenário: Login invalido
        E que tenho o "<email>" e "<senha>"
        Quando tento realizar o login
        Então vejo a mensagem "<mensagem>"

        Exemplos:
            |email        |senha|mensagem                    |
            |             |     |2_mensagens                 |
            |asd@asd.com  |     |Senha é um campo obrigatório|
            |             |asd  |Email é um campo obrigatório|