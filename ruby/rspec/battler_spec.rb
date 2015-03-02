require 'rspec'

shared_examples "battler" do
  let(:my_pokemon) { Pokemon.new("rex", 10) }

  context "a is stronger" do
    let(:your_pokemon) { Pokemon.new("mini", 5) }
    it "returns 1" do
      expect(my_pokemon.fight(your_pokemon)).to eq(1)
    end
  end

  context "b is stronger" do
    let(:your_pokemon) { Pokemon.new("mega", 20) }
    it "returns -1" do
      expect(my_pokemon.fight(your_pokemon)).to eq(-1)
    end
  end

end







