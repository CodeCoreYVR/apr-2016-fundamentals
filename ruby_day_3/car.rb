class Car

  def initialize(model_type, capacity)
    # @model, @capacity = model_type, capacity
    @model = model_type
    @capacity = capacity
  end

  def self.max_speed
    200
  end

  def drive
    ignite_engine
    puts "Driving..."
  end

  def stop
    puts "Stopping..."
  end

  def park
    puts "Parking..."
  end

  private

  def pump_gas
    puts "pumping gas"
  end

  def ignite_engine
    puts "Igniting Engine"
  end
end
