(TeX-add-style-hook
 "MinecraftBlocks"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("geocraft-worksheet-multipage" "twocolumn")))
   (TeX-run-style-hooks
    "latex2e"
    "geocraft-worksheet-multipage"
    "geocraft-worksheet-multipage10"
    "supertabular")))

