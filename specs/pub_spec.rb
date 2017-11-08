require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')
require_relative('../drink.rb')
require_relative('../pub.rb')

class TestPub < MiniTest::Test
  def setup
    @customer_1 = Customer.new('Malcolm',38,100,0)
    @customer_2 = Customer.new('Wee Bob',17,100,10)
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

  def test_age_check__over_18
    assert_equal(true, @pub.age_check(@customer_1))
  end

  def test_age_check__under_18
    assert_equal(false, @pub.age_check(@customer_2))
  end
  #
  def test_drunk_check__sober
    assert_equal(true, @pub.drunk_check(@customer_1))
  end

  def test_drunk_check__drunk
    assert_equal(false, @pub.drunk_check(@customer_2))
  end

    def test_add_to_till
      @pub.add_to_till(@beer_1)
      assert_equal(5, @pub.till)
    end

    def test_remove_drink
      @pub.remove_drink(@beer_3)
      assert_equal([@beer_1,@beer_2], @pub.drinks)
    end
end
