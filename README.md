# Professional LaTeX Resume

A professional, ATS-compliant LaTeX resume template optimized for DevOps Engineers and Site Reliability Engineers, featuring QR codes for easy credential verification and modern cloud-focused skills.

## Features

- **ATS Compliant**: Designed to pass through Applicant Tracking Systems
- **Professional Layout**: Clean, modern design with proper spacing and typography
- **QR Code Integration**: Automatic QR codes for certification verification
- **Cloud-Focused Skills**: DevOps/SRE relevant technical skills and experience
- **Quantifiable Achievements**: Impact-driven bullet points with measurable results
- **Easy Customization**: Simple LaTeX structure for easy modifications
- **Cross-platform**: Works on Linux, macOS, and Windows

## Quick Start

### 1. Install LaTeX Dependencies

**Ubuntu/Debian:**
```bash
make install-deps
```

**Arch Linux:**
```bash
make install-deps-arch
```

**macOS:**
```bash
make install-deps-mac
```

### 2. Compile Resume

```bash
make resume
```

This will generate `resume.pdf` in the current directory.

### 3. Clean Up (Optional)

```bash
make clean      # Remove auxiliary files
make cleanall   # Remove all generated files including PDF
```

## GitHub Actions (Automated Build & Release)

This repository includes a GitHub Actions workflow that automatically:

- **Builds** your LaTeX resume to PDF on every push to main
- **Creates releases** with versioned tags
- **Uploads** both the PDF and source files to each release
- **Triggers** when you modify `resume.tex` or the workflow file
- **Generates QR codes** for certification verification
- **Maintains ATS compliance** with clean formatting

### How it works:

1. **Automatic Triggering**: Workflow runs on every push to the `main` branch
2. **LaTeX Compilation**: Uses the `xu-cheng/latex-action@v3` action for reliable PDF generation
3. **Release Creation**: Automatically creates GitHub releases with versioned tags
4. **Asset Upload**: Uploads both the compiled PDF and source `.tex` file

### Manual Triggering:

You can also manually trigger the workflow from the GitHub Actions tab in your repository.

## Manual Compilation

If you prefer to compile manually:

```bash
pdflatex resume.tex
pdflatex resume.tex  # Run twice for proper formatting
```

## File Structure

- `resume.tex` - Main LaTeX source file
- `resume.pdf` - Generated PDF (after compilation)
- `Makefile` - Build automation
- `.github/workflows/latex-resume.yml` - GitHub Actions workflow
- `README.md` - This file

## Latest Improvements

### Recent Updates (Latest Version):
- **QR Code Integration**: Automatic QR codes for all certifications
- **Cloud-Focused Skills**: Enhanced DevOps/SRE relevant technical skills
- **Quantifiable Achievements**: Impact-driven bullet points with measurable results
- **Professional Formatting**: Clean, consistent black text throughout
- **Experience Reorganization**: Prioritized DevOps/SRE relevant experience
- **Enhanced Security Skills**: Added cloud security, container security, and IAM expertise
- **Modern Cloud Services**: Specific AWS, Azure, and GCP service knowledge

## Customization

### Modifying Content

Edit `resume.tex` to update:
- Personal information
- Work experience
- Skills
- Education
- Certifications
- QR code URLs (customize certification verification links)

### Styling Changes

The resume uses a clean, professional theme with:
- **Consistent black text** throughout for maximum readability
- **Professional fonts** and optimal spacing
- **Icon integration** using FontAwesome
- **QR code integration** for certification verification
- **Clean, modern layout** optimized for ATS systems

### Adding Sections

To add new sections, use the `\section{}` command:

```latex
\section{New Section}
Content goes here...
```

### QR Code Integration

The resume automatically generates QR codes for certifications:

```latex
\blackqr{https://your-certification-url.com}
```

This creates a 2cm QR code that recruiters can scan from both digital and printed versions.

## ATS Optimization Features

This resume is designed to be ATS-friendly:

- **Simple Formatting**: No complex layouts that confuse ATS systems
- **Standard Fonts**: Uses system fonts for maximum compatibility
- **Keyword Optimization**: Technical skills and keywords are clearly listed
- **Clean Structure**: Logical section organization with DevOps/SRE focus
- **No Graphics**: Text-only format for maximum compatibility
- **QR Code Integration**: Professional credential verification without ATS interference
- **Cloud-Focused Skills**: Relevant keywords for modern DevOps positions
- **Quantifiable Achievements**: Impact-driven language that ATS systems recognize

## Troubleshooting

### Common Issues

1. **Missing LaTeX packages**: Run `make install-deps` for your system
2. **Compilation errors**: Check LaTeX syntax and ensure all packages are installed
3. **Font issues**: The template uses standard fonts, but ensure LaTeX is properly installed

### Getting Help

- Check LaTeX documentation: https://www.latex-project.org/
- FontAwesome icons: https://fontawesome.com/icons
- LaTeX community: https://tex.stackexchange.com/

## License

This template is provided as-is for personal and professional use.

## Technical Skills Overview

The resume includes comprehensive DevOps/SRE skills:

### **Cloud & DevOps:**
- AWS (EC2, ECS, Lambda, CloudFormation, IAM, VPC)
- Azure (AKS, Functions, App Service)
- GCP, Kubernetes, Docker, Terraform, Ansible

### **CI/CD & Automation:**
- Jenkins, GitLab CI/CD, Azure DevOps, GitHub Actions
- Python scripting for automation, Infrastructure as Code

### **Security & Monitoring:**
- Container Security, Cloud Security, IAM, Network Security
- Prometheus, Grafana, ELK Stack, CloudWatch, Azure Monitor

### **Infrastructure:**
- Linux/Unix Administration, High Availability, Load Balancing
- VPC, Security Groups, Network ACLs, VPN, CDN

## Contributing

Feel free to submit improvements or report issues. The goal is to maintain a professional, ATS-compliant resume template optimized for DevOps Engineers and Site Reliability Engineers. 