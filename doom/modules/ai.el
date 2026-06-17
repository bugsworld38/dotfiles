;;; modules/ai.el -*- lexical-binding: t; -*-

(use-package! claude-code
  :after transient
  :config
  ;; (setq claude-code-terminal-backend 'vterm)
  (setq claude-code-display-window-fn
        (lambda (buffer)
          (display-buffer buffer '((display-buffer-in-side-window)
                                   (side . right)
                                   (window-width . 0.5)))))
  (set-popup-rule! "\\*claude:" :ignore t)
  (claude-code-mode)
  (map! :leader "\\" claude-code-command-map))
