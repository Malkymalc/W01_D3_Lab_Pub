class Pub
  attr_reader :name
  attr_accessor :till, :drinks

  def initialize(name, till, drinks_arr)
    @name = name
    @till = till
    @drinks = drinks_arr
  end

  def age_check(customer)
    return true if customer.age > 18
    return false
  end

  def drunk_check(customer)
    return false if customer.drunkeness > 5
    return true
  end

  def add_to_till(drink)
    @till += drink.price
  end

  def remove_drink(drink)
    @drinks.delete(drink)
  end
end
