class BingoCard
  def initialize(level, range = 99)
    @level = level
    @range = range
    @matrix = Array.new
    @checkHash = {i: [], y: []}
    @historialNumeber = []
  end

  def printCard
    (0..(@level - 1)).each do |i|
      printArray = ''
      (0..(@level - 1)).each do |y|
        printArray += @matrix[i][y] + ' '
      end
      puts printArray
    end
  end

  def firstStep
    @matrix = Array.new
    @checkHash = {i: [], y: []}
    @historialNumeber = []

    (0..(@level - 1)).each do |i|
      lvl = []
      (0..(@level - 1)).each do |y|
        lvl.push Utils.normalizeNumber(rand(@range))
      end
      @matrix.push lvl
    end

    printCard
  end

  def matchMatrix
    number = getNumeber
    puts 'El numero seleccionado es: ' + number
    (0..(@level - 1)).each do |i|
        (0..(@level - 1)).each do |y|
          if @matrix[i][y] == number
            @matrix[i][y] = 'XX'
            @checkHash[:i].push(i)
            @checkHash[:y].push(y)
          end
        end
    end

    checkForWin
  end

  def checkForWin
    printCard
    (0..(@level - 1)).each do |i|
      if @checkHash[:i].count(i) >= @level || @checkHash[:y].count(i) >= @level
        puts 'Hay un gandor!'
        return true
      end
    end
    false
  end

  def getNumeber
    while true
      number = Utils.normalizeNumber(rand(@range))
      if !@historialNumeber.include?(number)
        @historialNumeber.push(number)
        return number
      end
    end
  end
end