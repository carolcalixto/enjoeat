

class CartView
    include Capybara::DSL #a classe CartPage reconhece todos os recursos do Capybara 

    def box
        find("#shopping-cart")
    end

    def total
        box.find('tr', text: 'Total:').find('td')
    end

    def remove_item(item)
        box.all('table tbody tr')[item].find(".danger").click
    end

    def clean
        click_button "Limpar" 
    end

    def close
        click_link "Fechar Pedido"
    end

end