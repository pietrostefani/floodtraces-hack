#set page(
  paper: "a4",
  margin: (x: 17mm, y: 17mm),
  header: context [
    #if counter(page).get().first() > 1 [
      #set text(size: 8pt, fill: rgb("#5f7078"))
      #align(left)[F. Rowe, C. Cabrera, E. Pietrostefani, M. Mason, R. Iradukunda, A. Nasuto & E. Beltran | Iran conflict — Digital trace data analysis]
      #line(length: 100%, stroke: 0.4pt + rgb("#d7dee2"))
    ]
  ],
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

#show quote: it => block(
  inset: 4pt,
  outset: 2pt,
  fill: rgb("#efe4dd"),
  stroke: (left: 2pt + rgb("#8d3f2b"))
)[
  #set text(weight: "semibold")
  #it.body
]

#let callout(
  body: [],
  title: "Callout",
  background_color: rgb("#f6f4ef"),
  icon: none,
  icon_color: rgb("#5f7078"),
  body_background_color: white,
) = {
  let icon_mark = if title == [Warning] {
    [▲]
  } else if title == [Important] {
    [!]
  } else if title == [Tip] {
    [•]
  } else {
    [i]
  }
  block(
    breakable: true,
    width: 100%,
    fill: background_color,
    stroke: (
      left: 2pt + icon_color,
      top: 0.45pt + rgb("#d7dee2"),
      right: 0.45pt + rgb("#d7dee2"),
      bottom: 0.45pt + rgb("#d7dee2"),
    ),
    radius: 2pt,
    inset: (x: 4.5pt, y: 3.5pt),
    below: 2pt,
  )[
    #set text(size: 6.5pt, weight: "semibold", fill: rgb("#5f7078"))
    #icon_mark #h(3pt) #upper(title)
    #v(1.4pt)
    #set text(size: 8.7pt, weight: "regular", fill: rgb("#132833"))
    #body
  ]
}

#show figure.where(kind: "quarto-float-fig"): it => {
  block(below: 1.5pt)[
    #it.body
  ]
}
