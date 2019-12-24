

class RestaurantPage
    include Capybara::DSL #a classe CartPage reconhece todos os recursos do Capybara 

    def details
        find('#detail')
    end

    def menu
        all(".menu-item-info-box")
    end

    def add_to_cart(name)
        find(".menu-item-info-box", text: name.upcase).find(".add-to-cart").click
    end

    def cart
        CartView.new
    end


end