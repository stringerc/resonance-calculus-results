#!/bin/bash
# Verification script for Zenodo-GitHub connection
# Checks local files and provides verification status

set -e

echo "🔍 Verifying Zenodo Connection"
echo "=============================="
echo ""

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

PASS=0
FAIL=0
WARN=0

# Check 1: Citation files exist
echo "📄 Checking Citation Files..."
if [ -f "CITATION.cff" ]; then
    echo -e "${GREEN}✅ CITATION.cff exists${NC}"
    PASS=$((PASS+1))
else
    echo -e "${RED}❌ CITATION.cff missing${NC}"
    FAIL=$((FAIL+1))
fi

if [ -f "CITATION.md" ]; then
    echo -e "${GREEN}✅ CITATION.md exists${NC}"
    PASS=$((PASS+1))
else
    echo -e "${RED}❌ CITATION.md missing${NC}"
    FAIL=$((FAIL+1))
fi

if [ -f ".zenodo.json" ]; then
    echo -e "${GREEN}✅ .zenodo.json exists${NC}"
    PASS=$((PASS+1))
else
    echo -e "${RED}❌ .zenodo.json missing${NC}"
    FAIL=$((FAIL+1))
fi

echo ""

# Check 2: DOI in files
echo "🔗 Checking DOI References..."
DOI="10.5281/zenodo.17543858"
ZENODO_URL="zenodo.org/records/17543858"

if grep -q "$DOI" CITATION.cff 2>/dev/null; then
    echo -e "${GREEN}✅ DOI found in CITATION.cff${NC}"
    PASS=$((PASS+1))
else
    echo -e "${RED}❌ DOI not found in CITATION.cff${NC}"
    FAIL=$((FAIL+1))
fi

if grep -q "$DOI" CITATION.md 2>/dev/null; then
    echo -e "${GREEN}✅ DOI found in CITATION.md${NC}"
    PASS=$((PASS+1))
else
    echo -e "${RED}❌ DOI not found in CITATION.md${NC}"
    FAIL=$((FAIL+1))
fi

if grep -q "$DOI" .zenodo.json 2>/dev/null; then
    echo -e "${GREEN}✅ DOI found in .zenodo.json${NC}"
    PASS=$((PASS+1))
else
    echo -e "${RED}❌ DOI not found in .zenodo.json${NC}"
    FAIL=$((FAIL+1))
fi

if grep -q "$ZENODO_URL" README.md 2>/dev/null; then
    echo -e "${GREEN}✅ Zenodo URL found in README.md${NC}"
    PASS=$((PASS+1))
else
    echo -e "${RED}❌ Zenodo URL not found in README.md${NC}"
    FAIL=$((FAIL+1))
fi

echo ""

# Check 3: DOI badge in README
echo "🏷️  Checking DOI Badge..."
if grep -q "zenodo.org/badge" README.md 2>/dev/null; then
    echo -e "${GREEN}✅ DOI badge found in README.md${NC}"
    PASS=$((PASS+1))
else
    echo -e "${RED}❌ DOI badge not found in README.md${NC}"
    FAIL=$((FAIL+1))
fi

echo ""

# Check 4: HTML report references
echo "📊 Checking HTML Report..."
if [ -f "docs/index.html" ]; then
    if grep -qi "zenodo" docs/index.html 2>/dev/null; then
        echo -e "${GREEN}✅ Zenodo reference found in HTML report${NC}"
        PASS=$((PASS+1))
    else
        echo -e "${YELLOW}⚠️  Zenodo reference not found in HTML report${NC}"
        WARN=$((WARN+1))
    fi
else
    echo -e "${YELLOW}⚠️  HTML report not found (docs/index.html)${NC}"
    WARN=$((WARN+1))
fi

echo ""

# Check 5: GitHub repository URL in citation files
echo "🔗 Checking GitHub Repository References..."
GITHUB_URL="github.com/stringerc/resonance-calculus-results"

if grep -q "$GITHUB_URL" CITATION.cff 2>/dev/null; then
    echo -e "${GREEN}✅ GitHub URL found in CITATION.cff${NC}"
    PASS=$((PASS+1))
else
    echo -e "${YELLOW}⚠️  GitHub URL not found in CITATION.cff${NC}"
    WARN=$((WARN+1))
fi

if grep -q "$GITHUB_URL" CITATION.md 2>/dev/null; then
    echo -e "${GREEN}✅ GitHub URL found in CITATION.md${NC}"
    PASS=$((PASS+1))
else
    echo -e "${YELLOW}⚠️  GitHub URL not found in CITATION.md${NC}"
    WARN=$((WARN+1))
fi

echo ""
echo "=============================="
echo "📊 Verification Summary"
echo "=============================="
echo -e "${GREEN}✅ Passed: $PASS${NC}"
echo -e "${RED}❌ Failed: $FAIL${NC}"
echo -e "${YELLOW}⚠️  Warnings: $WARN${NC}"
echo ""

if [ $FAIL -eq 0 ]; then
    echo -e "${GREEN}✅ All critical checks passed!${NC}"
    echo ""
    echo "📋 Next Steps:"
    echo "   1. Visit Zenodo record: https://zenodo.org/records/17543858"
    echo "   2. Verify GitHub link appears in 'Related identifiers'"
    echo "   3. If not present, edit the record to add it"
    echo "   4. See VERIFICATION_CHECKLIST.md for detailed steps"
    exit 0
else
    echo -e "${RED}❌ Some checks failed. Please review and fix.${NC}"
    exit 1
fi

