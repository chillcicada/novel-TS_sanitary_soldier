#import "@preview/cuti:0.3.0": show-cn-fakebold

#show: show-cn-fakebold

#set page(paper: "a4", margin: 1.27cm)

#show table.cell.where(y: 0): strong

#set table(
  stroke: (x, y) => if y == 0 {
    (bottom: 1pt + black)
  } else if x == 0 {
    (right: .2pt)
  },

  align: (x, y) => if y == 0 {
    center
  } else if x == 0 {
    right
  } else {
    left
  },
)

#align(center, text("时间线", size: 1cm, weight: "bold"))

#v(-0.8cm)

#table(
  columns: (auto, auto, 1fr),
  ..csv("timeline.csv").flatten(),
)
