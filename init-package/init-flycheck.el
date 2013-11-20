(use-package flycheck
  :defer t
  :init
  (use-package flycheck-color-mode-line
    :defer t
    :init
    (add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))
  :config
  (progn
    (dolist (mode '(c
                    elixir
                    json
                    python
                    ruby))
      (add-hook (intern (concat (symbol-name mode) "-mode-hook"))
                'flycheck-mode))

    (setq flycheck-check-syntax-automatically '(save mode-enabled))
    (setq flycheck-standard-error-navigation nil)))

