class SlotMachine
  def score(reels)
    if reels[0] == reels[1] && reels[1] == reels[2]
      case reels[0]
      when "joker"
        return 50
      when "star"
        return 40
      when 'bell'
        return 30
      when 'seven'
        return 20
      when 'cherry'
        return 10
      end
    elsif reels.count('joker') == 2
      return 25
    elsif reels.uniq.count == 2 && reels.include?('joker')
      if reels.count('star') == 2
        return 20
      elsif reels.count('bell') == 2
        return 15
      elsif reels.count('seven') == 2
        return 10
      elsif reels.count('cherry') == 2
        return 5
      end
    else
      0
    end
  end
end
