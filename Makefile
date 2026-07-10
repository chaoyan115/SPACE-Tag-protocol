MASTER   := protocol.md
DOCX_OUT := SPACE-Tag-protocol.docx
SHELL    := /bin/bash
PANDOC   := source /etc/profile.d/modules.sh && module load pandoc && pandoc

.PHONY: help push docx all

help:
	@echo "Targets:"
	@echo "  make push   — commit all changes and push to GitHub"
	@echo "  make docx   — convert $(MASTER) → $(DOCX_OUT)"
	@echo "  make all    — push then build docx"

push:
	git add -A
	git commit -m "update protocol $(shell date +%Y-%m-%d)" || echo "nothing to commit"
	git push

docx: $(MASTER)
	$(PANDOC) $(MASTER) \
		--from markdown \
		--to docx \
		--output $(DOCX_OUT) \
		--standalone \
		$(if $(wildcard reference.docx),--reference-doc=reference.docx,) \
		--table-of-contents \
		--toc-depth=3
	@echo "Written: $(DOCX_OUT)"

all: push docx
