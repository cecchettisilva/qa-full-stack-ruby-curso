describe "Drag and Drop", :dragdrop do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/drag_and_drop"
  end
  it "Homem aranha pertence ao time do Stark" do
    stark = find('div[class*="team-stark"] div')
    cap = find('div[class*="team-cap"] div')

    spiderman = find('img[alt$="Aranha"]') # encontra a imagem que termina com "Aranha", usando Regex
    spiderman.drag_to stark
    expect(stark).to have_css 'img[alt$="Aranha"]' # verifica se foi para o time Stark
    expect(cap).not_to have_css 'img[alt$="Aranha"]' # verifica se não há mais a imagem na div, fazendo um double check
  end
  after(:each) do
    sleep 3
  end
end

