class StarSystem
  attr_reader :name, :planets

    def initialize(name, planet_array = [])
      @name = name
      @planets = planet_array
    end
end
