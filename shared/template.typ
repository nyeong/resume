#import "style.typ": *

#let render-resume(data) = {
  // Document and page setup
  set document(author: data.document_author, title: data.document_title)
  set page(
    paper: "a4",
    margin: (top: 1cm, bottom: 1cm, left: 1.5cm, right: 1.5cm),
  )
  set text(
    font: ("Noto Sans CJK KR", "Noto Sans"),
    lang: data.lang,
    size: 11pt,
    fill: color.black,
  )
  set par(
    justify: true,
    leading: 0.8em,
  )
  
  // Apply heading styles
  show heading: it => {
    set text(font: ("Noto Sans CJK KR", "Helvetica Neue", "Arial"))
    it
  }
  
  show heading.where(level: 1): it => block(below: 0.8em)[
    #text(fill: color.primary, size: 1.12em, font: ("Noto Sans CJK KR", "Helvetica Neue", "Arial"))[#it.body]
  ]
  
  show heading.where(level: 2): it => block(above: 1.5em, below: 1em)[
    #align(left)[
      #set text(size: 1.05em, weight: "bold", font: ("Noto Sans CJK KR", "Helvetica Neue", "Arial"))
      #it.body
      #box(width: 1fr, line(length: 100%))
    ]
  ]
  
  // Header
  header(
    name: data.name,
    email: data.email,
    phone: data.phone,
    github: data.github,
  )
  
  // Skills section
  [== #data.sections.summary]
  data.summary
  
  // Experience section  
  [== #data.sections.experiences]
  for exp in data.experiences {
    one-column-row(
      title: [
        #heading(level: 3, exp.company)
      ],
      title-right: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#exp.location]
      ],
      subtitle: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#exp.role]
      ],
      subtitle-right: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#exp.date]
      ],
      content: [
        #exp.content
      ]
    )
  }
  
  // Open source section
  [== #data.sections.contributions]
  for proj in data.contributions {
    one-column-row(
      title: [
        #heading(level: 3)[#link(proj.url)[#proj.name]]
      ],
      title-right: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#proj.role]
      ],
      content: [
        #proj.content
      ]
    )
  }
  
  // Education section
  [== #data.sections.education]
  for edu in data.education {
    one-column-row(
      title: [
        #edu.school
      ],
      title-right: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#edu.location]
      ],
      subtitle: [
        #edu.major
      ],
      subtitle-right: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#edu.date]
      ],
      content: ""
    )
  }
  
  // Awards and Certifications section
  [== #data.sections.honors_and_certifications]
  for item in data.honors_and_certifications {
    one-column-row(
      title: [
        #item.title
      ],
      title-right: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#item.institution]
      ],
      subtitle: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#item.event]
      ],
      subtitle-right: [
        #text(style: "italic", fill: color.gray, size: 0.9em)[#item.date]
      ],
      content: ""
    )
  }
}

