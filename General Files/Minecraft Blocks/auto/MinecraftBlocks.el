(TeX-add-style-hook
 "MinecraftBlocks"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("geocraft-worksheet" "twocolumn")))
   (TeX-run-style-hooks
    "latex2e"
    "geocraft-worksheet"
    "geocraft-worksheet10"
    "supertabular")))

