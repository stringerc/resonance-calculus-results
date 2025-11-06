# Resonance Calculus Performance Results

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17543858.svg)](https://zenodo.org/records/17543858)

This repository contains comprehensive performance analysis and results from the Resonance Calculus implementation.

## 📊 Contents

### Reports (`/reports`)
- **`resonance-results-enhanced.html`** ⭐ - Main interactive report with visualizations
- **`EXECUTIVE_SUMMARY.md`** - One-page executive summary
- **`QUICK_REFERENCE.md`** - Quick reference card
- **`REPORT_GUIDE.md`** - Guide to using the reports
- **`README.md`** - This file

### Data (`/data`)
- **`baseline_metrics.json`** - Baseline performance metrics (before Resonance)
- **`rc_metrics_1pct_final.json`** - Final metrics from 1% canary stage
- **`baseline_metrics_10pct.json`** - Baseline for 10% canary stage
- **`rc_metrics_10pct.json`** - Metrics from 10% canary stage
- **`current_metrics_good.json`** - Current "good" state metrics
- **`current_metrics_bad.json`** - Comparison "bad" state metrics

## 🚀 Quick Start

1. **Open the main report:**
   ```bash
   open reports/resonance-results-enhanced.html
   ```
   Or simply open `reports/resonance-results-enhanced.html` in any web browser.

2. **View the executive summary:**
   ```bash
   cat reports/EXECUTIVE_SUMMARY.md
   ```

## 📈 Key Results

- ✅ **15% faster** response times for slowest requests
- ✅ **75 milliseconds** saved per slow request
- ✅ **75+ hours** of continuous monitoring verified stability
- ✅ **100% systems stable** - all guardrails passed
- ✅ **10% canary** stage completed with identical performance

## 📖 Documentation

See `reports/REPORT_GUIDE.md` for detailed information on:
- How to use each report
- Understanding the metrics
- Tips for presentations
- Customization options

## 📝 Report Features

The enhanced HTML report includes:
- **Executive Summary** - Key metrics at a glance
- **Interactive Charts** - Visual before/after comparisons
- **Dual View System** - Simple and Technical views
- **Long-Term Stability Analysis** - 75+ hours of monitoring data
- **10% Canary Comparison** - Performance validation at higher traffic
- **Time-Series Visualizations** - Stability trends over time

## 🔗 Related

For the full implementation code and additional documentation, see the main repository.

## 📚 Citation & Academic Reference

This repository provides empirical validation and performance results for **Resonance Calculus and Resonance Algebra**.

**Cite this work:**
- **Zenodo DOI:** [10.5281/zenodo.17543858](https://zenodo.org/records/17543858)
- **GitHub Repository:** https://github.com/stringerc/resonance-calculus-results

See [`CITATION.md`](CITATION.md) for detailed citation information in various formats (BibTeX, APA, etc.).

### 🔍 Verification

- ✅ **Local verification:** Run `./verify-zenodo-connection.sh` to check all files
- 📋 **Verification checklist:** See [`VERIFICATION_CHECKLIST.md`](VERIFICATION_CHECKLIST.md)
- 🚀 **Quick guide:** See [`QUICK_VERIFY.md`](QUICK_VERIFY.md) for completing Zenodo connection

---

**Generated:** November 6, 2025  
**Status:** ✅ Complete and Ready for Review  
**Academic Reference:** [Zenodo Record](https://zenodo.org/records/17543858)

