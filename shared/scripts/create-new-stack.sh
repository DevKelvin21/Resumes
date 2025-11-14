#!/bin/bash
# create-new-stack.sh - Create a new resume stack folder

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
RESUMES_DIR="$REPO_ROOT/resumes"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Usage message
usage() {
    echo "Usage: $0 <stack-name>"
    echo ""
    echo "Examples:"
    echo "  $0 java-react"
    echo "  $0 golang-vue"
    echo "  $0 ruby-rails"
    echo ""
    echo "This will create:"
    echo "  resumes/<stack-name>/resume.typ"
    echo "  resumes/<stack-name>/resume.md"
    echo ""
    exit 1
}

# Check arguments
if [ $# -ne 1 ]; then
    usage
fi

STACK_NAME="$1"
STACK_DIR="$RESUMES_DIR/$STACK_NAME"

# Validate stack name (lowercase, alphanumeric, hyphens only)
if ! [[ "$STACK_NAME" =~ ^[a-z0-9-]+$ ]]; then
    echo -e "${RED}Error: Stack name must be lowercase alphanumeric with hyphens only${NC}"
    echo "Examples: java-react, golang-vue, ruby-rails"
    exit 1
fi

# Check if stack already exists
if [ -d "$STACK_DIR" ]; then
    echo -e "${RED}Error: Stack '$STACK_NAME' already exists at:${NC}"
    echo "  $STACK_DIR"
    exit 1
fi

echo "=================================="
echo "Creating New Resume Stack"
echo "=================================="
echo -e "${BLUE}Stack:${NC} $STACK_NAME"
echo ""

# Create directory
mkdir -p "$STACK_DIR"
echo -e "${GREEN}✓${NC} Created directory: $STACK_DIR"

# Create resume.typ template
cat > "$STACK_DIR/resume.typ" << 'EOF'
#import "@preview/modernpro-cv:1.1.0": *

#show: cv-single.with(
  font-type: "PT Serif",
  continue-header: "false",
  date: [2025-01-13],
  name: [Kelvin Rojas],
  address: [],
  lastupdated: "true",
  pagecount: "true",
  platform: (
    email: "mailto:rojas13001@gmail.com",
    github: "https://github.com/kelvinrrivera",
    linkedin: "https://linkedin.com/in/kelvin-rafael-rojas",
    location: "Dominican Republic",
  ),
)

#section("About Me")
[
  Senior Full-Stack Engineer with 4+ years of experience building scalable applications using [TODO: STACK], React, and modern cloud platforms. Expert in TDD, SOLID principles, microservices architecture, and mentoring junior developers. Proven track record of optimizing performance (up to 40%), improving code quality, and delivering production-ready solutions in Agile environments.
]

#section("Experience")

#job(
  position: "Senior Full-Stack Engineer",
  institution: [NiCE Ltd],
  location: "Remote",
  date: "Jan 2025 - Present",
  description: [
    - [TODO: Add responsibilities and achievements]
  ],
)

#job(
  position: "Senior Full-Stack Engineer",
  institution: [Clearview LLC],
  location: "Remote",
  date: "Jun 2023 - Dec 2024",
  description: [
    - [TODO: Add responsibilities and achievements]
  ],
)

#job(
  position: "Backend Engineer",
  institution: [Appointments Today LLC],
  location: "Remote",
  date: "Nov 2022 - May 2023",
  description: [
    - [TODO: Add responsibilities and achievements]
  ],
)

#job(
  position: "Full-Stack Engineer",
  institution: [Freelance],
  location: "Remote",
  date: "Nov 2021 - Dec 2022",
  description: [
    - [TODO: Add responsibilities and achievements]
  ],
)

#job(
  position: "Software Developer",
  institution: [IBG America],
  location: "Remote",
  date: "Jun 2022 - Oct 2022",
  description: [
    - [TODO: Add responsibilities and achievements]
  ],
)

#section("Skills")
#oneline-title-item(
  title: "Backend & APIs",
  content: "[TODO: Add backend technologies for this stack]",
)

#oneline-title-item(
  title: "Frontend",
  content: "[TODO: Add frontend technologies]",
)

#oneline-title-item(
  title: "Cloud & DevOps",
  content: "AWS (Lambda, S3, ECS, RDS, Pub/Sub), Docker, Serverless, IaC (AWS CDK), CI/CD",
)

#oneline-title-item(
  title: "Architecture",
  content: "Microservices, RESTful APIs, Event-Driven Systems, SOLID Principles, Repository Pattern",
)

#oneline-title-item(
  title: "Databases",
  content: "PostgreSQL, MySQL, MongoDB, Redis, Entity Framework (ORM), Prisma, Sequelize",
)

#oneline-title-item(
  title: "Testing",
  content: "TDD, Unit Testing, Integration Testing, Jest, React Testing Library, xUnit, NUnit",
)

#section("Education")
#education(
  institution: "Pontificia Universidad Católica Madre y Maestra",
  major: "Computer Science and Technology",
  graduation-year: "Jan. 2024",
)

#section("Languages")
#item[
  *Spanish* (Native), *English* (Fluent - Professional Working Proficiency)
]
EOF

echo -e "${GREEN}✓${NC} Created resume.typ template"

# Create resume.md template
cat > "$STACK_DIR/resume.md" << 'EOF'
# Kelvin Rojas - Senior Full-Stack Engineer

**Location:** Dominican Republic
**Email:** rojas13001@gmail.com
**GitHub:** [kelvinrrivera](https://github.com/kelvinrrivera)
**LinkedIn:** [kelvin-rafael-rojas](https://linkedin.com/in/kelvin-rafael-rojas)

---

## About Me

Senior Full-Stack Engineer with 4+ years of experience building scalable applications using [TODO: STACK], React, and modern cloud platforms. Expert in TDD, SOLID principles, microservices architecture, and mentoring junior developers. Proven track record of optimizing performance (up to 40%), improving code quality, and delivering production-ready solutions in Agile environments.

---

## Experience

### Senior Full-Stack Engineer | NiCE Ltd
**Jan 2025 - Present | Remote**

- [TODO: Add responsibilities and achievements]

### Senior Full-Stack Engineer | Clearview LLC
**Jun 2023 - Dec 2024 | Remote**

- [TODO: Add responsibilities and achievements]

### Backend Engineer | Appointments Today LLC
**Nov 2022 - May 2023 | Remote**

- [TODO: Add responsibilities and achievements]

### Full-Stack Engineer | Freelance
**Nov 2021 - Dec 2022 | Remote**

- [TODO: Add responsibilities and achievements]

### Software Developer | IBG America
**Jun 2022 - Oct 2022 | Remote**

- [TODO: Add responsibilities and achievements]

---

## Skills

**Backend & APIs:** [TODO: Add backend technologies for this stack]

**Frontend:** [TODO: Add frontend technologies]

**Cloud & DevOps:** AWS (Lambda, S3, ECS, RDS, Pub/Sub), Docker, Serverless, IaC (AWS CDK), CI/CD

**Architecture:** Microservices, RESTful APIs, Event-Driven Systems, SOLID Principles, Repository Pattern

**Databases:** PostgreSQL, MySQL, MongoDB, Redis, Entity Framework (ORM), Prisma, Sequelize

**Testing:** TDD, Unit Testing, Integration Testing, Jest, React Testing Library, xUnit, NUnit

---

## Education

**Pontificia Universidad Católica Madre y Maestra**
Computer Science and Technology | Jan. 2024

---

## Languages

**Spanish** (Native), **English** (Fluent - Professional Working Proficiency)
EOF

echo -e "${GREEN}✓${NC} Created resume.md template"

echo ""
echo "=================================="
echo -e "${GREEN}Stack Created Successfully!${NC}"
echo "=================================="
echo ""
echo "Next steps:"
echo "  1. Edit the files:"
echo "     - $STACK_DIR/resume.typ"
echo "     - $STACK_DIR/resume.md"
echo ""
echo "  2. Replace [TODO] placeholders with stack-specific content"
echo ""
echo "  3. Compile to PDF:"
echo "     typst compile $STACK_DIR/resume.typ"
echo ""
echo "  4. Or compile all resumes:"
echo "     ./shared/scripts/compile-all.sh"
echo ""
