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

    def get_planets_with_no_moons()
      @planets.find_all { |planet| planet.number_of_moons == 0} 
    end

    def get_planets_more_moons(moon_count)
      @planets.find_all { |planet| planet.number_of_moons >= moon_count} 
    end

    def get_number_of_planets_closer_than(distance)
      @planets.find_all { |planet| planet.distance_from_sun(distance) < distance}.count
    end
end
