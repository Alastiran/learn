require 'rspec'
require './battler_spec.rb'
require './pokemon'

describe Pokemon do
  it_behaves_like "battler"
end

