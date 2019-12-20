describe "Caixa de opções", :dropdown do # . :nome_da_tag => rspec --tag @nome_da_tag
    it 'item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown') # somente com id's e select
        sleep 3
    end
    it 'item especifico com o find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') 
        drop.find('option', text: 'Loki').select_option
        sleep 3
    end
    it 'Qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') 
        drop.all('option').sample.select_option # sorteia uma opção e seleciona
        sleep 3
    end
end