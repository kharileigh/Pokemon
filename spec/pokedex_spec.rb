require 'rspec'
require_relative '../lib/pokemon'
require_relative '../lib/pokedex'

RSpec.describe Pokedex do
  
  # Pokedex instance
  let(:pokedex) { Pokedex.new}

  # Pokemon mock instance -- needed to retrieve the level
  let(:pokemon_mock) { instance_double('Pokemon', get_level: 5) }

  # equals 0
  it 'has a total level of 0 when no Pokemon is in Pokedex' do

    expect(pokedex.total_level).to eq(0)
  end

  # add Pokemon with level 5, total level equals 5
  it 'adds a Pokemon and updates total level' do

    pokedex.add_pokemon(pokemon_mock)
    expect(pokedex.total_level).to eq(5)
  end

  # total level equals 25
  it 'correctly calculates total level after adding multiple Pokemons' do
    
    # get levels from Pokemons
    pokemon1 = instance_double('Pokemon', get_level: 5)
    pokemon2 = instance_double('Pokemon', get_level: 10)
    pokemon3 = instance_double('Pokemon', get_level: 10)

    # add them to Pokedex
    pokedex.add_pokemon(pokemon1)
    pokedex.add_pokemon(pokemon2)
    pokedex.add_pokemon(pokemon3)
  
    # check total level
    expect(pokedex.total_level).to eq(25)
  end

end