# encoding: UTF-8
# coding: UTF-8
# -*- coding: UTF-8 -*-

describe "Forms" do
  #LOGIN COM SUCESSO
  it "login com sucesso" do
    visit "https://training-wheels-protocol.herokuapp.com/login"
    fill_in "username", with: "stark"
    fill_in "password", with: "jarvis!"
    click_button "Login"
    expect(find("#flash").visible?).to be true # true or false
    puts find('#flash').text # Imprime o texto em tela
    expect(page).to have_content('Olá, Tony Stark. Você acessou a área logada!')
  end
  #SENHA INCORRETA
  it "senha incorreta" do 
    visit "https://training-wheels-protocol.herokuapp.com/login"
    fill_in "username", with: "stark"
    fill_in "password", with: "jarvis"
    click_button "Login"
    expect(find("#flash").visible?).to be true # true or false
    puts find('#flash').text # Imprime o texto em tela
    expect(page).to have_content('Senha é invalida!')
  end
  it 'usuário não cadastrado' do
    visit "https://training-wheels-protocol.herokuapp.com/login"
    fill_in "username", with: "asas"
    fill_in "password", with: "jarvis"
    click_button "Login"
    expect(find("#flash").visible?).to be true # true or false
    puts find('#flash').text # Imprime o texto em tela
    expect(page).to have_content('O usuário informado não está cadastrado!')
  end
end




            