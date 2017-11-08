require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class TestPub < MiniTest::Test
  def setup
    @beer_1 = Drink.new('Tennants', 5, 4)
    @beer_2 = Drink.new('Carling', 6, 6)
    @beer_3 = Drink.new('Corona', 4, 7)
    drinks = [@beer_1,@beer_2,@beer_3]
    @pub = Pub.new('The Red Lion', 0, drinks)
  end

  def test_get_name
    assert_equal('The Red Lion', @pub.name)
  end

  def test_get_till
    assert_equal(0, @pub.till)
  end

  def test_get_drinks
    assert_equal([@beer_1,@beer_2,@beer_3], @pub.drinks)
  end
end
