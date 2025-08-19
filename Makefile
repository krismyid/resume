# Makefile for LaTeX Resume
# Usage: make resume

.PHONY: all clean resume pdf

# Default target
all: resume

# Compile resume to PDF
resume: resume.pdf

# Compile LaTeX to PDF
resume.pdf: resume.tex
	@echo "Compiling LaTeX document..."
	pdflatex -interaction=nonstopmode resume.tex
	pdflatex -interaction=nonstopmode resume.tex  # Run twice for proper formatting
	@echo "Resume compiled successfully!"

# Clean up auxiliary files
clean:
	@echo "Cleaning up auxiliary files..."
	rm -f *.aux *.log *.out *.toc *.fdb_latexmk *.fls *.synctex.gz
	@echo "Cleanup complete!"

# Clean everything including PDF
cleanall: clean
	@echo "Removing PDF file..."
	rm -f *.pdf
	@echo "All files removed!"

# Install required packages (Ubuntu/Debian)
install-deps:
	@echo "Installing required LaTeX packages..."
	sudo apt-get update
	sudo apt-get install -y texlive-full texlive-fonts-extra texlive-latex-extra
	@echo "LaTeX packages installed!"

# Install required packages (Arch Linux)
install-deps-arch:
	@echo "Installing required LaTeX packages..."
	sudo pacman -S texlive-most
	@echo "LaTeX packages installed!"

# Install required packages (macOS with Homebrew)
install-deps-mac:
	@echo "Installing required LaTeX packages..."
	brew install --cask mactex
	@echo "LaTeX packages installed!"

# Help
help:
	@echo "Available targets:"
	@echo "  resume     - Compile resume.tex to PDF"
	@echo "  clean      - Remove auxiliary LaTeX files"
	@echo "  cleanall   - Remove all generated files including PDF"
	@echo "  install-deps      - Install LaTeX packages (Ubuntu/Debian)"
	@echo "  install-deps-arch - Install LaTeX packages (Arch Linux)"
	@echo "  install-deps-mac   - Install LaTeX packages (macOS)"
	@echo "  help       - Show this help message" 