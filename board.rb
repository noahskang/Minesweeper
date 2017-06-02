class Board
  BOMB_COUNT = 10

  def initialize(grid = Board.default_grid)
    @grid = grid
    populate_board
  end

  def self.default_grid
    Array.new(9) {Array.new(9) { Tile.new } }
  end

  def random_position
    pos = [rand(9), rand(9)]
    random_position if is_bomb(pos)
    return pos
  end

  def is_bomb(pos)
    self[pos].value == :bomb
  end

  def [](pos)
    x, y = pos
    grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    grid[x][y] = value
  end

  def populate_board
    @grid.each do |row|
      row.each do |space|
        space = Tile.new
      end
    end

    BOMB_COUNT.times do
      self[random_position].value = :bomb
    end
  end

end
