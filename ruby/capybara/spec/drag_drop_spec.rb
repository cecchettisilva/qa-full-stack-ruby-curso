describe "Drag and Drop", :dragdrop do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/drag_and_drop"
  end
  it "Homem aranha pertence ao time do Stark" do
    stark = find('div[class*="team-stark"] div')
    spiderman = find('img[alt$="Aranha"]') # encontra a imagem que termina com "Aranha", usando Regex
    spiderman.drag_to stark
  end
  after(:each) do
    sleep 3
  end
end

