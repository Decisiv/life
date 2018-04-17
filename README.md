# Conways Game Of Life

https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life

The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square "cells", each of which is in one of two possible states, alive or dead, (or "populated" and "unpopulated" respectively). Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. At each step in time, the following transitions occur:

1. Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
2. Any live cell with two or three live neighbours lives on to the next generation.
3. Any live cell with more than three live neighbours dies, as if by overpopulation.
3. Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

The initial pattern constitutes the seed of the system. The first generation is created by applying the above rules simultaneously to every cell in the seed—births and deaths occur simultaneously, and the discrete moment at which this happens is sometimes called a tick (in other words, each generation is a pure function of the preceding one). The rules continue to be applied repeatedly to create further generations.

### Examples

*Block:*
```
_ _ _ _ _             _ _ _ _ _
_ X X _ _             _ X X _ _
_ X X _ _  -(tick)->  _ X X _ _
_ _ _ _ _             _ _ _ _ _
_ _ _ _ _             _ _ _ _ _
```

*Blinker:*
```
_ _ _ _ _             _ _ _ _ _             _ _ _ _ _
_ _ _ _ _             _ _ X _ _             _ _ _ _ _
_ X X X _  -(tick)->  _ _ X _ _  -(tick)->  _ X X X _
_ _ _ _ _             _ _ X _ _             _ _ _ _ _
_ _ _ _ _             _ _ _ _ _             _ _ _ _ _
```

*Beacon*:
```
_ _ _ _ _             _ _ _ _ _             _ _ _ _ _
_ X X _ _             _ X X _ _             _ X X _ _
_ X X _ _  -(tick)->  _ X _ _ _  -(tick)->  _ X X _ _
_ _ _ X X             _ _ _ _ X             _ _ _ X X
_ _ _ X X             _ _ _ X X             _ _ _ X X
```

### Challenge

Implement a `next_tick` function that takes a 5x5 grid of cells and calculates the next state of the grid (killing and reanimating cells accroding to the 4 rules above). The grid will be represented as a 25-element list of boolean values where true means `alive` and false means `dead`. Tests are provided to help validate your result.

