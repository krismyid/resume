# Christian Windi Utomo - DevOps Engineer Resume

A professional LaTeX resume and motivation letter for DevOps Engineers and Site Reliability Engineers, featuring QR codes for credential verification and modern cloud-focused skills.

## ✨ Features

- **ATS Compliant** - Optimized for Applicant Tracking Systems
- **QR Code Integration** - Automatic verification for certifications
- **Cloud-Focused Skills** - DevOps/SRE relevant expertise
- **Quantifiable Achievements** - Impact-driven bullet points
- **Professional Design** - Clean, modern layout

## 🚀 Quick Start

### Install Dependencies
```bash
# Ubuntu/Debian
make install-deps

# Arch Linux
make install-deps-arch

# macOS
make install-deps-mac
```

### Build Resume
```bash
make resume
```

### Clean Up
```bash
make clean      # Remove auxiliary files
make cleanall   # Remove all generated files
```

## 🔄 Automated Build & Release

GitHub Actions automatically:
- Builds PDF on every push to main
- Creates versioned releases
- Uploads PDF and source files
- Generates QR codes for certifications

## 📁 Files

- `resume.tex` - LaTeX source
- `Christian_Windi_Utomo_DevOps_SRE_Resume.pdf` - Generated Resume PDF (after build)
- `Christian_Windi_Utomo_Motivation_Letter.pdf` - Generated Motivation Letter PDF (after build)
- `Makefile` - Build automation
- `.github/workflows/latex-resume.yml` - GitHub Actions
- `README.md` - This file

## 🎯 About This Resume

**Christian Windi Utomo** is a DevOps Engineer and Site Reliability Engineer with 10+ years of experience in cloud infrastructure, automation, and reliability engineering.

### Key Achievements
- **AWS Certified DevOps Engineer Professional** (2024)
- **50% cloud cost reduction** through optimization strategies
- **300% deployment frequency improvement** with CI/CD pipelines
- **99.9% uptime** for production systems serving millions of users

### Technical Expertise
- **Cloud Platforms**: AWS, Azure, GCP, Kubernetes
- **CI/CD**: Jenkins, GitLab CI/CD, Azure DevOps, GitHub Actions
- **Infrastructure**: Terraform, Ansible, Docker, Linux Administration
- **Monitoring**: Prometheus, Grafana, ELK Stack, Jaeger
- **Security**: Container Security, Cloud Security, IAM, Network Security

## 🔧 Customization

Edit `resume.tex` to update:
- Personal information
- Work experience
- Skills and certifications
- QR code URLs

## 📖 Manual Build

```bash
pdflatex resume.tex
pdflatex resume.tex  # Run twice for proper formatting
```

## 🤝 Contributing

Improvements and feedback welcome! Goal: Maintain a professional, ATS-compliant resume template for DevOps Engineers. 