#import "../shared/template.typ": render-resume

#let data = (
  // Personal info
  name: [안수빈 #text(size: 0.8em)[(An Subin)]],
  email: "me@annyeong.me",
  phone: "010-9391-2811",
  github: "nyeong",
  
  // Document settings
  lang: "ko",
  document_title: "An Subin's Resume",
  document_author: "An Subin",
  
  // Section titles
  sections: (
    summary: "개요",
    experiences: "경력",
    contributions: "오픈소스",
    education: "학력",
    honors_and_certifications: "수상 및 자격증",
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
      date: "2023. 10. ~ 2025. 04.",
      company: "게임듀오",
      location: "판교",
      role: "백엔드 엔지니어",
      content: [
        - 모바일 게임과 사내 도구의 백엔드 서버 및 어드민 서비스 개발
        - API 지연시간 300% 개선 및 AWS RDS 비용 30% 절감
        - 도구 개선과 코드베이스 품질 향상을 통한 개발자 생산성 가속화
      ],
    ),
    (
      date: "2020. 03. ~ 2022. 06.",
      company: "대한민국 육군",
      role: "소대장 / 통신장교",
      location: "포천",
      content: [
        - 30명 규모의 통신소대 지휘, 인사관리 및 훈련 담당
        - 군단급 전술통신망의 고가용성과 안정성 보장, 비상 복구 포함
      ]
    ),
  ),
  
  // Open source projects
  contributions: (
    (
      name: "GlueSQL",
      url: "https://github.com/gluesql/gluesql",
      role: "컨트리뷰터",
      content: [
        - #link("https://www.contribution.ac/2022-ossca")[오픈소스 컨트리뷰션 아카데미]를 통해 Rust 기반 데이터베이스 라이브러리에 기여
        - 쿼리 빌더 라이브러리 "ast_builder" 구현에 참여 #link("https://github.com/gluesql/gluesql/pull/614")[\#614], #link("https://github.com/gluesql/gluesql/pull/627")[\#627]
        - Rust 표준 권고에 맞도록 TryInto 트레잇을 TryFrom 트레잇으로 변경 #link("https://github.com/gluesql/gluesql/pull/682")[\#682]
      ],
    ),
  ),
  
  education: (
    (
      date: "2020. 02.",
      school: "가톨릭대학교",
      location: "서울, 대한민국",
      degree: "학사",
      major: [
        - 컴퓨터정보공학 전공
        - 미디어콘텐츠공학 복수전공
      ]
    ),
  ),

  honors_and_certifications: (
    (
      date: "2022. 12.",
      institution: "정보통신산업진흥원",
      title: "오픈소스 컨트리뷰션 우수상",
      event: "오픈소스 컨트리뷰션 아카데미",
      type: "award",
    ),
    (
      date: "2021. 11.",
      institution: "대한민국 육군",
      title: "우수상 (간부팀)",
      event: "제21회 대한민국 육군 사이버보안 경진대회",
      type: "award",
    ),
    (
      date: "2019. 08.",
      institution: "한국산업인력공단",
      title: "정보처리기사",
      event: "",
      type: "certification",
    ),
  ),
)

#render-resume(data)