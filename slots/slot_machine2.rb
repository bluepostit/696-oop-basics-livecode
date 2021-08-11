class SlotMachine
  def score(reels)
    # All are different
    return 0 if reels == reels.uniq
    return 40 if reels.count('star') == 3
    return 30 if reels.count('bell') == 3
    return 20 if reels.count('seven') == 3
    return 10 if reels.count('cherry') == 3

    # 2 jokers with anything
    return 25 if reels.count('joker') == 2

    return 0 unless reels.include?('joker')

    return 20 if reels.count('star') == 2
    return 15 if reels.count('bell') == 2
    return 10 if reels.count('seven') == 2
    return 5 if reels.count('cherry') == 2
  end
end
