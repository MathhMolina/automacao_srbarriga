class HomePage < SitePrism::Page 

    element :alerta, 'div[class*="alert"]'
    element :home, '.active a[href="/"]'
    element :movimentacao, '.nav.navbar-nav li a[href="/movimentacao"]'
    element :resumo, '.nav.navbar-nav li a[href="/extrato"]'
    element :sair, '.nav.navbar-nav li a[href="/logout"]'
    element :adicionar, '.nav.navbar-nav li ul li a[href="/addConta"]'
    element :listar, '.nav.navbar-nav li ul li a[href="/contas]'
    

    def logout 
        sair.click
    end
end