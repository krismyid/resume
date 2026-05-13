---
name: Christian W. Utomo - DevOps/SRE Resume Repository
description: LaTeX-based professional resume with automated CI/CD pipeline
type: project
tags: latex, resume, devops, sre, ci-cd, github-actions
---

# AGENTS.md - Christian W. Utomo Resume Project

## 🎯 Project Purpose
This is the source repository for Christian W. Utomo's professional DevOps/SRE resume. It contains LaTeX source files for both resume and motivation letter, with fully automated build and release pipeline.

## 📁 Project Structure
| File | Purpose |
|------|---------|
| `resume.tex` | **MAIN RESUME SOURCE** - Primary file to edit for resume content updates |
| `motivation-letter.tex` | Generic motivation letter template |
| `Makefile` | Build automation and dependency installation |
| `.github/workflows/latex-resume.yml` | GitHub Actions CI/CD pipeline |
| `AGENTS.md` | This file - agent documentation |
| `README.md` | Human-readable documentation |

## 🔧 Technology Stack
- **Document**: LaTeX (pdflatex)
- **Icons**: Font Awesome 5
- **QR Codes**: qrcode LaTeX package
- **Automation**: Makefile, GitHub Actions
- **CI/CD**: GitHub Actions with xu-cheng/latex-action

## 🚀 Build System
### Available Commands
```bash
make resume             # Build resume PDF
make clean              # Clean auxiliary files
make cleanall           # Clean all including PDF
make install-deps-mac   # Install dependencies on macOS
make install-deps       # Install dependencies on Ubuntu/Debian
make install-deps-arch  # Install dependencies on Arch Linux
```

## ⚡ CI/CD Pipeline
**Trigger**: Every push to `main` branch with changes to `resume.tex` or workflow files

**Pipeline Actions**:
1.  Compiles both `resume.tex` and `motivation-letter.tex` to PDF
2.  Renames PDFs to final filenames
3.  Creates versioned GitHub release (`resume-vX`)
4.  Attaches PDFs and source files to the release
5.  Generates automated release notes

## 📝 Common Agent Operations
### 1. Update Resume Content
- **Edit `resume.tex`** - This is the only file that needs to be modified for content changes
- Update employment history, certifications, skills, or contact information
- No need to build locally - GitHub Actions will handle PDF generation

### 2. Update Motivation Letter
- Edit `motivation-letter.tex` for generic letter updates
- Will be automatically built and released with resume

### 3. Workflow Modifications
- Edit `.github/workflows/latex-resume.yml` for CI/CD changes
- Use `workflow_dispatch` for manual triggering

## ⚠️ Important Guidelines
1. **Never commit PDF files** - They are built automatically by CI/CD
2. **Only edit source files** - `.tex` files are the source of truth
3. **Use feature branches** - Always create a new branch for updates, then rebase and merge
4. **Do not modify build artifacts** - All generated files are in `.gitignore`
5. **Keep changes focused** - One branch per update (e.g., `update-employment`, `add-certification`)

## 🔍 What Agents Should Know
- This is a "document as code" project with DevOps best practices applied
- Every change is automatically versioned and released
- QR codes in resume link to verifiable certification URLs
- Resume is optimized for ATS (Applicant Tracking Systems)
- The user is a Senior DevOps Engineer / SRE with 10+ years experience

## 🤖 Standard Agent Workflow
1.  Create feature branch: `git checkout -b update-xyz`
2.  Make changes to `.tex` files
3.  Commit with descriptive message
4.  Rebase onto main: `git checkout main && git pull && git checkout update-xyz && git rebase main`
5.  Merge: `git checkout main && git merge update-xyz`
6.  Delete feature branch
7.  Push to origin: `git push origin main`

---
*Last updated: 2026-05-13*
