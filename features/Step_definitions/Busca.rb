Given("Estou na tela principal do sistema") do
    visit("https://google.com")
end

Given("eu clico no botão Todos os Atletas") do
    click_button('Todos os Atletas')
end

Then(" vou para a pagina de busca") do
    visit('localhost:3000')
end

When("eu preencho o campo Pesquisar com o nome do atleta") do
    fill_in('Pesquisar', :with => 'Danilo')
end

And ("Aperto procurar") do
    click_button('Procurar')
end

Then("quero ver o atleta com o nome pesquisado") do

end