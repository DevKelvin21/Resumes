# Helper Scripts

This directory contains utility scripts for managing resumes in this repository.

## Available Scripts

### `compile-all.sh`

Compiles all `resume.typ` files to PDF format.

**Usage:**
```bash
./shared/scripts/compile-all.sh
```

**Features:**
- Automatically finds all resume.typ files in `resumes/*/`
- Compiles each to PDF in the same directory
- Shows compilation status with color-coded output
- Provides summary of successes/failures

**Requirements:**
- Typst must be installed: https://github.com/typst/typst

---

### `validate-all.sh`

Validates all resumes against the multi-stack strategy guidelines.

**Usage:**
```bash
./shared/scripts/validate-all.sh
```

**Checks:**
- Required sections exist (About Me, Experience, Skills)
- Corresponding .md file exists
- Date field is present
- Stack-specific emphasis is present (e.g., .NET for dotnet-react)

**Note:** For detailed validation with specific line numbers and recommendations, use Claude Code's `/validate-resume` command.

---

### `create-new-stack.sh`

Creates a new resume stack folder with template files.

**Usage:**
```bash
./shared/scripts/create-new-stack.sh <stack-name>
```

**Examples:**
```bash
./shared/scripts/create-new-stack.sh java-react
./shared/scripts/create-new-stack.sh golang-vue
./shared/scripts/create-new-stack.sh ruby-rails
```

**Creates:**
- `resumes/<stack-name>/resume.typ` - Typst source template
- `resumes/<stack-name>/resume.md` - Markdown template

**Template includes:**
- Standard resume structure
- TODO placeholders for stack-specific content
- All standard sections (About Me, Experience, Skills, etc.)

**Naming rules:**
- Stack names must be lowercase
- Use alphanumeric characters and hyphens only
- Examples: `java-react`, `python-django`, `rust-webassembly`

---

## Quick Start

**Compile all resumes:**
```bash
./shared/scripts/compile-all.sh
```

**Validate all resumes:**
```bash
./shared/scripts/validate-all.sh
```

**Create a new stack:**
```bash
./shared/scripts/create-new-stack.sh java-react
```

---

## Integration with Claude Code

These scripts complement Claude Code's slash commands:
- `/create-resume` - AI-assisted resume creation (preferred)
- `/validate-resume` - Detailed AI-powered validation
- `/update-linkedin` - Sync LinkedIn profile

**Recommendation:** Use Claude Code's slash commands for creating and validating resumes, as they provide intelligent content generation and detailed analysis. Use these scripts for batch operations and quick checks.
