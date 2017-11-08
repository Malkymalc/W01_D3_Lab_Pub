require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class TestDrink < MiniTest::Test
  def setup
    @beer_1 = Drink.new('Tennants', 5, 0)
    @beer_2 = Drink.new('Carling', 6, 1)
    @beer_3 = Drink.new('Corona', 4, 2)
  end

  def test_get_name
    assert_equal('Tennants', @beer_1.name)
  end

  def test_get_price
    assert_equal(5, @beer_1.price)
  end

  def test_get_alcohol_level
    assert_equal(0, @beer_1.alcohol_level)
  end

end
