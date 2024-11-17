module Utils
  def  printMenu
    puts '1 -> Exit'
    puts '2 -> Pirnt menu'
    puts "3 -> Let's start a new game!"
    puts '4 -> Get a number!'
    puts '5 -> Print Bingo Cart!'
    puts 'Choose!'
  end

  def normalizeNumber(number)
    if number < 10
      return '0' + number.to_s
    end

    number.to_s
  end
end
