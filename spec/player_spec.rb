require 'player'

describe Player do

  subject(:player) { described_class.new("Tobenna") }

  it "returns it's name" do
    expect(subject.name).to eq("Tobenna")
  end
end
