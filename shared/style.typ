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

#let setup-document(author: "", title: "", lang: "ko") = {
  set document(author: author, title: title)
  set page(
    paper: "a4",
    numbering: "1",
    number-align: center,
    margin: (top: 1cm, bottom: 1cm, left: 1cm, right: 1cm),
  )
  set text(
    font: ("Times New Roman", "Times"),
    lang: lang,
    size: 12pt,
    fill: color.black,
  )
  set par(
    justify: true,
    leading: 0.8em,
  )
}

#let header(
  name: "",
  role: "",
  email: "",
  phone: "",
  github: ""
) = [
  = #name
  #grid(
    columns: (1fr, 1fr, 1fr),
    align(left)[#phone],
    align(center)[#link("mailto:" + email)[#email]],
    align(right)[#link("https://github.com/" + github)[github.com/#github]]
  )
]

#let one-column-row(
  title: "",
  title-right: "",
  subtitle: "",
  subtitle-right: "",
  content: "",
) = [
  #grid(
    columns: (auto, 1fr),
    [
      #title
    ],
    align(right)[
      #title-right
    ]
  )
  
  #if subtitle != "" or subtitle-right != "" [
    #v(-0.5em)
    #grid(
      columns: (auto, 1fr),
      [
        #subtitle
      ],
      align(right)[
        #subtitle-right
      ]
    )
  ]
  #if content != "" [
    #v(0.3em)
    #content
  ]
] 

#let two-column-row(
  left: "",
  right: "",
) = grid(
  columns: (8em, auto),
  column-gutter: 1em,
  [
    #left
  ],
  [
    #right
  ]
)