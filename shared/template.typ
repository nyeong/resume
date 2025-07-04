#import "style.typ": *

#let render-resume(data) = {
  // Setup document based on language
  if data.lang == "ko" {
    setup-document(author: data.document_author, title: data.document_title)
  } else {
    setup-document-en(author: data.document_author, title: data.document_title)
  }
  
  // Header
  header(
    name: data.name,
    role: data.role,
    email: data.email,
    phone: data.phone,
    github: data.github,
  )
  
  // Skills section
  [== #data.sections.skills]
  skill(dic: data.skills)
  
  // Experience section  
  [== #data.sections.experience]
  for exp in data.experience {
    experience(
      date: exp.date,
      name: if exp.company_url != none { link(exp.company_url)[#exp.company] } else { exp.company },
      role: exp.role,
      details: [
        #for detail in exp.details [
          - #detail
        ]
      ]
    )
  }
  
  // Open source section
  [== #data.sections.opensource]
  for proj in data.opensource {
    opensource(
      name: link(proj.url)[#proj.name],
    )[
      #for detail in proj.details [
        - #detail
      ]
    ]
  }
  
  // Education section
  [== #data.sections.education]
  for edu in data.education {
    experience(
      date: edu.date,
      name: edu.school,
      role: edu.major,
      details: []
    )
  }
}