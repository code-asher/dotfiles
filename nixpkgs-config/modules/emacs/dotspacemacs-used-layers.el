#!/usr/bin/env nix-shell
#! nix-shell -i "emacs --batch -l $HOME/.emacs.d/core/core-load-paths.el -l" -p "import ./spacemacs-bootstrap.nix"

(load (concat spacemacs-core-directory "core-versions.el"))
(require 'core-dumper)
(require 'core-spacemacs)
(setq spacemacs-sync-packages nil)
(spacemacs/init)
(configuration-layer/load)

(princ "# Generated by dotspacemacs-used-layers.el\n")
(princ "ls:\n")
(princ "[\n")
(dolist (layer-symbol configuration-layer--used-layers)
  (princ (concat "  ls." (prin1-to-string (symbol-name layer-symbol)) "\n")))
(princ "]\n")