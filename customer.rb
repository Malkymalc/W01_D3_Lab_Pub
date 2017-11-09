class Customer
  attr_reader :name, :age, :wallet, :drunkeness

  def initialize(name, age, wallet, drunkeness)
    @name = name
    @age = age
    @wallet = wallet
    @drunkeness = drunkeness
  end

  def enough_cash(drink)
    return true if @wallet > drink.price
    return false
  end

  def pay_bill(drink)
    @wallet -= drink.price
  end

  def get_drunk(drink)
    @drunkeness += drink.alcohol_level
  end

  def buy_drink(drink, pub)
    return "Oh, what?!" #unless enough_cash(drink)
    return "Sorry, you're too young mate" #unless (pub.age_check(self))
    return "Sorry, you're too drunk mate" #unless (pub.drunk_check(self))
    return "I'm sorry, we're out of #{drink.name},would you like
    a #{pub.alt_suggest(drink)} instead?" #unless pub.has_drink(drink)
    pub.remove_drink(drink)
  end

  




  # def buy_drink(drink, pub)
  #   @wallet -= drink.price
  #   pub.till += drink.price
  #   pub.drinks.delete(drink)
  # end

end
