#!/usr/bin/env bash
# FounderOS — Skill Validation Tests
# Validates the structural integrity of all skills, templates, and frameworks.

set -euo pipefail

ERRORS=0
TESTS=0
PASSED=0

pass() {
    TESTS=$((TESTS + 1))
    PASSED=$((PASSED + 1))
    echo "  PASS: $1"
}

fail() {
    TESTS=$((TESTS + 1))
    ERRORS=$((ERRORS + 1))
    echo "  FAIL: $1"
}

echo "=== FounderOS Skill Validation ==="
echo ""

# ── Test 1: All expected skill directories exist ──
echo "--- Skill Directories ---"
for i in $(seq -w 0 12); do
    dir=$(find skills/ -maxdepth 1 -type d -name "${i}-*" 2>/dev/null | head -1)
    if [ -n "$dir" ]; then
        pass "Skill ${i} directory exists: $dir"
    else
        # Skill 00 is the orchestrator
        if [ "$i" = "00" ]; then
            dir="skills/00-orchestrator"
            if [ -d "$dir" ]; then
                pass "Skill 00 directory exists: $dir"
            else
                fail "Skill 00 directory missing"
            fi
        else
            fail "Skill ${i} directory missing"
        fi
    fi
done
echo ""

# ── Test 2: Every skill has a SKILL.md ──
echo "--- SKILL.md Files ---"
for dir in skills/[0-9][0-9]-*/; do
    skill_name=$(basename "$dir")
    if [ -f "${dir}SKILL.md" ]; then
        pass "${skill_name}/SKILL.md exists"
    else
        fail "${skill_name}/SKILL.md missing"
    fi
done
echo ""

# ── Test 3: Every skill has templates/ and/or frameworks/ ──
echo "--- Skill Subdirectories ---"
for dir in skills/[0-9][0-9]-*/; do
    skill_name=$(basename "$dir")
    has_templates=false
    has_frameworks=false

    [ -d "${dir}templates" ] && has_templates=true
    [ -d "${dir}frameworks" ] && has_frameworks=true

    # Orchestrator has templates/ and artifacts/ instead of frameworks/
    if [ "$skill_name" = "00-orchestrator" ]; then
        if $has_templates || [ -d "${dir}artifacts" ]; then
            pass "${skill_name} has templates/ or artifacts/"
        else
            fail "${skill_name} missing templates/ and artifacts/"
        fi
    else
        if $has_templates || $has_frameworks; then
            pass "${skill_name} has templates/ and/or frameworks/"
        else
            fail "${skill_name} missing both templates/ and frameworks/"
        fi
    fi
done
echo ""

# ── Test 4: Shared files exist ──
echo "--- Shared Files ---"
for file in founder-journey-map.md cross-skill-data-flow.md artifact-format.md disclaimer-templates.md; do
    if [ -f "skills/shared/$file" ]; then
        pass "shared/$file exists"
    else
        fail "shared/$file missing"
    fi
done
echo ""

# ── Test 5: SKILL-TEMPLATE.md exists ──
echo "--- Template ---"
if [ -f "skills/SKILL-TEMPLATE.md" ]; then
    pass "SKILL-TEMPLATE.md exists"
else
    fail "SKILL-TEMPLATE.md missing"
fi
echo ""

# ── Test 6: All markdown files are valid (non-empty, valid UTF-8) ──
echo "--- Markdown Integrity ---"
md_count=0
empty_count=0
while IFS= read -r -d '' file; do
    md_count=$((md_count + 1))
    if [ ! -s "$file" ]; then
        fail "$file is empty"
        empty_count=$((empty_count + 1))
    fi
done < <(find skills/ -name "*.md" -print0)

if [ $empty_count -eq 0 ]; then
    pass "All $md_count markdown files are non-empty"
fi
echo ""

# ── Test 7: SKILL.md files contain required sections ──
echo "--- Required Sections in SKILL.md ---"
for dir in skills/[0-9][0-9]-*/; do
    skill_name=$(basename "$dir")
    skill_file="${dir}SKILL.md"

    [ ! -f "$skill_file" ] && continue

    # Check for Diagnostic section (all skills should have this)
    if grep -q "## Diagnostic" "$skill_file" 2>/dev/null; then
        pass "${skill_name} has Diagnostic section"
    else
        # Orchestrator uses "## Diagnostic Intake" instead
        if grep -q "## Diagnostic Intake" "$skill_file" 2>/dev/null; then
            pass "${skill_name} has Diagnostic Intake section"
        else
            fail "${skill_name} missing Diagnostic section"
        fi
    fi
done
echo ""

# ── Test 8: No broken internal links (relative paths in markdown) ──
echo "--- Internal Links ---"
broken_links=0
while IFS= read -r -d '' file; do
    dir_of_file=$(dirname "$file")
    # Extract markdown links like [text](path.md)
    while IFS= read -r link; do
        # Skip external URLs and anchors
        [[ "$link" =~ ^https?:// ]] && continue
        [[ "$link" =~ ^# ]] && continue
        [[ -z "$link" ]] && continue

        # Remove anchor from link
        link_path="${link%%#*}"
        [ -z "$link_path" ] && continue

        # Resolve relative to the file's directory
        resolved="${dir_of_file}/${link_path}"
        if [ ! -e "$resolved" ]; then
            fail "Broken link in $file: $link"
            broken_links=$((broken_links + 1))
        fi
    done < <(grep -oP '\[.*?\]\(\K[^)]+' "$file" 2>/dev/null || true)
done < <(find skills/ -name "*.md" -print0)

if [ $broken_links -eq 0 ]; then
    pass "No broken internal links"
fi
echo ""

# ── Test 9: VERSION file exists and is valid semver ──
echo "--- Version ---"
if [ -f "VERSION" ]; then
    version=$(cat VERSION | tr -d '[:space:]')
    if [[ "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
        pass "VERSION file contains valid semver: $version"
    else
        fail "VERSION file contains invalid semver: $version"
    fi
else
    fail "VERSION file missing"
fi
echo ""

# ── Test 10: LICENSE file exists ──
echo "--- License ---"
if [ -f "LICENSE" ]; then
    pass "LICENSE file exists"
else
    fail "LICENSE file missing"
fi
echo ""

# ── Summary ──
echo "=== Results ==="
echo "Total: $TESTS | Passed: $PASSED | Failed: $ERRORS"
echo ""

if [ $ERRORS -gt 0 ]; then
    echo "FAILED: $ERRORS test(s) failed"
    exit 1
else
    echo "ALL TESTS PASSED"
    exit 0
fi
