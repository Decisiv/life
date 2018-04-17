RSpec.describe Life::Grid do

  context ".next_tick" do

    it "block" do
      x, o = true, false

      grid = Life::Grid.new [
        o, o, o, o, o,
        o, x, x, o, o,
        o, x, x, o, o,
        o, o, o, o, o,
        o, o, o, o, o,
      ]

      expect(grid.next_tick.to_s).to eq(grid.to_s)
    end

    it "blinker" do
      x, o = true, false

      grid1 = Life::Grid.new [
        o, o, o, o, o,
        o, o, x, o, o,
        o, o, x, o, o,
        o, o, x, o, o,
        o, o, o, o, o,
      ]

      grid2 = Life::Grid.new [
        o, o, o, o, o,
        o, o, o, o, o,
        o, x, x, x, o,
        o, o, o, o, o,
        o, o, o, o, o,
      ]

      expect(grid1.next_tick.to_s).to eq(grid2.to_s)
      expect(grid2.next_tick.to_s).to eq(grid1.to_s)
    end

    it "beacon" do
      x, o = true, false

      grid1 = Life::Grid.new [
        o, o, o, o, o,
        o, x, x, o, o,
        o, x, x, o, o,
        o, o, o, x, x,
        o, o, o, x, x,
      ]

      grid2 = Life::Grid.new [
        o, o, o, o, o,
        o, x, x, o, o,
        o, x, o, o, o,
        o, o, o, o, x,
        o, o, o, x, x,
      ]

      expect(grid1.next_tick.to_s).to eq(grid2.to_s)
      expect(grid2.next_tick.to_s).to eq(grid1.to_s)
    end
  end
end
