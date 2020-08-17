class CadastroUsuarioPage < SitePrism::Page

    element :input_nome, "#nome"
    element :input_email, "#email"
    element :input_senha, "#senha"
    element :button_cadastrar, 'input[type="submit"]'
    element :alerta, 'div[class*=alert]'
    
    def cadastrar nome, email, senha
        input_nome.set nome
        input_email.set email
        input_senha.set senha
        button_cadastrar.click        
    end

end