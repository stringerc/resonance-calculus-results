# Zenodo Connection Verification Checklist

This document helps verify that the GitHub repository is properly connected to the Zenodo record for Resonance Calculus and Resonance Algebra.

## ✅ Step 1: Verify GitHub Repository References

### Check README.md
- [ ] Open: https://github.com/stringerc/resonance-calculus-results
- [ ] Verify DOI badge appears at top: `[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17543858.svg)]`
- [ ] Verify badge links to: https://zenodo.org/records/17543858
- [ ] Check "Citation & Academic Reference" section includes Zenodo DOI

### Check Citation Files
- [ ] Verify `CITATION.cff` exists and contains DOI: 10.5281/zenodo.17543858
- [ ] Verify `CITATION.md` exists and contains proper citation formats
- [ ] Check `.zenodo.json` exists with related_identifiers pointing to Zenodo

### Check HTML Report
- [ ] Visit: https://stringerc.github.io/resonance-calculus-results/
- [ ] Scroll to footer - verify "Academic Reference" section appears
- [ ] Verify link to Zenodo record is present and clickable
- [ ] Check "Technical View" → "Methodology" → "Academic Reference" section

**Status:** ✅ All GitHub references configured

---

## ✅ Step 2: Verify Zenodo Record Connection

### Visit Zenodo Record
1. Go to: https://zenodo.org/records/17543858
2. Check the following sections:

#### A. Related Identifiers Section
- [ ] Look for "Related identifiers" or "Related works" section
- [ ] Verify if GitHub repository URL is listed:
  - Expected: `https://github.com/stringerc/resonance-calculus-results`
  - Relation type: "IsSupplementedBy" or "IsDocumentedBy"
- [ ] If NOT present, proceed to Step 3 to add it

#### B. External Resources Section
- [ ] Check for "External resources" or "Links" section
- [ ] Verify if GitHub repository appears there
- [ ] If NOT present, proceed to Step 3 to add it

#### C. Files Section
- [ ] Check if any files from GitHub repository are archived
- [ ] Note: This only appears if automatic archiving is enabled

**Current Status:** ⚠️ Needs verification - check Zenodo record manually

---

## ✅ Step 3: Add GitHub Link to Zenodo Record (If Needed)

If the GitHub repository is NOT listed on the Zenodo record:

### Option A: Edit Zenodo Record (Recommended)
1. **Log in to Zenodo:**
   - Go to: https://zenodo.org/login
   - Use your GitHub account to log in

2. **Navigate to Edit Record:**
   - Go to: https://zenodo.org/records/17543858
   - Click "Edit" button (top right, requires record ownership)

3. **Add Related Identifier:**
   - Scroll to "Related identifiers" section
   - Click "Add related identifier"
   - Fill in:
     - **Identifier:** `https://github.com/stringerc/resonance-calculus-results`
     - **Relation type:** Select "IsSupplementedBy" or "IsDocumentedBy"
     - **Scheme:** Select "URL"
   - Click "Save"

4. **Publish Changes:**
   - Review changes
   - Click "Publish" or "Save"

### Option B: Contact Zenodo Support
If you don't have edit access:
- Email: support@zenodo.org
- Request: Add GitHub repository as related identifier
- Provide: DOI 10.5281/zenodo.17543858 and GitHub URL

**Status:** ⚠️ Requires manual action on Zenodo

---

## ✅ Step 4: Enable Automatic Zenodo Archiving (Optional)

To automatically archive GitHub releases to Zenodo:

1. **Link GitHub Account:**
   - Go to: https://zenodo.org/account/settings/github/
   - Click "Authorize application" if not already authorized
   - Grant Zenodo access to your GitHub repositories

2. **Enable Repository:**
   - Click "Sync now" to refresh repository list
   - Find `stringerc/resonance-calculus-results` in the list
   - Toggle the switch to "On" (green/enabled)

3. **Create a Release (Triggers Archiving):**
   - Go to: https://github.com/stringerc/resonance-calculus-results/releases
   - Click "Draft a new release"
   - Create tag: `v1.0.0` (or appropriate version)
   - Add release title and description
   - Click "Publish release"
   - Zenodo will automatically archive and assign a new DOI

4. **Link to Parent Record:**
   - After Zenodo processes the release, edit the new Zenodo record
   - Add related identifier pointing to parent record: 10.5281/zenodo.17543858
   - Relation: "IsSupplementTo"

**Status:** ⚠️ Optional - enables automatic future archiving

---

## ✅ Step 5: Final Verification

### Test Links
- [ ] Click DOI badge on GitHub README → Should open Zenodo record
- [ ] Click Zenodo link in HTML report footer → Should open Zenodo record
- [ ] If GitHub link exists on Zenodo → Should open GitHub repository

### Verify Citation
- [ ] Test citation tools (Zotero, Mendeley) can import from CITATION.cff
- [ ] Verify BibTeX format in CITATION.md is correct
- [ ] Check DOI resolves correctly: https://doi.org/10.5281/zenodo.17543858

### Documentation Check
- [ ] README clearly states connection to Zenodo
- [ ] HTML report includes academic reference
- [ ] All citation files are present and correct

**Status:** ✅ Ready for verification

---

## 📋 Quick Verification Commands

Run these to verify local files:

```bash
# Check citation files exist
ls -la CITATION.* .zenodo.json

# Verify DOI in files
grep -r "10.5281/zenodo.17543858" .

# Check README has badge
grep "zenodo.org/badge" README.md

# Verify HTML report has reference
grep -i "zenodo" docs/index.html
```

---

## 🎯 Success Criteria

Connection is verified when:
1. ✅ GitHub repository references Zenodo (DOI badge, citations, links)
2. ✅ Zenodo record references GitHub (in Related identifiers or External resources)
3. ✅ All links work bidirectionally
4. ✅ Citation files are properly formatted

---

## 📞 Need Help?

- **Zenodo Documentation:** https://help.zenodo.org/
- **GitHub-Zenodo Integration:** https://help.zenodo.org/docs/github/
- **Zenodo Support:** support@zenodo.org

---

**Last Updated:** November 6, 2025  
**Repository:** https://github.com/stringerc/resonance-calculus-results  
**Zenodo Record:** https://zenodo.org/records/17543858

