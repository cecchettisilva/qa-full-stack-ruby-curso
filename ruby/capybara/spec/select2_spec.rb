describe "Select 2", :select2 do
  describe("single") do
    before(:each) do
      visit "/apps/select2/single.html"
    end
    it "Seleciona ator por nome" do
      find('span[class*="select2-selection--single"]').click
      find('body[class="ng-scope"] select option', text: "Adam Sandler").click
    end
    it "Quando busco pelo nome do ator" do
      find('span[class*="select2-selection--single"]').click
      find('input[class="select2-search__field"]').set "Chris Rock"
      find(".select2-results__options").click
    end
  end
  describe("multiple") do
    before(:each) do
      visit "apps/select2/multi.html"
    end
  end
  after(:each) do
    sleep 3
  end
end

def selecione(ator)
  find('span[class*="select2-selection--multiple"]').click
  find('input[class="select2-search__field"]').set ator
  find(".select2-results__options").click
end

describe("multiple", :mult) do
  before(:each) do
    visit "apps/select2/multi.html"
  end
  it "Escolhendo vários atores" do 
    atores = ['Jim Carrey', 'Chris Rock', 'Kevin James']

    atores.each do |a|
      selecione(a)  
    end
    sleep 3
  end
end
