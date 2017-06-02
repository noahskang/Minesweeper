class Tile

  attr_accessor :value, :flag

  def initialize(value = :SAFE)
    @value = value
    @flag = false
    @revealed = false
  end

  def mark_flag
    @flag = true
  end

  def unmark_flag
    @flag = false
  end

  def reveal
    @revealed = true
  end

end
