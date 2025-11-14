#import "@preview/modernpro-cv:1.1.0": *

#import "@preview/fontawesome:0.5.0": *

#show: cv-single.with(
  font-type: "PT Serif",
  continue-header: "false",
  name: [Kelvin Rojas],
  address: [El Salvador],
  lastupdated: "true",
  date: [2025-11-12],
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
Senior Full-Stack Engineer with 4+ years of experience architecting and delivering scalable, cloud-native applications using .NET, React, and modern cloud platforms. Proven expertise in designing distributed systems, implementing microservices architectures, and optimizing CI/CD pipelines. Strong advocate for SOLID principles, Clean Code, ORM best practices, and test-driven development. Experienced in mentoring junior developers and driving technical decisions that improve system performance, reduce infrastructure costs, and enhance team productivity. Advanced English proficiency for technical collaboration.
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
    - Architected and modernized multi-frontend systems (React & Angular) by designing reusable, modular UI component libraries following SOLID principles and component-driven architecture, reducing load times by 25%.
    - Optimized MySQL database schemas and complex queries using *ORM best practices* (patterns transferable to Entity Framework and SQL Server), improving data retrieval performance by 20% for 3,000+ daily users.
    - Led integration of Google Cloud services (Cloud Auth, Pub/Sub, Realtime Database) implementing event-driven patterns to enhance scalability and security for distributed systems.
    - Mentored junior developers on React performance optimization, state management patterns (Redux), and modern TypeScript best practices.
  ],
)
#job(
  position: "Software Developer",
  institution: [Clearview LLC],
  location: "Remote",
  date: "Jun 2023 - Dec 2024",
  description: [
    - *Architected and built RESTful APIs in .NET Core* following clean architecture principles, implementing dependency injection, repository pattern, and Entity Framework ORM for data access, resulting in 10% improvement in system uptime.
    - Led migration of legacy AngularJS modules to modern Angular 17 and React, refactoring monolithic code into maintainable, testable components with 30% reduction in load times.
    - *Championed Test-Driven Development (TDD)* practices across the team, implementing automated test suites with *xUnit, NUnit*, and Jest, cutting QA defect rate by 30% and improving release stability.
    - Designed and implemented CI/CD pipelines with GitHub Actions for automated builds, tests, and multi-environment deployments following DevOps best practices.
    - Conducted code reviews focusing on SOLID principles, clean code standards, and architectural improvements, mentoring team members on .NET and React best practices.
  ],
)
#job(
  position: "FullStack Engineer",
  institution: [Appointments Today LLC],
  location: "Remote",
  date: "Nov 2022 - May 2023",
  description: [
    - *Designed and implemented microservices architecture on GCP* using event-driven patterns with Pub/Sub, reducing infrastructure costs by 25% while improving scalability for distributed systems.
    - Architected distributed system integration between Five9 telephony and multiple CRM platforms via RESTful APIs, implementing retry logic, circuit breakers, and error handling that improved call handling efficiency by 15%.
    - Built real-time analytics dashboards using React with optimized data fetching patterns, caching strategies, and reusable hooks that automated reporting and saved 40% of manual effort.
    - Applied SOLID principles and separation of concerns across microservices, ensuring maintainability, testability, and adherence to clean code standards.
  ],
)
#job(
  position: "Junior Web Developer",
  institution: [IBG America LLC],
  location: "Santa Ana, El Salvador",
  date: "Jun 2022 - Oct 2022",
  description: [
    - Developed internal automation tools in React with TypeScript, implementing reusable component patterns following SOLID principles to streamline inventory and reporting workflows.
    - Created lightweight APIs in Node.js to synchronize ERP systems with QuickBooks Online, implementing proper error handling, validation, and data integrity patterns.
    - Wrote optimized SQL queries and maintained company portals, supporting ad-hoc reporting requirements for management decision-making.
  ],
)
#job(
  position: "UI Designer and Frontend Developer",
  institution: [Freelance],
  location: "Remote",
  date: "Nov 2021 - Dec 2022",
  description: [
    - Delivered responsive web applications using Angular and Vue.js, implementing mobile-first design patterns and ensuring cross-device compatibility.
    - Containerized and deployed frontend applications using Docker and Kubernetes on GCP, serving 500+ active users with 99.9% uptime.
    - Translated Figma designs into production-ready code with pixel-perfect accuracy, following component-driven development practices.
  ],
)
#sectionsep

#section("Skills")
#oneline-title-item(
  title: "Backend & APIs",
  content: [.NET Core, C\#, Entity Framework (ORM), ASP.NET Core, RESTful APIs, Microservices, SQL (also familiar with: Node.js, Python)]
)
#oneline-title-item(
  title: "Frontend",
  content: [React, TypeScript, Angular, Redux, Next.js, Material UI, Tailwind CSS]
)
#oneline-title-item(
  title: "Cloud & DevOps",
  content: [Azure-ready (GCP & AWS exp.), CI/CD (GitHub Actions, Azure DevOps-ready), Docker, Kubernetes]
)
#oneline-title-item(
  title: "Architecture & Patterns",
  content: [Distributed Systems, Event-Driven Architecture, Cloud-Native Design, SOLID Principles, Clean Code]
)
#oneline-title-item(
  title: "Databases",
  content: [SQL Server, PostgreSQL, MySQL, MongoDB, Firestore]
)
#oneline-title-item(
  title: "Testing & Quality",
  content: [TDD, xUnit, NUnit, Jest, React Testing Library, Cypress, Automated Testing]
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

