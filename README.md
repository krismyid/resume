# Professional LaTeX Resume

A professional, ATS-compliant LaTeX resume template optimized for DevOps Engineers and Site Reliability Engineers.

## Features

- **ATS Compliant**: Designed to pass through Applicant Tracking Systems
- **Professional Layout**: Clean, modern design with proper spacing and typography
- **Optimized Content**: Improved wording and bullet points for maximum impact
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

## Customization

### Modifying Content

Edit `resume.tex` to update:
- Personal information
- Work experience
- Skills
- Education
- Certifications

### Styling Changes

The resume uses a clean, professional theme with:
- Primary color: Dark gray (#333333)
- Secondary color: Medium gray (#666666)
- Accent color: Blue (#007BFF)
- Professional fonts and spacing
- Icon integration using FontAwesome

### Adding Sections

To add new sections, use the `\section{}` command:

```latex
\section{New Section}
Content goes here...
```

## ATS Optimization Features

This resume is designed to be ATS-friendly:

- **Simple Formatting**: No complex layouts that confuse ATS systems
- **Standard Fonts**: Uses system fonts for maximum compatibility
- **Keyword Optimization**: Technical skills and keywords are clearly listed
- **Clean Structure**: Logical section organization
- **No Graphics**: Text-only format for maximum compatibility

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

## Contributing

Feel free to submit improvements or report issues. The goal is to maintain a professional, ATS-compliant resume template. 