Quando('acesso um dos produtos disponíveis') do
    @inventario_page.detalhar_produto("Sauce Labs Fleece Jacket")
  end
  
  Então('tenho acesso ao detalhamento correspondente') do
    expect(@produto_detalhamento.buscar_dados_produto).to be true
  end

  Quando('adiciono ao carrinho') do
    @produto_detalhamento.adicionar_carrinho
  end
  
  
