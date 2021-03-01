 class InventarioPage
    include Capybara::DSL

    def todos_elementos
        return page.all("div .inventory_item")
    end 

    def buscar_produtos_inventario
        
        is_inventario?
        # page.has_css?("#inventory_container")

        produtos_inventario = []

        # Passando por cada elemento, identificando atributos e adicionando à nova lista.
        todos_elementos.each do |item|

            produto = 
                {nome: item.find("div .inventory_item_name").text, 
                 descricao: item.find("div .inventory_item_desc").text,
                 preco: item.find("div .inventory_item_price").text}
            
            produtos_inventario << produto
        end
        
        return produtos_inventario

     end

    def ordenar_produtos(ordenacao)
        find(".product_sort_container").find('option', text: ordenacao).select_option
    end 

    def is_inventario?
        return page.has_css?("#inventory_container")
    end 

     def detalhar_produto (nome_produto)
        find("div .inventory_item_name", text: nome_produto).click

    end

 end