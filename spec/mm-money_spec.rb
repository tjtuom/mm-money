require File.join(File.dirname(__FILE__), %w[spec_helper])

describe "Money key" do
  before(:all) do
    Money.default_currency = 'EUR'
    class ::Product
      include MongoMapper::Document

      key :price, Money
    end
  end

  before(:each) do
    ::Product.collection.remove
  end

  after(:all) do
    Object.send :remove_const, :Product if defined?(::Product)
  end

  it 'returns money objects' do
    Product.new(:price => 10).price.should be_kind_of(Money)
  end

  it 'handles integers correctly' do
    Product.new(:price => 10).price.should == Money.new(1000, 'EUR')
  end

  it 'handles floats correctly' do
    Product.new(:price => 9.99).price.should == Money.new(999, 'EUR')
  end

  it 'handles strings correctly' do
    Product.new(:price => '10').price.should == Money.new(1000, 'EUR')
  end

  it 'handles strings with currency in them correctly' do
    Product.new(:price => '10 USD').price.should == Money.new(1000, 'USD')
  end

  it 'handles saving and loading to the db correctly' do
    Product.new(:price => '10 USD').save!
    Product.first.price.should == Money.new(1000, 'USD')
  end

  it 'handles sorting in the db properly' do
    first = Product.create!(:price => 10)
    third = Product.create!(:price => 30)
    second = Product.create!(:price => 20)

    Product.sort(:price.asc).all.should == [first, second, third]
  end
end
