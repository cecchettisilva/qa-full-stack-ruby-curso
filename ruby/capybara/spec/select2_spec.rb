describe "Select 2", :select2 do
  describe("single") do
    before(:each) do
      visit "/apps/select2/single.html"
    end
    it 'Seleciona ator por nome' do 
      find('span[class*="select2-selection--single"]').click
      find('body[class="ng-scope"] select option')
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
