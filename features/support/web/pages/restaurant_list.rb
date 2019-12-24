

class RestaurantListPage
    include Capybara::DSL #a classe CartPage reconhece todos os recursos do Capybara 

    def load
        visit '/restaurants'
    end

    def go(restaurant)
        find(".restaurant-item", text: restaurant.upcase).click
    end

    def list 
        all('.restaurant-item') 
    end

end