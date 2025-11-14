# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Purpose

This repository maintains professional resume documents for Kelvin Rojas using Typst, a modern typesetting system. The repository contains both `.typ` (Typst source) and `.md` (Markdown) versions of the resume.

## Available Commands

**For resume management tasks, use these specialized slash commands:**

- **`/create-resume`** - Create a new tailored resume version for a specific stack (e.g., .NET, Node.js, Python, Go, Java)
  - Asks about target stack and role
  - Automatically applies multi-stack strategy
  - Creates both .md and .typ versions
  - Validates alignment with strategy

- **`/validate-resume`** - Check if a resume aligns with the multi-stack strategy
  - Runs comprehensive checklist
  - Identifies issues with specific line numbers
  - Provides actionable recommendations
  - Offers to fix issues automatically

- **`/update-linkedin`** - Update LinkedIn profile files based on resume changes
  - Maintains comprehensive (not focused) positioning
  - Syncs both LinkedIn markdown files
  - Ensures consistency across all documents
  - Generates copy-paste ready sections

**These commands are STRONGLY PREFERRED over manually editing resumes** - they ensure consistency and strategy compliance.

## Repository Structure

```
resumes/
├── dotnet-react/         # .NET + React resume
│   ├── resume.typ
│   ├── resume.md
│   └── resume.pdf        # (git-ignored)
├── nodejs-react/         # Node.js + React resume
│   ├── resume.typ
│   ├── resume.md
│   └── resume.pdf
├── angular/              # Angular resume
│   ├── resume.typ
│   ├── resume.md
│   └── resume.pdf
└── [new-stack]/          # Add new stacks as needed

linkedin/                 # LinkedIn profile files
├── Kelvin Rojas - LinkedIn Profile.md
├── LinkedIn Copy-Paste Sections.md
├── LinkedIn Strategy Guide.md
└── README.md

shared/
├── templates/            # Shared Typst templates/configs
├── scripts/              # Helper scripts
│   ├── compile-all.sh
│   ├── validate-all.sh
│   ├── create-new-stack.sh
│   └── README.md
└── docs/                 # Additional documentation

archive/                  # Old resume versions
```

**Key Benefits:**
- Clean, predictable paths: `resumes/{stack}/resume.typ`
- Easy to add new stacks
- Simple scripts: `for dir in resumes/*/`
- Git-based versioning (use tags for releases)

## Building and Compilation

### Compile a specific resume
```bash
typst compile resumes/dotnet-react/resume.typ
```

### Compile all resumes at once
```bash
./shared/scripts/compile-all.sh
```

### Watch mode (auto-recompile on changes)
```bash
typst watch resumes/dotnet-react/resume.typ
```

### Check Typst installation
```bash
typst --version
```

## Document Structure

### Typst Resume Format
The `.typ` files use the `modernpro-cv` template (v1.1.0) with the following key components:
- `cv-single.with()` configuration block for metadata (name, contacts, location)
- Section-based structure: About Me, Experience, Skills, Education, Languages
- Job entries use `#job()` function with position, institution, location, date, and description
- Skills organized with `#oneline-title-item()` for clean formatting

### Markdown Version
The `.md` file is a parallel plain-text version maintained for compatibility and quick editing. Keep both versions synchronized when making content changes.

## Resume Architecture

**Main Components:**
- **Header metadata**: Name, location, contact info, last updated date
- **About Me**: Professional summary highlighting key expertise areas
- **Experience**: Reverse chronological work history with bullet points emphasizing technical achievements
- **Skills**: Categorized by Backend, Frontend, Cloud, Architecture, Databases, Testing
- **Education & Languages**: Academic background and language proficiency

**Styling Philosophy:**
- Senior-level positioning: Emphasizes architecture, mentorship, and technical leadership
- Metrics-driven achievements: Includes quantified improvements (%, time saved, cost reduction)
- Technology stack alignment: Highlights .NET, React, cloud-native, SOLID principles, TDD
- Clean, professional layout using PT Serif font

## Git Workflow

PDF outputs are ignored (see `.gitignore`). Only commit source files (`.typ` and `.md`).

## Common Tasks

### Update resume content
1. Navigate to the stack folder (e.g., `resumes/dotnet-react/`)
2. Edit the `resume.typ` file for primary source of truth
3. Update corresponding `resume.md` file to maintain parity
4. Compile to PDF: `typst compile resumes/dotnet-react/resume.typ`

### Create a new resume for a different stack
```bash
./shared/scripts/create-new-stack.sh java-react
```
This creates `resumes/java-react/` with template files. Then customize the content.

**Prefer using `/create-resume` slash command** for AI-assisted content generation.

### Validate all resumes
```bash
./shared/scripts/validate-all.sh
```
For detailed validation with recommendations, use `/validate-resume` slash command.

### Add new job experience
Use the `#job()` macro in the Experience section:
```typst
#job(
  position: "Title",
  institution: [Company],
  location: "Location",
  date: "Start - End",
  description: [
    - Achievement with metrics
    - Technical implementation details
  ],
)
```

### Modify contact information
Update the `cv-single.with()` configuration block at the top of the `resume.typ` file.

---

## Multi-Stack Resume Strategy

### Overview
Kelvin has 4+ years of experience across multiple technology stacks (.NET, React, Node.js/Nest.js, Python/FastAPI). This repository follows a strategic approach to positioning this multi-stack experience effectively for different job opportunities.

### Core Principle: Comprehensive LinkedIn, Focused Resumes

**LinkedIn Profile** (see `/LinkedIn` folder):
- Shows ALL technology stacks equally
- Comprehensive "Senior Full-Stack Engineer" positioning
- Emphasizes architecture, mentorship, TDD, SOLID principles
- Makes Kelvin discoverable for ANY of his stacks
- Purpose: Professional presence and recruiter discoverability

**Resume Versions** (tailored per stack):
- Emphasize the MOST RELEVANT stack for target role
- De-emphasize competing stacks (mention as "also familiar with")
- Focus on transferable architectural patterns
- Purpose: Targeted application documents

### Resume Versions Maintained

1. **Senior .NET + React** (`resumes/dotnet-react/`)
   - Primary audience: Microsoft stack roles, .NET positions
   - Emphasizes: .NET Core, C#, Entity Framework, ASP.NET Core
   - De-emphasizes: Python/FastAPI, Nest.js (mentions as "also familiar with")

2. **React + Node/Nest.js** (`resumes/nodejs-react/`)
   - Primary audience: JavaScript-heavy roles, Node.js positions
   - Emphasizes: Nest.js, Node.js, TypeScript, React
   - De-emphasizes: .NET, Python (mentions as "also familiar with")

3. **Angular** (`resumes/angular/`)
   - Primary audience: Angular-specific roles, frontend-heavy positions
   - Emphasizes: Angular, TypeScript, RxJS, frontend architecture
   - De-emphasizes: Other frameworks (mentions React experience)

**Note:** Create additional stack versions as needed using `/create-resume` or `./shared/scripts/create-new-stack.sh`

### Creating New Resume Versions

When creating a new tailored resume version, follow these guidelines:

#### 1. About Me Section
**Do:**
- Lead with the target stack: "...using [TARGET STACK], React, and modern cloud platforms"
- Keep senior indicators: architecture, mentorship, TDD, SOLID principles
- Maintain metrics and achievements

**Don't:**
- List all stacks equally (save that for LinkedIn)
- Remove senior positioning to appear "humble"

#### 2. Skills Section
**Do:**
- Put target stack technologies FIRST
- Add stack-specific tools (e.g., ASP.NET Core for .NET, Nest.js for Node)
- Use parenthetical for other stacks: "(also familiar with: Node.js, Python)"

**Don't:**
- List competing backend frameworks equally (confuses positioning)
- Hide other skills entirely (shows lack of breadth)

**Example for .NET resume:**
```
Backend & APIs: .NET Core, C#, Entity Framework (ORM), ASP.NET Core, RESTful APIs, Microservices, SQL (also familiar with: Node.js, Python)
```

**Example for Node.js resume:**
```
Backend & APIs: Node.js, Nest.js, TypeScript, Express, RESTful APIs, Microservices (also familiar with: .NET Core, Python)
```

#### 3. Job Experience Bullets

**Strategy:** Emphasize transferable architectural skills over specific language choices

**For stack-specific achievements:**
- If experience uses TARGET stack → Emphasize the stack
  - Example (for .NET resume): "**Architected RESTful APIs in .NET Core** using Entity Framework..."

- If experience uses DIFFERENT stack → Emphasize the architecture/patterns
  - Before: "Designed microservices using Python/FastAPI..."
  - After: "Designed microservices architecture using event-driven patterns with Pub/Sub..."
  - Why: Architecture/patterns are transferable; specific language is less important

**Clearview LLC** (Primary .NET experience):
- Always emphasize .NET Core, Entity Framework, xUnit, NUnit
- Use bold for .NET-specific achievements
- This is the strongest .NET evidence

**Appointments Today LLC** (Python/FastAPI experience):
- For .NET resume: Emphasize microservices architecture, event-driven patterns, Pub/Sub
- For Node.js resume: Can mention "microservices with Node.js" or focus on architecture
- For Python resume: Emphasize "Python/FastAPI" specifically

**NiCE Ltd** (React/Angular frontend, MySQL):
- Frontend work: Emphasize for all versions
- MySQL/ORM work: Emphasize for .NET resume (ORM best practices)
- Cloud integration: Emphasize for all versions

#### 4. What to NEVER Include in Individual Resumes

**Job-specific requirements mapping:**
- Don't include sections like "How this resume addresses XYZ job requirements"
- These belong in COVER LETTERS for specific applications
- Keeps resume generic and reusable

**Outdated dates:**
- Always update `date:` field in Typst header when making changes
- Current format: `date: [YYYY-MM-DD]`

**Contradictory positioning:**
- If LinkedIn says "4+ years" → All resumes say "4+ years"
- Don't vary experience length between versions

### Key Dates (Keep Synchronized)

Current experience timeline:
- **Nov 2021 - Dec 2022:** Freelance (14 months)
- **Jun 2022 - Oct 2022:** IBG America (5 months, overlaps with freelance)
- **Nov 2022 - May 2023:** Appointments Today (7 months)
- **Jun 2023 - Dec 2024:** Clearview (18 months)
- **Jan 2025 - Present:** NiCE Ltd (current)

**Total: 4+ years**

All resume versions and LinkedIn must use these dates consistently.

### LinkedIn Folder

The `linkedin/` folder contains:
- **Kelvin Rojas - LinkedIn Profile.md:** Full comprehensive profile
- **LinkedIn Copy-Paste Sections.md:** Ready-to-paste text for updating LinkedIn
- **LinkedIn Strategy Guide.md:** Detailed guide on using multi-stack strategy
- **README.md:** Quick start guide for LinkedIn updates

Reference these files when helping update LinkedIn or explaining the strategy.

### Testing Resume Alignment

When updating resumes, verify alignment with strategy:

**Checklist:**
- [ ] About Me leads with target stack technologies
- [ ] Skills section prioritizes target stack (other stacks in parenthetical)
- [ ] Clearview bullets emphasize .NET (for .NET resume) or modern framework migration (for others)
- [ ] Appointments Today emphasizes architecture over language (unless Python resume)
- [ ] No job-specific requirements sections
- [ ] Experience stated as "4+ years"
- [ ] Dates match across all versions
- [ ] Last updated date is current

### Common Pitfall: Over-Tailoring

**Don't:**
- Remove all mention of other stacks (loses credibility)
- Change job descriptions so much they don't match LinkedIn
- Claim expertise you don't have

**Do:**
- Show depth in target stack, breadth across others
- Keep job descriptions truthful, adjust emphasis
- Align with LinkedIn (which is comprehensive)
