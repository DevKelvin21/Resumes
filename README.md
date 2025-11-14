# Kelvin Rojas - Resume Repository

Professional resume documents maintained using Typst, organized by technology stack.

## Quick Start

**Compile all resumes:**
```bash
./shared/scripts/compile-all.sh
```

**Compile specific resume:**
```bash
typst compile resumes/dotnet-react/resume.typ
```

**Create new resume stack:**
```bash
./shared/scripts/create-new-stack.sh java-react
```

**Validate all resumes:**
```bash
./shared/scripts/validate-all.sh
```

## Repository Structure

```
resumes/
├── dotnet-react/         # .NET + React resume
├── nodejs-react/         # Node.js + React resume
├── angular/              # Angular resume
└── [new-stack]/          # Add new stacks as needed

linkedin/                 # LinkedIn profile files
shared/
├── scripts/              # Helper scripts
├── templates/            # Shared templates
└── docs/                 # Documentation

archive/                  # Old versions
```

## Multi-Stack Strategy

This repository follows a strategic approach:

- **LinkedIn Profile**: Comprehensive, shows ALL technology stacks equally
- **Resume Versions**: Focused on target stack, de-emphasizes competing technologies

Each resume version:
- Emphasizes most relevant stack for target role
- Mentions other stacks as "also familiar with"
- Focuses on transferable architectural patterns
- Maintains consistency with LinkedIn (no contradictions)

See [CLAUDE.md](CLAUDE.md) for detailed strategy documentation.

## Stack Versions

**Current resume versions:**

1. **dotnet-react** - .NET Core + React (Microsoft stack roles)
2. **nodejs-react** - Node.js + React (JavaScript-heavy roles)
3. **angular** - Angular (Angular-specific roles)

## Using Claude Code

**Specialized slash commands:**

- `/create-resume` - Create new tailored resume with AI assistance
- `/validate-resume` - Validate resume alignment with strategy
- `/update-linkedin` - Update LinkedIn profile files

These commands ensure consistency and strategy compliance.

## Helper Scripts

Located in `shared/scripts/`:

- **compile-all.sh** - Compile all resume.typ files to PDF
- **validate-all.sh** - Basic validation of all resumes
- **create-new-stack.sh** - Create new stack folder with templates

See [shared/scripts/README.md](shared/scripts/README.md) for detailed usage.

## Document Formats

Each resume stack contains:

- **resume.typ** - Typst source (primary source of truth)
- **resume.md** - Markdown version (for compatibility)
- **resume.pdf** - Compiled output (git-ignored)

## Requirements

- **Typst**: Modern typesetting system
  - Install: https://github.com/typst/typst
  - Version: 0.14.0+
- **Template**: modernpro-cv v1.1.0 (auto-downloaded)

## Git Workflow

- Commit: `.typ` and `.md` source files
- Ignore: `*.pdf` (can be regenerated)
- Tag versions: `git tag dotnet-v1.3`

## Contributing

When making changes:

1. Edit both `.typ` and `.md` versions
2. Update date in Typst header: `date: [YYYY-MM-DD]`
3. Validate alignment: `./shared/scripts/validate-all.sh`
4. Compile and review: `./shared/scripts/compile-all.sh`

---

**For detailed instructions, see [CLAUDE.md](CLAUDE.md)**
