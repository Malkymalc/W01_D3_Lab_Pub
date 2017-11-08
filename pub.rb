class Pub
  attr_reader :name
  attr_accessor :till, :drinks

  def initialize(name, till, drinks_arr)
    @name = name
    @till = till
    @drinks = drinks_arr
  end
end
