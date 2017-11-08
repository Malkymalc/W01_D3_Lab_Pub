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
end
