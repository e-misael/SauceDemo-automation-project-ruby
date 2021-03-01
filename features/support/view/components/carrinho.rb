class Carrinho
    include Capybara::DSL
    
    def verificar_tamanho_carrinho
        find(".shopping_cart_badge").text.to_i
    end
end