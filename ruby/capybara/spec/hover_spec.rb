describe "Mouse hover", :hover do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/hovers"
  end
  it "Quando passo o mouse sobre o Blade" do
    card = find('img[alt="Blade"]')
    card.hover
    expect(page).to have_content 'Nome: Blade'
  end
  it "Quando passo o mouse sobre o Pantera Negra" do
    card2 = find('img[alt="Pantera Negra"]')
    card2.hover
    expect(page).to have_content 'Nome: Pantera Negra'
  end
  it "Quando passo o mouse sobre o Homem Aranha" do
    card3 = find('img[alt="Homem Aranha"]')
    card3.hover
    expect(page).to have_content 'Nome: Homem Aranha'
  end
  after(:each) do 
    sleep 3
  end
end
