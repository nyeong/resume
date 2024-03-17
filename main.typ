// palette
#let color = (
  black: rgb("#333"),
  black-strong: rgb("#000"),
  gray: rgb("#777"),
  primary: rgb(255,111,15),
)

#show link: underline

#let side-padding= 7em

#set document(author: "An Subin", title: "An Subin's Resume")
#set page(
  paper: "a4",
  numbering: "1",
  number-align: center,
  margin: (top: 2cm, bottom: 2cm, left: 2cm, right: 2cm),
)
#set text(
  font: "Noto Sans CJK KR",
  lang: "ko",
  size: 12pt,
  fill: color.black,
)
#set par(
  justify: true,
  leading: 0.8em,
)

#show heading.where(level: 1): it => block(below: 0.8em)[
  #text(fill: color.primary, size: 1.42em)[#it.body]
]

#show heading.where(level: 2): it => block(above: 2.4em, below: 1.2em)[
  #align(left)[
    #set text(size: 1.2em, weight: "regular")
    #it.body
    #box(width: 1fr, line(length: 100%))
  ]
]

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

#header(
  name: [안수빈 #text(size: 0.8em)[(An Subin)]],
  role: "백엔드/인프라 엔지니어",
  email: "me@annyeong.me",
  phone: "010-9391-2811",
  github: "nyeong"
)

== 기술 스택

#skill(dic:(
  개발: "TypeScript/Node.js, Express, MySQL, Redis, Remeda, FP, React",
  인프라: "AWS, ELB, EC2, RDS(MySQL), ElastiCache(Redis), S3, CloudFront, CodePipeline",
  관심: "TypeClass, Programing Language Theory, TDD, 조직 관리",
))

== 경력

#experience(
  date: "2023. 10. ~ 현재",
  name: link("https://www.gameduo.net/")[게임듀오],
  role: "《아처키우기》, 《머지의 신》 백엔드/인프라 엔지니어",
  details: [
    - 팀 유일 서버 엔지니어로서 게임/어드민 서버 및 제반 인프라 개발/운영/관리
    - Node.js, express를 이용한 API 개발, AWS를 이용한 인프라 운영
    - 안정/효율적인 인프라 운영을 위한 메트릭 선정 및 Datadog 대시보드 제작
    - 메트릭 분석을 통하여 EC2 인스턴스 수 20% 감소, RDS 비용 10% 감소
    - 타입을 활용한 내부 라이브러리 개선을 통해 개발 경험 향상, 개발 속도 단축
    - 원스토어 출시, xsolla를 활용한 웹샵 출시
  ]
)

== 오픈소스

#opensource(
  name: link("https://annyeong.me/nth-week-today/")[오늘은 몇 주차],
)[
  - 오늘이 올해의 몇 주차인지 알려주는 웹 서비스
  - 표준(ISO 8601)에 근거하여 #link("https://github.com/nyeong/hanassig/blob/markdown-backup/notes/nth-week-today.md")[주수를 계산하는 알고리즘 구현]
  - 관련 키워드 검색 1위, 월 2K+ 달성
]

#opensource(
  name: link("https://github.com/gluesql/gluesql")[GlueSQL],
)[
  - Rust로 작성된 데이터베이스 라이브러리에 #link("https://www.contribution.ac/2022-ossca")[오픈소스 컨트리뷰션 아카데미] 활동으로 기여
  - 쿼리 빌더 라이브러리 "ast_builder" 구현에 참여 #link("https://github.com/gluesql/gluesql/pull/614")[\#614], #link("https://github.com/gluesql/gluesql/pull/627")[\#627]
  - Rust 표준 권고에 맞도록 TryInto 트레잇을 TryFrom 트레잇으로 변경 #link("https://github.com/gluesql/gluesql/pull/682")[\#682]
]

== 학력

#experience(
  date: "2016. 03. ~
  2020. 02",
  name: "가톨릭대학교 학사",
  role: "컴퓨터정보공학 전공. 미디어콘텐츠공학 복수전공.",
  details: []
)
