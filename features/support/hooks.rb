Before do
    @login_page = LoginPage.new
    
    @inventario_page = InventarioPage.new
    @produto_detalhamento = ProdutoDetalhesPage.new
    
    @estoque_produto = EstoqueProdutos.new
    @carrinho = Carrinho.new
    @alerta = Alerta.new

    page.current_window.maximize
end