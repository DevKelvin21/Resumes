# Resume Management Commands

This directory contains specialized slash commands for managing Kelvin's multi-stack resume strategy.

## Available Commands

### `/create-resume`
Creates a new tailored resume version for a specific technology stack.

**Use when:**
- Applying to a role with a different primary stack
- Creating a version for a new technology you've learned
- Need a fresh resume emphasizing different skills

**What it does:**
1. Asks about target stack and role
2. Applies multi-stack strategy automatically
3. Creates both .md and .typ versions
4. Validates alignment with strategy guidelines

**Example:**
```
User: /create-resume
Assistant: What technology stack should this resume emphasize?
User: Go + React
Assistant: [Creates tailored resume with Go emphasis, other stacks de-emphasized]
```

---

### `/validate-resume`
Checks if a resume version aligns with the multi-stack strategy.

**Use when:**
- Before sending a resume to ensure quality
- After manual edits to check for issues
- Periodic quality checks

**What it does:**
1. Runs comprehensive strategy checklist
2. Identifies specific issues with line numbers
3. Provides actionable recommendations
4. Offers to fix issues automatically

**Example:**
```
User: /validate-resume
Assistant: Which resume should I validate?
User: The .NET one
Assistant:
## Validation Report
Score: 7/10
Issues Found:
- Line 60: Skills section lists competing stacks equally
- Line 94: References "3.5+ years" instead of "4+ years"
...
Would you like me to fix these issues?
```

---

### `/update-linkedin`
Updates LinkedIn profile files based on resume changes.

**Use when:**
- Added a new job or role
- Updated metrics or achievements
- Changed job dates
- Added new technologies/skills

**What it does:**
1. Asks what needs updating
2. Applies comprehensive (not focused) strategy
3. Updates both LinkedIn markdown files
4. Generates copy-paste ready sections

**Example:**
```
User: /update-linkedin
Assistant: What needs to be updated?
User: New job at Company X, started Feb 2025
Assistant: [Updates LinkedIn files with comprehensive job entry]
```

---

## Strategy Quick Reference

### LinkedIn = Comprehensive
- Shows ALL technology stacks equally
- Most detailed bullets from any resume version
- Purpose: Discoverability and professional presence

### Resumes = Focused
- Emphasize target stack, de-emphasize others
- Architecture over specific languages (for non-target stacks)
- Purpose: Targeted application documents

### Both = Truthful
- No contradictions between LinkedIn and resumes
- Same dates across all versions
- Same experience length (currently 4+ years)

---

## File Structure

```
/Users/kelvin/Documents/Resumes/
├── .claude/
│   └── commands/
│       ├── create-resume.md      ← Creates new resume version
│       ├── validate-resume.md    ← Validates strategy alignment
│       ├── update-linkedin.md    ← Updates LinkedIn files
│       └── README.md             ← This file
├── LinkedIn/
│   ├── Kelvin Rojas - LinkedIn Profile.md
│   ├── LinkedIn Copy-Paste Sections.md
│   ├── LinkedIn Strategy Guide.md
│   └── README.md
├── Kelvin Rojas Resume - Senior DotNet React.md/.typ
├── Kelvin Rojas React, Node.pdf
├── Kelvin Rojas Resume Python_React.pdf
├── CLAUDE.md                     ← Main context file
└── .gitignore
```

---

## Best Practices

1. **Always use commands for resume work** instead of manual editing
2. **Validate before sending** any resume to recruiters
3. **Update LinkedIn** whenever you update multiple resume versions
4. **Keep dates synchronized** across all documents
5. **Test compilation** after creating/updating Typst files

---

## Command Development

These commands are markdown files that provide detailed instructions to Claude Code. They:
- Ensure consistency across resume versions
- Prevent common mistakes
- Apply the multi-stack strategy automatically
- Save time and reduce errors

To modify a command, edit its .md file in this directory.

---

## Quick Start

**Creating a new resume?**
```bash
/create-resume
```

**Need to check quality?**
```bash
/validate-resume
```

**Updated your experience?**
```bash
/update-linkedin
```

That's it! The commands handle the complexity for you.
