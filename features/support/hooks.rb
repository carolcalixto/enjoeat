require "base64"

Before do
    page.current_window.resize_to(1440, 900)

    @rest_list_page = RestaurantListPage.new
    @rest_page = RestaurantPage.new #coloquei o @ pra se transformar em um objeto de instância em ruby (global) e ser possível usar a instância em outras classes sem problemas
    @order_page = OrderPage.new
end

Before('@bread_bakery') do
    visit "/restaurants/bread-bakery/menu"
end

Before('@green_food') do
    visit "/restaurants/green-food/menu"
end

After do |scenario|
    if scenario.failed?
        shot_file = page.save_screenshot("log/screenshot.png")
        shot_b64 = Base64.encode64(File.open(shot_file, "rb").read) #vai ler o arquivo que é uma imagem, vai converter para B 64 e vai gravar isso na variável
        embed(shot_b64, "image/png", "Screenshot") #o embed anexa itens ao relatório, e aqui estamos anexando os screenshots
    end
end