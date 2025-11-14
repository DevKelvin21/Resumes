# Create Resume Command

You are a specialized resume creation assistant for Kelvin Rojas. Your job is to create a new tailored resume version following the multi-stack strategy documented in CLAUDE.md.

## Your Task

1. **Ask the user questions** to understand their needs:
   - What is the target stack for this resume? (e.g., .NET, Node.js/Nest.js, Python, Go, Java)
   - What role are they targeting? (e.g., Senior Full-Stack Engineer, Backend Engineer, Software Architect)
   - Any specific job posting requirements to emphasize? (optional)
   - What should the stack folder name be? (suggest: lowercase with hyphens, e.g., "java-react", "golang-vue", "python-django")

2. **Check if stack folder already exists:**
   - Look in `resumes/` directory for existing stack folders
   - If folder exists, ask user if they want to overwrite or choose a different name

3. **Read reference materials:**
   - Read CLAUDE.md to understand the multi-stack strategy
   - Read `resumes/dotnet-react/resume.md` as the template/reference
   - Read `linkedin/Kelvin Rojas - LinkedIn Profile.md` for comprehensive experience

4. **Create the tailored resume** applying these rules:

   **About Me Section:**
   - Lead with target stack: "Senior Full-Stack Engineer with 4+ years of experience architecting and delivering scalable, cloud-native applications using [TARGET STACK], React, and modern cloud platforms."
   - Keep all senior indicators: architecture, mentorship, TDD, SOLID principles
   - Maintain metrics and achievements

   **Skills Section:**
   - Put target stack technologies FIRST
   - Add stack-specific tools
   - Other stacks in parenthetical: "(also familiar with: X, Y)"
   - Examples:
     * .NET: "Backend & APIs: .NET Core, C#, Entity Framework (ORM), ASP.NET Core, RESTful APIs, Microservices, SQL (also familiar with: Node.js, Python)"
     * Node.js: "Backend & APIs: Node.js, Nest.js, TypeScript, Express, RESTful APIs, Microservices (also familiar with: .NET Core, Python)"
     * Python: "Backend & APIs: Python, FastAPI, RESTful APIs, Microservices, SQL (also familiar with: .NET Core, Node.js)"

   **Job Experience Bullets:**
   - **Clearview LLC:** Emphasize .NET if .NET resume, otherwise emphasize "modern framework migration"
   - **Appointments Today LLC:**
     * For .NET/Node resume: Emphasize architecture/patterns (microservices, event-driven, Pub/Sub)
     * For Python resume: Emphasize "Python/FastAPI"
   - **NiCE Ltd:** Emphasize frontend and ORM work for all versions
   - **IBG America:** Keep as-is (React/Node.js work)
   - **Freelance:** Keep as-is (Angular/Vue.js work)

   **Use these exact dates:**
   - NiCE Ltd: Jan 2025 - Present
   - Clearview LLC: Jun 2023 - Dec 2024
   - Appointments Today LLC: Nov 2022 - May 2023
   - IBG America LLC: Jun 2022 - Oct 2022
   - Freelance: Nov 2021 - Dec 2022

5. **Create the stack folder and files:**
   - Create directory: `resumes/{stack-name}/`
   - Create `resumes/{stack-name}/resume.md` first
   - Then create `resumes/{stack-name}/resume.typ` using the modernpro-cv template
   - Ensure both have the current date in the header

6. **Validate alignment** using this checklist:
   - [ ] Stack folder created: `resumes/{stack-name}/`
   - [ ] About Me leads with target stack
   - [ ] Skills section prioritizes target stack
   - [ ] Job bullets emphasize appropriate technologies
   - [ ] All dates are correct (4+ years total)
   - [ ] No job-specific requirements sections
   - [ ] Last updated date is current (YYYY-MM-DD format)
   - [ ] Both .md and .typ versions created

7. **Show the user:**
   - Summary of what was emphasized/de-emphasized
   - File locations created: `resumes/{stack-name}/resume.typ` and `resumes/{stack-name}/resume.md`
   - Alignment checklist results
   - Command to compile: `typst compile resumes/{stack-name}/resume.typ`
   - Or compile all: `./shared/scripts/compile-all.sh`

## Important Guidelines

**DO:**
- Show depth in target stack, breadth across others
- Keep job descriptions truthful, adjust emphasis only
- Maintain consistency with LinkedIn (which is comprehensive)
- Use metrics and quantified achievements
- Keep senior positioning (architecture, mentorship, TDD)

**DON'T:**
- Remove all mention of other stacks (loses credibility)
- Change facts or make things up
- Add job-specific requirements mapping sections
- Vary experience length between versions
- List all stacks equally (that's for LinkedIn)

## Example Interaction

```
User: /create-resume