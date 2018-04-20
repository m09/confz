(require 'latex)
(require 'auctex-latexmk)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-to-list 'LaTeX-verbatim-environments "minted")

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)

(setq TeX-PDF-mode t)

(auctex-latexmk-setup)
(setq auctex-latexmk-inherit-TeX-PDF-mode t)
(setq TeX-command-default "LatexMk")
(provide 'config-auctex)
