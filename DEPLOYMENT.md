# Deployment Instructions

## Quick Deploy to GitHub

### Option 1: Using the Setup Script (Recommended)

```bash
cd resonance-results
./setup-github.sh
```

The script will guide you through:
1. Creating a new GitHub repository (if needed)
2. Adding the remote
3. Pushing all files

### Option 2: Manual Setup

1. **Create a new repository on GitHub:**
   - Go to: https://github.com/new
   - Repository name: `resonance-calculus-results`
   - Description: "Comprehensive performance analysis and results from Resonance Calculus implementation"
   - Set visibility (Public/Private)
   - **Do NOT** initialize with README, .gitignore, or license

2. **Add remote and push:**
   ```bash
   cd resonance-results
   git remote add origin https://github.com/YOUR_USERNAME/resonance-calculus-results.git
   git push -u origin main
   ```

### Option 3: Using GitHub CLI (if installed)

```bash
cd resonance-results
gh repo create resonance-calculus-results --public --description "Comprehensive performance analysis and results from Resonance Calculus implementation" --source=. --remote=origin --push
```

## What Gets Deployed

- ✅ Enhanced interactive HTML report
- ✅ Executive summary and documentation
- ✅ All performance metrics data
- ✅ Complete analysis from 1% and 10% canary stages
- ✅ Long-term stability data (75+ hours)

## After Deployment

Once pushed to GitHub, you can:
- Share the repository URL
- Enable GitHub Pages to host the HTML report
- Share specific files or sections
- Collaborate with team members

## GitHub Pages Setup (Optional)

To host the HTML report on GitHub Pages:

1. Go to repository Settings → Pages
2. Source: Deploy from a branch
3. Branch: `main`
4. Folder: `/reports`
5. Save

The report will be available at:
`https://YOUR_USERNAME.github.io/resonance-calculus-results/reports/resonance-results-enhanced.html`

