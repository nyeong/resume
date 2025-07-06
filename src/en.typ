#import "../shared/template.typ": render-resume

#let data = (
  // Personal info
  name: [An Subin #text(size: 0.8em)[(안수빈)]],
  email: "me@annyeong.me",
  phone: "+82 10-9391-2811",
  github: "nyeong",
  
  // Document settings
  lang: "en",
  document_title: "An Subin's Resume",
  document_author: "An Subin",
  
  // Section titles
  sections: (
    summary: "Summary",
    experiences: "Experiences",
    contributions: "Contributions",
    education: "Education",
    honors_and_certifications: "Honors & Certifications",
  ),
  
  summary: [
    Backend Engineer with mobile game server experience, focused on robust systems and developer experience. Former military officer with leadership skills and dedication to team success.

    - Programming Languages: TypeScript, Rust
    - Spoken Languages: Korean (Native), English, Japanese
    - Operations: AWS(EC2, RDS, S3, CloudFront), Datadog, Linux
    - Backend: Node.js, Express.js, NestJS, MySQL, Redis
  ],
  
  // Experience
  experiences: (
    (
      date: "Oct 2023 - Apr 2025",
      company: "Gameduo Inc.",
      role: "Backend Engineer",
      location: "Seongnam-si, South Korea",
      content: [
        - Developed backend servers and in-house tools for diverse mobile games.
        - Optimized API performance, reducing latency by 300% by converting sync calls to async.
        - Achieved 30% reduction in AWS costs through rightsizing instances based on load analysis.
        - Enhanced developer productivity by migrating linter to Biome and refactoring a legacy library with types.
      ],
    ),
    (
      date: "Mar 2020 - Jun 2022",
      company: "Republic of Korea Army",
      role: "Platoon Leader / Communication Officer",
      location: "Gyeonggi-do, South Korea",
      content: [
        - Led a 30-member team responsible for personnel management and training.
        - Ensured high availability and reliability of corps-level communication networks, including emergency restoration.
      ]
    ),
  ),
  
  // Open source projects
  contributions: (
    (
      name: "GlueSQL",
      url: "https://github.com/gluesql/gluesql",
      role: "Contributor",
      content: [
        - Implemented query builder library "ast_builder". (#link("https://github.com/gluesql/gluesql/pull/614")[\#614], #link("https://github.com/gluesql/gluesql/pull/627")[\#627])
        - Refactored TryInto trait to TryFrom trait per Rust standard recommendations. (#link("https://github.com/gluesql/gluesql/pull/682")[\#682])
      ],
    ),
  ),
  
  education: (
    (    
      date: "Feb 2020",
      school: "Catholic University of Korea",
      location: "Seoul, South Korea",
      degree: "Bachelor's Degree",
      major: [
        - B.S. in Computer Science and Information Engineering (Major)
        - B.S. in Media Technology & Media Contents Engineering (Double Major)
      ]
    ),
  ),

  honors_and_certifications: (
    (
      date: "Dec 2022",
      institution: "NIPA, South Korea",
      title: "Outstanding Open Source Contribution Award",
      event: "Open Source Contribution Academy",
      type: "award",
    ),
    (
      date: "Nov 2021",
      institution: "Republic of Korea Army",
      title: "Excellence Award (Officer Team)",
      event: "21st Republic of Korea Army Cyber Security Competition",
      type: "award",
    ),
    (
      date: "Aug 2019",
      institution: "Human Resources Development Service of Korea",
      title: "Engineer Information Processing",
      event: "",
      type: "certification",
    ),
  ),
)

#render-resume(data)