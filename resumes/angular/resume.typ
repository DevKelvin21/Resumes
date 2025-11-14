#import "@preview/modernpro-cv:1.1.0": *

#import "@preview/fontawesome:0.5.0": *

#show: cv-single.with(
  font-type: "PT Serif",
  continue-header: "false",
  name: [Kelvin Rojas],
  address: [El Salvador],
  lastupdated: "true",
  date: [2025-01-13],
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
Senior Frontend Engineer with 4+ years of experience architecting and delivering modern, high-performance web applications using Angular, TypeScript, and component-driven architectures. Proven expertise in building scalable frontend systems, optimizing application performance, and implementing modern Angular features (v16-18+). Strong advocate for clean code, SOLID principles, and test-driven development with Jest. Experienced in mentoring junior developers, conducting code reviews, and driving frontend architectural decisions that improve user experience and development velocity. Advanced English proficiency for technical collaboration.
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
    - *Architected and modernized multi-frontend systems (React & Angular)* by designing reusable, modular UI component libraries following SOLID principles and component-driven architecture, reducing load times by 25%.
    - Led Angular application development implementing modern patterns including standalone components, reactive forms, and optimized change detection strategies.
    - Optimized frontend performance through lazy loading, OnPush change detection, and code splitting strategies, improving initial load times for 3,000+ daily users.
    - Integrated Google Cloud services (Cloud Auth, Pub/Sub, Realtime Database) implementing event-driven patterns to enhance real-time data synchronization and security.
    - Mentored junior developers on Angular best practices, TypeScript patterns, state management (RxJS), and modern component architecture.
  ],
)
#job(
  position: "Software Developer",
  institution: [Clearview LLC],
  location: "Remote",
  date: "Jun 2023 - Dec 2024",
  description: [
    - *Led migration of legacy AngularJS modules to modern Angular 17*, refactoring monolithic code into maintainable, testable standalone components and modules with 30% reduction in load times.
    - Implemented modern Angular features including Signals API (computed, effects), standalone components, and declarative routing patterns following latest Angular architecture guidelines.
    - *Championed Test-Driven Development (TDD)* practices across frontend team, implementing comprehensive test suites with *Jest, TestBed, and Jasmine*, cutting QA defect rate by 30% and improving release stability.
    - Architected reusable component libraries with TypeScript strict mode, implementing type-safe APIs and SCSS theming systems for consistent UI across applications.
    - Designed and implemented CI/CD pipelines with GitHub Actions for automated testing, linting, and multi-environment deployments following DevOps best practices.
    - Conducted code reviews focusing on Angular best practices, TypeScript patterns, SOLID principles, and performance optimization strategies.
  ],
)
#job(
  position: "FullStack Engineer",
  institution: [Appointments Today LLC],
  location: "Remote",
  date: "Nov 2022 - May 2023",
  description: [
    - Built real-time analytics dashboards using *React* with optimized data fetching patterns, caching strategies, and reusable hooks that automated reporting and saved 40% of manual effort.
    - Designed microservices architecture on GCP using event-driven patterns with Pub/Sub, implementing scalable backend APIs to support frontend applications.
    - Architected distributed system integration between telephony and CRM platforms via RESTful APIs, implementing retry logic and error handling that improved system reliability by 15%.
    - Applied SOLID principles and separation of concerns across full-stack architecture, ensuring maintainability and testability.
  ],
)
#job(
  position: "Junior Web Developer",
  institution: [IBG America LLC],
  location: "Santa Ana, El Salvador",
  date: "Jun 2022 - Oct 2022",
  description: [
    - Developed internal automation tools in *React with TypeScript*, implementing reusable component patterns following SOLID principles to streamline inventory and reporting workflows.
    - Built responsive, type-safe interfaces using modern TypeScript patterns, functional programming concepts, and reactive state management.
    - Created lightweight APIs in Node.js to synchronize ERP systems with QuickBooks Online, implementing proper error handling and validation patterns.
  ],
)
#job(
  position: "UI Designer and Frontend Developer",
  institution: [Freelance],
  location: "Remote",
  date: "Nov 2021 - Dec 2022",
  description: [
    - *Delivered responsive web applications using Angular and Vue.js*, implementing mobile-first design patterns, reactive forms, and ensuring cross-device compatibility.
    - Architected and built scalable Angular applications with modular architecture, lazy loading, and optimized bundle sizes for production deployments.
    - Containerized and deployed frontend applications using Docker and Kubernetes on GCP, serving 500+ active users with 99.9% uptime.
    - Translated Figma designs into production-ready code with pixel-perfect accuracy, following component-driven development and atomic design principles.
  ],
)
#sectionsep

#section("Skills")
#oneline-title-item(
  title: "Frontend & UI",
  content: [Angular (v16-18+), TypeScript, JavaScript, SCSS/CSS, Responsive Design, Component-Driven Development]
)
#oneline-title-item(
  title: "Angular Expertise",
  content: [Signals API (computed, effects), Standalone Components, RxJS, NgRx, Reactive Forms, OnPush Strategy, Lazy Loading, Angular Universal (SSR)]
)
#oneline-title-item(
  title: "Testing & Quality",
  content: [TDD, Jest, TestBed, Jasmine, Karma, Cypress, Playwright, Automated Testing]
)
#oneline-title-item(
  title: "Modern JavaScript",
  content: [React, Next.js, Redux, Vue.js, Material UI, Tailwind CSS]
)
#oneline-title-item(
  title: "Backend & APIs",
  content: [Node.js, RESTful APIs, GraphQL (also familiar with: .NET Core, Python/FastAPI)]
)
#oneline-title-item(
  title: "Cloud & DevOps",
  content: [GCP, AWS, CI/CD (GitHub Actions), Docker, Kubernetes]
)
#oneline-title-item(
  title: "Architecture & Patterns",
  content: [Component Architecture, State Management, Performance Optimization, SOLID Principles, Clean Code]
)
#oneline-title-item(
  title: "Tools & Collaboration",
  content: [Git, GitHub, Figma, Nx (monorepos), Webpack, Vite]
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

