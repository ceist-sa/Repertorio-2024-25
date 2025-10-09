#!/usr/bin/env python3

# this was done entirely by GPT and honestly has quite a bit of boilerplate, but hey, it works

import argparse
import os
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

def which(exe):
    from shutil import which as _which
    return _which(exe)

def ensure_pdflatex_on_path():
    # Try to help macOS BasicTeX/MacTeX users
    if which("pdflatex"):
        return
    texbin = "/Library/TeX/texbin"
    if os.path.isdir(texbin):
        os.environ["PATH"] = texbin + os.pathsep + os.environ.get("PATH", "")
    if not which("pdflatex"):
        print(
            "Error: 'pdflatex' not found on PATH.\n"
            "On macOS, install BasicTeX or MacTeX, then ensure /Library/TeX/texbin is on PATH.\n"
            "Example:\n"
            '  brew install --cask basictex\n'
            '  echo \'export PATH="/Library/TeX/texbin:$PATH"\' >> ~/.zshrc && source ~/.zshrc\n'
            "Then re-run this script.",
            file=sys.stderr,
        )
        sys.exit(1)

TEMPLATE = r"""
\documentclass{{article}}
% Declare the ORIGINAL page size of the input PDF (B4):
\usepackage[paperwidth={paper_w}mm,paperheight={paper_h}mm,margin=0mm]{{geometry}}

% Place the B4 content centered on A3 stock with crop marks:
\usepackage[a3,cam,center{crop_extra},noinfo]{{crop}}
\usepackage{{pdfpages}}
\pagestyle{{empty}}

\begin{{document}}
% Include all pages, unscaled (exact B4 on A3)
\includepdf[pages=-{frame_opt}]{{input.pdf}}
\end{{document}}
""".lstrip()

def run_pdflatex(texfile, workdir):
    # Two runs; capture output but show terse progress.
    for i in range(2):
        proc = subprocess.run(
            ["pdflatex", "-interaction=nonstopmode", texfile.name],
            cwd=workdir,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
        )
        if proc.returncode != 0:
            # Surface a small, helpful snippet from the log:
            print(proc.stdout[-2000:], file=sys.stderr)
            raise RuntimeError("pdflatex failed. See output above.")
    return Path(workdir) / (texfile.stem + ".pdf")

def main():
    p = argparse.ArgumentParser(
        description="Wrap a B4 PDF onto A3 with crop marks using TeX (pdfpages + crop)."
    )
    p.add_argument("input_pdf", help="Path to the B4 PDF file")
    p.add_argument("-o", "--output", default=None,
                   help="Output PDF path (default: <input>_A3_with_crops.pdf)")
    g = p.add_mutually_exclusive_group()
    g.add_argument("--iso-b4", action="store_true", help="Use ISO B4 (250 x 353 mm) [default]")
    g.add_argument("--jis-b4", action="store_true", help="Use JIS B4 (257 x 364 mm)")
    p.add_argument("--frame", action="store_true",
                   help="Draw a thin frame around the B4 content (useful for checking trim)")
    p.add_argument("--offset-mm", type=float, default=0.0,
                   help="Inset crop marks from sheet edge by N mm (e.g., 5). Default 0.")
    args = p.parse_args()

    in_path = Path(args.input_pdf).expanduser().resolve()
    if not in_path.is_file():
        print(f"Input not found: {in_path}", file=sys.stderr)
        sys.exit(1)

    ensure_pdflatex_on_path()

    # Sizes
    if args.jis_b4:
        paper_w, paper_h = 257.0, 364.0
    else:
        # default ISO B4
        paper_w, paper_h = 250.0, 353.0

    crop_extra = ""
    if args.offset_mm and args.offset_mm > 0:
        # crop package option: offset=<len> moves marks inward
        crop_extra = f",offset={args.offset_mm}mm"

    frame_opt = ",frame=true" if args.frame else ""

    # Prepare working dir
    with tempfile.TemporaryDirectory(prefix="b4_to_a3_") as workdir:
        workdir = Path(workdir)

        # Copy input as a simple name TeX can include safely
        input_copy = workdir / "input.pdf"
        shutil.copy2(in_path, input_copy)

        tex_content = TEMPLATE.format(
            paper_w=f"{paper_w:.3f}",
            paper_h=f"{paper_h:.3f}",
            crop_extra=crop_extra,
            frame_opt=frame_opt,
        )

        texfile = workdir / "b4_to_a3_with_crops.tex"
        texfile.write_text(tex_content, encoding="utf-8")

        try:
            out_pdf = run_pdflatex(texfile, workdir)
        except RuntimeError as e:
            print(str(e), file=sys.stderr)
            sys.exit(2)

        # Determine output path
        if args.output:
            out_path = Path(args.output).expanduser().resolve()
        else:
            out_path = in_path.with_name(in_path.stem + "_A3_with_crops.pdf")

        shutil.move(str(out_pdf), str(out_path))
        print(f"Wrote: {out_path}")

if __name__ == "__main__":
    main()
