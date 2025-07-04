#let data = (
  // Personal info
  name: [An Subin #text(size: 0.8em)[(안수빈)]],
  role: "Backend/Infrastructure Engineer",
  email: "me@annyeong.me",
  phone: "010-9391-2811",
  github: "nyeong",
  
  // Document settings
  lang: "en",
  document_title: "An Subin's Resume",
  document_author: "An Subin",
  
  // Section titles
  sections: (
    skills: "Skills",
    experience: "Experience",
    opensource: "Open Source",
    education: "Education",
  ),
  
  // Skills
  skills: (
    Development: "TypeScript/Node.js, Express, MySQL, Redis, Remeda, FP, React",
    Infrastructure: "AWS, ELB, EC2, RDS(MySQL), ElastiCache(Redis), S3, CloudFront, CodePipeline",
    Interests: "TypeClass, Programming Language Theory, TDD, Team Management",
  ),
  
  // Experience
  experience: (
    (
      date: "Oct 2023 ~ Present",
      company: "GameDuo",
      company_url: "https://www.gameduo.net/",
      role: "Backend/Infrastructure Engineer for 《Archer Raising》, 《Merge God》",
      details: (
        "Solo server engineer responsible for game/admin server and infrastructure development/operation/management",
        "API development using Node.js, Express and infrastructure operation using AWS",
        "Metrics selection and Datadog dashboard creation for stable/efficient infrastructure operation",
        "Through metric analysis, reduced EC2 instances by 20% and RDS costs by 10%",
        "Enhanced development experience and accelerated development speed through type-based internal library improvements",
        "OneStore launch, web shop launch using xsolla",
      ),
    ),
  ),
  
  // Open source projects
  opensource: (
    (
      name: "What Week Is Today",
      url: "https://annyeong.me/nth-week-today/",
      details: (
        "Web service that tells you what week of the year today is",
        [Implemented #link("https://github.com/nyeong/hanassig/blob/markdown-backup/notes/nth-week-today.md")[week calculation algorithm] based on ISO 8601 standard],
        "Ranked #1 in related keyword searches, achieved 2K+ monthly visits",
      ),
    ),
    (
      name: "GlueSQL",
      url: "https://github.com/gluesql/gluesql",
      details: (
        [Contributed to Rust-based database library through #link("https://www.contribution.ac/2022-ossca")[Open Source Contribution Academy]],
        [Participated in implementing query builder library "ast_builder" #link("https://github.com/gluesql/gluesql/pull/614")[\#614], #link("https://github.com/gluesql/gluesql/pull/627")[\#627]],
        [Changed TryInto trait to TryFrom trait according to Rust standard recommendations #link("https://github.com/gluesql/gluesql/pull/682")[\#682]],
      ),
    ),
  ),
  
  // Education
  education: (
    (
      date: "Mar 2016 ~\nFeb 2020",
      school: "Catholic University of Korea, Bachelor's Degree",
      major: "Computer Information Engineering Major. Media Contents Engineering Double Major.",
    ),
  ),
)