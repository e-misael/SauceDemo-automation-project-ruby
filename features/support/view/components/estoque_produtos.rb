class EstoqueProdutos
    include Capybara::DSL

     attr_accessor :nome, :descricao, :preco
     
     # Lista de estoque

     def listar_produtos_existentes
        
        produtos_inventario = []

        produto = 
            {:nome=> "Sauce Labs Backpack", 
             :descricao=> "carry.allTheThings() with the sleek, streamlined Sly Pack that melds uncompromising style with unequaled laptop and tablet protection.", 
             :preco=> "$29.99"}

        produtos_inventario << produto

        produto = 
            {:nome=> "Sauce Labs Bike Light", 
            :descricao=> "A red light isn't the desired state in testing but it sure helps when riding your bike at night. Water-resistant with 3 lighting modes, 1 AAA battery included.", 
            :preco=> "$9.99"}

        produtos_inventario << produto

        produto = 
            {:nome=> "Sauce Labs Bolt T-Shirt", 
            :descricao=> "Get your testing superhero on with the Sauce Labs bolt T-shirt. From American Apparel, 100% ringspun combed cotton, heather gray with red bolt.", 
            :preco=> "$15.99"}

        produtos_inventario << produto

        produto = 
            {:nome=> "Sauce Labs Fleece Jacket", 
            :descricao=> "It's not every day that you come across a midweight quarter-zip fleece jacket capable of handling everything from a relaxing day outdoors to a busy day at the office.", 
            :preco=> "$49.99"}

        produtos_inventario << produto

        produto = 
            {:nome=> "Sauce Labs Onesie", 
            :descricao=> "Rib snap infant onesie for the junior automation engineer in development. Reinforced 3-snap bottom closure, two-needle hemmed sleeved and bottom won't unravel.", 
            :preco=> "$7.99"}

        produtos_inventario << produto

        produto = 
            {:nome=> "Test.allTheThings() T-Shirt (Red)", 
            :descricao=> "This classic Sauce Labs t-shirt is perfect to wear when cozying up to your keyboard to automate a few tests. Super-soft and comfy ringspun combed cotton.", 
            :preco=> "$15.99"}

        produtos_inventario << produto

        return produtos_inventario
    end

    # Métodos de ordenação da lista de estoque conhecida
    def listar_produtos_ordem_nome_asc
        return listar_produtos_existentes
                    .sort_by{ |produto| produto[:nome] }
      end

      def listar_produtos_ordem_nome_desc
        return (listar_produtos_existentes.sort do |menor, maior|
            [maior[:nome], menor[:preco][1, menor[:preco].length].to_f ] <=> 
            [menor[:nome], maior[:preco][1, maior[:preco].length].to_f ] 
          end)
      end

    def listar_produtos_ordem_preco_asc
        return listar_produtos_existentes
                    .sort_by{ |produto| [produto[:preco][1, produto[:preco]
                    .length].to_f, produto[:nome]] }
        
      end
    
    def listar_produtos_ordem_preco_desc

        return (listar_produtos_existentes.sort do |menor, maior|
          [maior[:preco][1, maior[:preco].length].to_f, menor[:nome]] <=> 
          [menor[:preco][1, menor[:preco].length].to_f, maior[:nome]]
        end)
        
      end
end