require 'rspec'
require_relative '../lib/pokemon'


RSpec.describe Pokemon do
  
  # initialise object
  let(:pokemon) { Pokemon.new('Pikachu', 'Electric', 5) }

  # retrieves name
  it 'returns the correct name' do
    
    expect(pokemon.get_name).to eq('Pikachu')
  end

  # retrieves type
  it 'returns the correct type' do
    
    expect(pokemon.get_type).to eq('Electric')
  end

  # retrieves level
  it 'returns the correct level' do
    
    expect(pokemon.get_level).to eq(5)
  end
end
