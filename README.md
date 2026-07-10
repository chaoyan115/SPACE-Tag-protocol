# SPACE-Tag Protocol

Spatial CUT&Tag protocol for chromatin profiling on Visium / Visium-HD.

The full protocol is in [protocol.md](protocol.md).

## Editing workflow

1. Edit `protocol.md` on the cluster (nano, vim, or VSCode Remote)
2. Run `make push` to commit and sync to GitHub
3. Run `make docx` to generate a print-ready Word file

```bash
cd /gpfs/commons/home/cyan/data/7_space_tag_hd/5_wiki/SPACE-Tag-protocol

make push   # git add -A, commit with today's date, git push
make docx   # pandoc protocol.md -> SPACE-Tag-protocol.docx
make all    # push then docx in one step
```

## First-time setup

Check that pandoc is available:

```bash
pandoc --version
# if missing:
/gpfs/commons/home/cyan/.local/bin/micromamba install -n base -c conda-forge pandoc -y
```

## Optional: custom Word styles

Place a `reference.docx` (Word file with your preferred styles) in this folder.
`make docx` will pick it up automatically as a formatting template.
