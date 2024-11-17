require './BingoCard.rb'
require_relative 'Utils'
include Utils


cicle = true
LEVEL = 3
RANGE = 19
bingoCard = BingoCard.new(LEVEL, RANGE)

Utils.printMenu

while cicle
    menu = gets.chomp

    if menu == '1'              # Exit
        cicle = false
    elsif menu == '2'           # Print Menu
        Utils.printMenu
    elsif menu == '3'           # Let's play!
        bingoCard.firstStep
    elsif menu == '4'           # Get a number
        cicle = !bingoCard.matchMatrix
    elsif menu == '5'           # Print Bingo Cart!
        bingoCard.printCard
    end
end
