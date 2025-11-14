#!/bin/bash
# validate-all.sh - Validate all resumes against multi-stack strategy

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

echo "=================================="
echo "Validating All Resumes"
echo "=================================="
echo ""

# Track validation status
total=0
passed=0
issues=0

# Basic validation checks
validate_resume() {
    local typ_file="$1"
    local stack_name="$2"
    local errors=0

    echo -e "${BLUE}Checking:${NC} $stack_name"

    # Check 1: File exists
    if [ ! -f "$typ_file" ]; then
        echo -e "${RED}  ✗ resume.typ not found${NC}"
        return 1
    fi

    # Check 2: Corresponding .md exists
    local md_file="${typ_file%.typ}.md"
    if [ ! -f "$md_file" ]; then
        echo -e "${YELLOW}  ⚠ resume.md not found (not critical)${NC}"
    fi

    # Check 3: Has "About Me" section
    if ! grep -q "About Me" "$typ_file"; then
        echo -e "${RED}  ✗ Missing 'About Me' section${NC}"
        errors=$((errors + 1))
    fi

    # Check 4: Has "Experience" section
    if ! grep -q "Experience" "$typ_file"; then
        echo -e "${RED}  ✗ Missing 'Experience' section${NC}"
        errors=$((errors + 1))
    fi

    # Check 5: Has "Skills" section
    if ! grep -q "Skills" "$typ_file"; then
        echo -e "${RED}  ✗ Missing 'Skills' section${NC}"
        errors=$((errors + 1))
    fi

    # Check 6: Has date field
    if ! grep -q "date:" "$typ_file"; then
        echo -e "${YELLOW}  ⚠ Missing 'date:' field${NC}"
    fi

    # Check 7: Stack-specific validation
    case "$stack_name" in
        dotnet-react)
            if ! grep -qi "\.NET\|C#" "$typ_file"; then
                echo -e "${RED}  ✗ Missing .NET/C# emphasis${NC}"
                errors=$((errors + 1))
            fi
            ;;
        nodejs-react)
            if ! grep -qi "Node\.js\|Nest\.js" "$typ_file"; then
                echo -e "${RED}  ✗ Missing Node.js/Nest.js emphasis${NC}"
                errors=$((errors + 1))
            fi
            ;;
        python-react)
            if ! grep -qi "Python\|FastAPI" "$typ_file"; then
                echo -e "${RED}  ✗ Missing Python/FastAPI emphasis${NC}"
                errors=$((errors + 1))
            fi
            ;;
        angular)
            if ! grep -qi "Angular" "$typ_file"; then
                echo -e "${RED}  ✗ Missing Angular emphasis${NC}"
                errors=$((errors + 1))
            fi
            ;;
    esac

    if [ $errors -eq 0 ]; then
        echo -e "${GREEN}  ✓ Passed all checks${NC}"
        return 0
    else
        echo -e "${RED}  ✗ Found $errors issue(s)${NC}"
        return 1
    fi
}

# Validate all resumes
for typ_file in "$RESUMES_DIR"/*/resume.typ; do
    if [ -f "$typ_file" ]; then
        total=$((total + 1))
        stack_name=$(basename "$(dirname "$typ_file")")

        if validate_resume "$typ_file" "$stack_name"; then
            passed=$((passed + 1))
        else
            issues=$((issues + 1))
        fi
        echo ""
    fi
done

# Summary
echo "=================================="
echo "Validation Summary"
echo "=================================="
echo "Total:   $total"
echo -e "${GREEN}Passed:  $passed${NC}"
if [ $issues -gt 0 ]; then
    echo -e "${RED}Issues:  $issues${NC}"
    echo ""
    echo "Run Claude Code's /validate-resume command for detailed analysis"
    exit 1
else
    echo -e "Issues:  0"
    echo -e "\n${GREEN}All resumes validated successfully!${NC}"
fi
