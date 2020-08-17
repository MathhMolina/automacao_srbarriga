# language: pt  
    @sprint1
    Funcionalidade: Cadastro de novo usuário
        Sendo um novo usuário
        Posso realizar o Cadastro
        Para acessar o sistema

    Contexto:
        Dado que estou na pagina de cadastro de usuário
    
    @cadastro_correto
    Cenário: Cadastro com sucesso
        E que tenho os dados corretos
        Quando preencho o formulário
        Então devo ver a mensagem "Usuário inserido com sucesso" 
        E devo conseguir logar
        
    @cadastro_incorreto
    Esquema do Cenário:Cadastros Inválidos 
        E tenho os dados "<nome>", "<email>" e "<senha>"
        Quando preencho o formulário
        Então devo ver a mensagem "<mensagem>" 
        E não devo conseguir logar
        Exemplos:
            |nome   |email      |senha  |mensagem                       |
            |       |asd@asd.com|asd    |Nome é um campo obrigatório    |
            |asd    |           |asd    |Email é um campo obrigatório   |
            |asd    |asd@asd.com|       |Senha é um campo obrigatório   |
