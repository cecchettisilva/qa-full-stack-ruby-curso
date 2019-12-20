describe "Dynamic Control", :dynamic do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/dynamic_controls"
  end
  it "quando habilita o campo" do
    # disabled: true - disabled está ativo
    # disabled: false - disabled não está ativo
    res = page.has_field? "movie", disabled: true #verifica se campo está habil
    puts res

    click_on "Habilita"
    input_movie = 'input[id="movie"]'

    res = page.has_field? "movie", disabled: false
    puts res
  end
end



