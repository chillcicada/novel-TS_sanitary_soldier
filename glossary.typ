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
    center
  } else {
    left
  },
)

#align(center, text("用语表", size: 1cm, weight: "bold"))

#v(-0.8cm)

#table(
  columns: (auto, 1fr),
  table.header(
    "用语",
    "解释",
  ),

  ..csv("glossary.csv").flatten(),
)
