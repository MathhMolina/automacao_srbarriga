class LoginPage < SitePrism::Page
    element :input_email, '#email'
    element :input_senha, '#senha'
    element :btn_entrar, 'button[class="btn btn-primary"]'
    element :alerta, 'div[class*="alert"]'
    elements :lista_alerta, 'div[class*="alert"]'

    def entrar email, senha
        input_email.set email
        input_senha.set senha
        btn_entrar.click
    end


end