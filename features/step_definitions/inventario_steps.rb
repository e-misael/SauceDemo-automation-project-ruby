Quando('defino a ordenação dos produtos de forma {string}') do |ordenacao|
    @inventario_page.ordenar_produtos(ordenacao)
end
  
Então('os produtos devem ser ordenados de forma {string}') do |ordenacao|

    case (ordenacao)
        when "nome_asc"
            expect(@inventario_page.buscar_produtos_inventario)
                .to match(@estoque_produto.listar_produtos_ordem_nome_asc) 
        when "nome_desc"
            expect(@inventario_page.buscar_produtos_inventario)
                .to match(@estoque_produto.listar_produtos_ordem_nome_desc)
        when "preco_asc"
            expect(@inventario_page.buscar_produtos_inventario)
                .to match(@estoque_produto.listar_produtos_ordem_preco_asc)
        when "preco_desc"           
            expect(@inventario_page.buscar_produtos_inventario)
                 .to match(@estoque_produto.listar_produtos_ordem_preco_desc)    
        end
end