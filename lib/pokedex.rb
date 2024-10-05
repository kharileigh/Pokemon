class Pokedex
  
  # initialise empty array to hold all Pokemons
  def initialize 
    @pokemons = []
  end
  

  # adds Pokemons to Pokedex
  def add_pokemon(pokemon)

    @pokemons << pokemon
  end


  # retrieves total level of Pokemons
  def total_level
    
    @pokemons.sum(&:get_level)
  end

end