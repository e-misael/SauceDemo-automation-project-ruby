class ProdutoDetalhesPage
    include Capybara::DSL

    def is_detalhamento_produto?
        return page.has_css?("#inventory_item_container")
    end
    
    def buscar_dados_produto
        is_detalhamento_produto?
    end

    def adicionar_carrinho
        click_button "ADD TO CART"
    end
end