class Bus

  attr_reader :name, :capacity, :passengers

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(passenger_name)
    @passengers << passenger_name
  end

  def yell_at_passengers
    @passengers.map(&:upcase)
  end

  def number_of_passengers
    @passengers.count
  end

  def over_capacity?
    if @passengers.count <= 3
      false
    else
      true
    end
  end

end
