# CHALLENGE : TDD Multiple Classes

### Set up the project directory and install RSpec.
### Test-drive and implement the Pokemon class (test file should be pokemon_spec.rb).
### Test-drive and implement the Pokedex class (test file should be pokedex_spec.rb).
### Our class Pokedex depends on the Pokemon class (because it calls a method or property from this class). We need to properly isolate it in our unit tests — use a Ruby object as a "mock" as explained above.




``` ruby
pokemon = Pokemon.new('Pikachu', 'Electric', 5)

pokemon.get_name
# => 'Pikachu'
pokemon.get_type
# => 'Electric'
pokemon.get_level
# => 5

pokedex = Pokedex.new
pokedex.total_level
# => 0

pokedex.add_pokemon(pokemon)

pokedex.total_level
# => 5

pokedex.add_pokemon(Pokemon.new('Charmander', 'Fire', 10))
pokedex.add_pokemon(Pokemon.new('Squirtle', 'Water', 10))

pokedex.total_level
# => 25
```