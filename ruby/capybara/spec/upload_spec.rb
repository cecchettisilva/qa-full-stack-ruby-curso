describe "Upload de arquivos", :upload do
  before(:each) do
    visit "https://training-wheels-protocol.herokuapp.com/upload"
    @arquivo = Dir.pwd + '/spec/features/teste.txt'
    @imagem = Dir.pwd + '/spec/features/XOCANU.png'
  end
  it "upload com arquivo texto" do
    attach_file('file-upload', @arquivo)
    click_on('file-submit')
    expect(page).to have_content('.txt')
  end
  it "upload de imagem", :imagem do
    attach_file('file-upload', @imagem)
    click_on('file-submit')
    img = find('#new-image')
    expect(img[:src]).to include '.png'
  end
  after(:each) do
    sleep 3
  end
end
