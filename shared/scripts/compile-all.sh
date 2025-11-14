#!/bin/bash
# compile-all.sh - Compile all resume.typ files to PDF

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
RESUMES_DIR="$REPO_ROOT/resumes"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "=================================="
echo "Compiling All Resumes"
echo "=================================="
echo ""

# Check if typst is installed
if ! command -v typst &> /dev/null; then
    echo -e "${RED}Error: typst is not installed${NC}"
    echo "Install it from: https://github.com/typst/typst"
    exit 1
fi

# Track compilation status
total=0
success=0
failed=0

# Find all resume.typ files and compile them
for typ_file in "$RESUMES_DIR"/*/resume.typ; do
    if [ -f "$typ_file" ]; then
        total=$((total + 1))
        stack_name=$(basename "$(dirname "$typ_file")")
        pdf_file="${typ_file%.typ}.pdf"

        echo -e "${YELLOW}Compiling:${NC} $stack_name"

        if typst compile "$typ_file" "$pdf_file"; then
            echo -e "${GREEN}✓ Success:${NC} $stack_name → $(basename "$pdf_file")"
            success=$((success + 1))
        else
            echo -e "${RED}✗ Failed:${NC} $stack_name"
            failed=$((failed + 1))
        fi
        echo ""
    fi
done

# Summary
echo "=================================="
echo "Summary"
echo "=================================="
echo "Total:   $total"
echo -e "${GREEN}Success: $success${NC}"
if [ $failed -gt 0 ]; then
    echo -e "${RED}Failed:  $failed${NC}"
    exit 1
else
    echo -e "Failed:  0"
fi
