describe Shop do
  let(:shop) { Shop.new }
  let(:attributes) do 
    {
      title: "Barber",
      opening_date: 1973,
      owner: "George Omondi",
      
    }
  end

  it 'inherits from ActiveRecord::Base' do
    expect(Shop.superclass).to eq(ActiveRecord::Base)
  end

  it 'has a title' do
    shop.title = "The Shop"
    expect(shop.title).to eq("The Shop")
  end

  it 'has a opening date' do
    shop.opening_date = 1999
    expect(shop.opening_date).to eq(1999)
  end

  it 'has a owner' do
    shop.owner = "The Wachowski Sisters"
    expect(shop.owner).to eq("The Wachowski Sisters")
  end


  it 'can be instantiated with a hash of attributes' do
    expect { Shop.new(attributes) }.not_to raise_error
  end

  describe 'Create' do

    describe '.create_with_title' do
      it 'saves the title to the sjop' do
        titled_shop = Shop.create_with_title("This is a title.")
        expect(titled_shop.title).to eq("This is a title.")
      end
  
      it 'creates a new record in the database' do
        expect { Shop.create_with_title("This is a title.") }.to change(Shop, :count).by(1)
      end
    end

  end

 

end
