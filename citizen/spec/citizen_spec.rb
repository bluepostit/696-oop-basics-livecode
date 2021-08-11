require_relative "../citizen"

describe Citizen do
  describe '#can_vote?' do
    it 'returns true when age over 18' do
      angelina = Citizen.new("angelina", "jolie", 48)
      expect(angelina.can_vote?).to eq(true)
    end

    it 'returns false when age under 18' do
      angelina = Citizen.new("angelina", "jolie", 8)
      expect(angelina.can_vote?).to eq(false)
    end
  end
end
