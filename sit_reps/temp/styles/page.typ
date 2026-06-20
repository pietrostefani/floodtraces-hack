#set page(
  paper: "a4",
  flipped: true,
  margin: (x: 17mm, y: 14mm),
  header: none,
  footer: context [
    #set text(size: 8pt, fill: rgb("#5f7078"))
    #align(center)[#counter(page).display("1")]
  ],
)

#set text(
  font: "Source Sans 3",
  size: 8.55pt,
  fill: rgb("#132833"),
)

#set par(justify: false, leading: 0.38em)

#show heading.where(level: 1): it => [
  #v(0.36em)
  #line(length: 100%, stroke: 0.6pt + rgb("#d7dee2"))
  #v(0.16em)
  #set text(font: "Source Serif 4", size: 10.8pt, weight: "bold")
  #it.body
  #v(0.03em)
]

#show heading.where(level: 2): it => [
  #v(0.14em)
  #set text(font: "Source Serif 4", size: 9.1pt, weight: "semibold")
  #it.body
  #v(0.02em)
]
