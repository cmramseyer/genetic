require 'rails_helper'

describe Chromosome, type: :model do

  let(:chromo1) { [true, true, false, false, true, true] }
  let(:chromo2) { [false, false, true, true, false, false] }

  let(:c1) { Chromosome.new(chromo1) }
  let(:c2) { Chromosome.new(chromo2) }
  it "lala" do
    child1, child2 = CrossOver.between(c1, c2)
    expect(child1.chromosome).to eq([true, true, true, true, true, true])
    expect(child2.chromosome).to eq([false, false, false, false, false, false])
  end
end