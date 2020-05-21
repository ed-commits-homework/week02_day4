class StarSystem
  attr_reader :name, :planets

    def initialize(name, planet_array = [])
      @name = name
      @planets = planet_array
    end

    def planet_names
      @planets.map{ |planet| planet.name }
    end

    def get_planet_by_name(name)
      @planets.find{ |planet| planet.name == name }
    end
end
