# Deep Learning Handbook - Makefile

# Compiler
LATEX = xelatex
BIBTEX = bibtex

# Flags
LATEX_FLAGS = -interaction=nonstopmode

# Target file
TARGET = main
TEX_FILE = $(TARGET).tex
PDF_FILE = $(TARGET).pdf
AUX_FILE = $(TARGET).aux

# Build output
.PHONY: all clean build

all: build

build:
	@echo "=================================================="
	@echo "  Deep Learning Handbook - Build Script"
	@echo "=================================================="
	@echo "[1/4] Cleaning previous build artifacts..."
	@$(MAKE) clean > /dev/null
	@echo "[2/4] Running first XeLaTeX pass (scanning structure)..."
	@$(LATEX) $(LATEX_FLAGS) $(TEX_FILE) > /dev/null || (echo "[ERROR] XeLaTeX first pass failed." && exit 1)
	@echo "[3/4] Running BibTeX pass (generating references)..."
	@if [ -f "$(AUX_FILE)" ]; then \
		$(BIBTEX) $(TARGET) > /dev/null; \
	else \
		echo "      No $(AUX_FILE) found, skipping BibTeX."; \
	fi
	@echo "[4/4] Running second XeLaTeX pass (building TOC and Links)..."
	@$(LATEX) $(LATEX_FLAGS) $(TEX_FILE) > /dev/null || (echo "[ERROR] XeLaTeX second pass failed." && exit 1)
	@echo "[5/5] Final cleanup..."
	@$(MAKE) clean > /dev/null
	@echo "=================================================="
	@echo "  BUILD SUCCESS! The file $(PDF_FILE) is ready."
	@echo "=================================================="

clean:
	@echo "Cleaning auxiliary files..."
	@rm -f *.aux *.log *.out *.toc *.bbl *.blg *.fls *.fdb_latexmk *.synctex.gz
	@rm -f chapters/*.aux chapters/*.log
	@echo "Clean complete."