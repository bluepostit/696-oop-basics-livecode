
require_relative "../slot_machine"

def test_scenario(reels, score)
  it "returns #{score} for #{reels[0]}/#{reels[1]}/#{reels[2]}" do
    slot_machine = SlotMachine.new
    actual_score = slot_machine.score(reels)
    expect(actual_score).to eq(score)
  end
end

describe SlotMachine do
  describe '#score' do
    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[bell bell bell], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)

    test_scenario(%w[joker seven joker], 25)
    test_scenario(%w[star star joker], 20)
    test_scenario(%w[bell bell joker], 15)
    test_scenario(%w[joker seven seven], 10)
    test_scenario(%w[cherry joker cherry], 5)

    test_scenario(%w[star star cherry], 0)
    test_scenario(%w[joker star cherry], 0)
  end
end
