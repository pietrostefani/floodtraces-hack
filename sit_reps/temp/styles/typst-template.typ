#let article(
  title: none,
  subtitle: none,
  authors: none,
  date: none,
  abstract: none,
  abstract-title: none,
  cols: 1,
  lang: "en",
  region: "US",
  font: "Source Sans 3",
  fontsize: 11pt,
  title-size: 1.5em,
  subtitle-size: 1.25em,
  heading-family: "Source Serif 4",
  heading-weight: "bold",
  heading-style: "normal",
  heading-color: black,
  heading-line-height: 0.65em,
  sectionnumbering: none,
  pagenumbering: none,
  toc: false,
  toc_title: none,
  toc_depth: none,
  toc_indent: 1.5em,
  doc,
) = {
  set par(justify: false)
  set text(lang: lang, region: region, font: font, size: fontsize)
  set heading(numbering: sectionnumbering)

  if title != none {
    block(below: 0.38em)[
      #set par(leading: 1.02em)
      #text(font: heading-family, size: 1.38em, weight: "bold", fill: rgb("#132833"))[#title]
      #if subtitle != none and not empty(subtitle) {
        parbreak()
        text(font: heading-family, size: 0.9em, fill: rgb("#5f7078"))[#subtitle]
      }
      #if authors != none or date != none {
        parbreak()
        text(size: 0.74em, fill: rgb("#5f7078"))[
          #if authors != none and authors.len() > 0 {
            authors.map(author => author.name).join([  |  ])
          }
          #if authors != none and authors.len() > 0 and date != none {
            [  |  ]
          }
          #if date != none {
            date
          }
        ]
      }
    ]
  }

  if abstract != none {
    block(inset: 1em, below: 0.8em)[
      #text(weight: "semibold")[#abstract-title] #h(0.8em) #abstract
    ]
  }

  if toc {
    let title = if toc_title == none { auto } else { toc_title }
    block(above: 0em, below: 1em)[
      #outline(
        title: title,
        depth: toc_depth,
        indent: toc_indent,
      );
    ]
  }

  if cols == 1 {
    doc
  } else {
    columns(cols, doc)
  }
}
