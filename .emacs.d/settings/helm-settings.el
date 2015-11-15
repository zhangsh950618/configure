(require 'helm)
(require 'helm-descbinds)

(fset 'describe-bindings 'helm-descbinds)

(global-set-key (kbd "C-c h") 'helm-mini)

(provide 'helm-settings)
