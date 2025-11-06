# Zenodo Integration Setup Guide

This repository is linked to the Zenodo record for **Resonance Calculus and Resonance Algebra** (DOI: [10.5281/zenodo.17543858](https://zenodo.org/records/17543858)).

## Current Status

✅ **Citation files created:**
- `CITATION.cff` - Citation File Format for automatic citation
- `CITATION.md` - Human-readable citation information
- `.zenodo.json` - Zenodo metadata configuration

✅ **References added:**
- README includes Zenodo DOI badge and link
- HTML report includes academic reference in footer
- Technical documentation includes Zenodo reference

## To Enable Automatic Zenodo Archiving

To automatically archive GitHub releases to Zenodo:

1. **Link GitHub to Zenodo:**
   - Go to https://zenodo.org/account/settings/github/
   - Authorize Zenodo to access your GitHub account
   - Click "Sync now" to refresh repositories

2. **Enable This Repository:**
   - Find `resonance-calculus-results` in the list
   - Toggle the switch to "On" to enable Zenodo integration

3. **Create a Release:**
   - Go to GitHub repository → Releases → "Draft a new release"
   - Create a tag (e.g., `v1.0.0`)
   - Add release notes
   - Publish the release

4. **Zenodo Will Automatically:**
   - Archive the release
   - Assign a new DOI
   - Link to the parent record (10.5281/zenodo.17543858)

## Manual Linking

If you prefer to manually link this repository to the existing Zenodo record:

1. Edit the Zenodo record: https://zenodo.org/records/17543858
2. In "Related identifiers" section, add:
   - **Identifier:** `https://github.com/stringerc/resonance-calculus-results`
   - **Relation:** "IsSupplementedBy" or "IsDocumentedBy"
   - **Scheme:** URL

## Citation

When citing this work, use:

**Zenodo Record (Theory):**
- DOI: 10.5281/zenodo.17543858
- Title: Resonance Calculus and Resonance Algebra

**This Repository (Empirical Results):**
- GitHub: https://github.com/stringerc/resonance-calculus-results
- Provides: Performance validation and production deployment results

See `CITATION.md` for detailed citation formats.

