class Life::Grid
  attr_reader :grid

  def initialize(grid)
    @grid = grid
  end

  def next_tick
    Life::Grid.new grid
  end

  def to_s
    (0..4).map do |i|
      grid
        .slice(i*5,5)
        .map {|cell| cell ? "X" : "_"}
        .join(" ")
    end.join("\n")
  end
end
