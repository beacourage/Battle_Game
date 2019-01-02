require 'player'

describe Player do
  # subject(:frank) { Player.new('Frank') }
   # subject(:bea) { Player.new('Bea') }

  describe '#name' do
    it 'returns the name' do
      frank = Player.new('Frank')
      expect(frank.name).to eq 'Frank'
    end
  end

#1. way of accessing Players instance Points

  describe '#points' do
    it 'gives the players points' do
      frank = Player.new('Frank')
      expect(frank.points).to eq described_class::DEFAULT_POINTS
    end
  end

#2. way of attacking and damaging Player instances
#3. way of reducing players score after attacking

  describe '#attacking' do
    it 'attacks the player, and damages it' do
      frank = Player.new('Frank')
      bea = Player.new('Bea')
      frank.attack(bea)
      expect(bea).to receive(:be_damaged)
    end
  end


  describe '#be_damaged' do
    it 'decreases the players points' do
      frank = Player.new('Frank')
      expect { frank.be_damaged }.to change { frank.points }.by(-10)
    end
  end
end
