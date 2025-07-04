// Common styles and functions for resume

// palette
#let color = (
  black: rgb("#333"),
  black-strong: rgb("#000"),
  gray: rgb("#777"),
  primary: rgb(255,111,15),
)

#show link: underline

#let side-padding= 7em

#let setup-document(author: "", title: "") = {
  set document(author: author, title: title)
  set page(
    paper: "a4",
    numbering: "1",
    number-align: center,
    margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
  )
  set text(
    font: "Noto Sans CJK KR",
    lang: "ko",
    size: 12pt,
    fill: color.black,
  )
  set par(
    justify: true,
    leading: 0.8em,
  )
  
  show heading.where(level: 1): it => block(below: 0.8em)[
    #text(fill: color.primary, size: 1.42em)[#it.body]
  ]
  
  show heading.where(level: 2): it => block(above: 2.4em, below: 1.2em)[
    #align(left)[
      #set text(size: 1.2em, weight: "regular")
      #it.body
      #box(width: 1fr, line(length: 100%))
    ]
  ]
}

#let setup-document-en(author: "", title: "") = {
  set document(author: author, title: title)
  set page(
    paper: "a4",
    numbering: "1",
    number-align: center,
    margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
  )
  set text(
    font: "Noto Sans CJK KR",
    lang: "en",
    size: 12pt,
    fill: color.black,
  )
  set par(
    justify: true,
    leading: 0.8em,
  )
  
  show heading.where(level: 1): it => block(below: 0.8em)[
    #text(fill: color.primary, size: 1.42em)[#it.body]
  ]
  
  show heading.where(level: 2): it => block(above: 2.4em, below: 1.2em)[
    #align(left)[
      #set text(size: 1.2em, weight: "regular")
      #it.body
      #box(width: 1fr, line(length: 100%))
    ]
  ]
}

#let header(
  name: "",
  role: "",
  email: "",
  phone: "",
  github: ""
) = grid(
  columns: (1fr, 1fr),
  gutter: auto,
  [
    = #name
    #role
  ],
  align(right)[
    #show list.item: it => block()[#it.body]
    #set text(size: 0.85em)
    - #phone
    - #link("mailto:" + email)[#email]
    - #link("https://github.com/" + github)[github.com/@#github]
  ]
)

#let experience(
  date: "",
  name: "",
  role: "",
  details: [],
) = grid(
  columns: (side-padding, auto),
  column-gutter: 1em,
  [
    #date
  ],
  [
    === #name
    #role
    #details
  ]
)

#let skill(dic: (:)) = [
  #for (k, v) in dic [
    #grid(
      columns: (side-padding, auto),
      column-gutter: 1em,
      [#k],
      [#v]
    )
  ]
]

#let opensource(
  content,
  name: "",
) = block(below: 1.5em)[#grid(
  columns: (side-padding, auto),
  column-gutter: 1em,
  [
    === #name
  ],
  [
    #content
  ]
)]