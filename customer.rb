class Customer
  attr_reader :name, :age, :wallet, :drunkeness

  def initialize(name, age, wallet, drunkeness)
    @name = name
    @age = age
    @wallet = wallet
    @drunkeness = drunkeness
  end

  def buy_drink(drink, pub)
    @wallet -= drink.price
    pub.till += drink.price
    pub.drinks.delete(drink)
  end

end
