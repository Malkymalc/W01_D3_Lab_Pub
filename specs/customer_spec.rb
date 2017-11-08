require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class TestCustomer < MiniTest::Test
  def setup
    @customer_1 = Customer.new('Malcolm',38,100,0)
    @beer_1 = Drink.new('Tennants', 5, 4)
    @beer_2 = Drink.new('Carling', 6, 3)
    @beer_3 = Drink.new('Corona', 4, 7)
    drinks = [@beer_1,@beer_2,@beer_3]
    @pub = Pub.new('The Red Lion', 0, drinks)
  end

  def test_get_name
    assert_equal('Malcolm', @customer_1.name)
  end

  def test_get_age
    assert_equal(38, @customer_1.age)
  end

  def test_get_wallet_amount
    assert_equal(100, @customer_1.wallet)
  end

  def test_buy_drink
    @customer_1.buy_drink(@beer_1, @pub)
    assert_equal(95, @customer_1.wallet)
    assert_equal(5, @pub.till)
    assert_equal(2, @pub.drinks.count)

  end
end
