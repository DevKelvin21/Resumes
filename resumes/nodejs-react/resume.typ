#import "@preview/modernpro-cv:1.1.0": *

#import "@preview/fontawesome:0.5.0": *

#show: cv-single.with(
  font-type: "PT Serif",
  continue-header: "false",
  name: [Kelvin Rojas],
  address: [El Salvador],
  lastupdated: "true",
  date: [2025-11-14],
  pagecount: "false",
  contacts: (
    (text: "linkedin.com/in/kelvin-rojas-chilin", link: "https://www.linkedin.com/in/kelvin-rojas-chilin/"),
    (text: "kelvin.rojas.sv@gmail.com", link: "mailto:kelvin.rojas.sv@gmail.com"),
    (text: [+503 7110 - 1345], link: "tel:+50371101345"),
  ),
)

// about
#section[About Me]
#descript[
Senior Full-Stack Engineer with 4+ years architecting scalable, cloud-native applications using Node.js, TypeScript, and React. Proven expertise in microservices architectures, distributed systems, and CI/CD optimization. Strong advocate for SOLID principles, Clean Code, and TDD. Experienced in mentoring developers and driving technical decisions that improve performance and reduce costs.
]
#sectionsep

//Experience
#section("Experience")
#job(
  position: "Software Engineer",
  institution: [NiCE Ltd],
  location: "Remote",
  date: "Jan 2025 - Present",
  description: [
    - Architected reusable UI component libraries for React & Angular following SOLID principles, reducing load times by 25%.
    - Optimized MySQL schemas and queries using ORM best practices (TypeORM/Sequelize), improving performance by 20% for 3,000+ daily users.
    - Integrated Google Cloud (Pub/Sub, Realtime Database) and AWS CDK for authentication, content delivery, and automated deployments.
    - Mentored developers on React optimization, state management (Redux), and TypeScript best practices.
  ],
)
#job(
  position: "Software Developer",
  institution: [Clearview LLC],
  location: "Remote",
  date: "Jun 2023 - Dec 2024",
  description: [
    - Migrated legacy systems to modern frameworks using clean architecture, dependency injection, and ORM patterns, improving uptime by 10%.
    - Led AngularJS-to-React/Angular 17 migration, refactoring monolithic code into testable components with 30% faster load times.
    - Championed TDD with Jest and React Testing Library, reducing QA defects by 30%.
    - Implemented CI/CD pipelines with GitHub Actions for automated multi-environment deployments.
  ],
)
#job(
  position: "FullStack Engineer",
  institution: [Appointments Today LLC],
  location: "Remote",
  date: "Nov 2022 - May 2023",
  description: [
    - Designed microservices architecture on GCP using Node.js/Nest.js with Pub/Sub, reducing infrastructure costs by 25%.
    - Integrated Five9 telephony with CRM platforms via RESTful APIs, implementing circuit breakers and retry logic that improved efficiency by 15%.
    - Built real-time React dashboards with optimized data fetching and caching, automating reporting and saving 40% manual effort.
  ],
)
#job(
  position: "Web Developer",
  institution: [IBG America LLC],
  location: "Santa Ana, El Salvador",
  date: "Jun 2022 - Oct 2022",
  description: [
    - Built React/TypeScript automation tools with reusable components to streamline inventory and reporting workflows.
    - Created Node.js APIs to synchronize ERP with QuickBooks Online, implementing error handling and data validation.
    - Optimized SQL queries and maintained company portals for ad-hoc reporting.
  ],
)
#job(
  position: "UI Designer and Frontend Developer",
  institution: [Freelance],
  location: "Remote",
  date: "Nov 2020 - May 2022",
  description: [
    - Delivered responsive Angular and Vue.js applications with mobile-first design and cross-device compatibility.
    - Deployed containerized applications using Docker/Kubernetes on GCP, serving 500+ users with 99.9% uptime.
  ],
)
#sectionsep

#section("Skills")
#oneline-title-item(
  title: "Backend & APIs",
  content: [Node.js, Nest.js, TypeScript, Express, RESTful APIs, GraphQL, Microservices, SQL (also familiar with: .NET Core, Python)]
)
#oneline-title-item(
  title: "Frontend",
  content: [React, TypeScript, Next.js, Redux, Angular, Material UI, Tailwind CSS, Component-Driven Development]
)
#oneline-title-item(
  title: "Cloud & DevOps",
  content: [AWS (Lambda, S3, EventBridge, CDK), GCP (Pub/Sub, Cloud Functions), CI/CD (GitHub Actions), Docker, Kubernetes]
)
#oneline-title-item(
  title: "Architecture & Patterns",
  content: [Distributed Systems, Event-Driven Architecture, Cloud-Native Design, SOLID Principles, Clean Code, Microservices]
)
#oneline-title-item(
  title: "Databases",
  content: [PostgreSQL, MongoDB, MySQL, Firestore, Database Optimization, ORM Best Practices (TypeORM, Sequelize)]
)
#oneline-title-item(
  title: "Testing & Quality",
  content: [TDD, Jest, React Testing Library, Cypress, Automated Testing]
)

#sectionsep
#section("Education")
#education(
  institution: [Universidad de El Salvador],
  major: [Bachelor's in Computer Systems Engineering],
  date: "Jan 2019 - Dec 2024",
  location: "El Salvador"
)

#sectionsep
#section("Languages")
#oneline-title-item(
  title: "Spanish",
  content: [Native]
)
#oneline-title-item(
  title: "English",
  content: [Advanced (Technical and conversational proficiency)]
)

