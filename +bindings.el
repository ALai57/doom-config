;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-


;; Remove keymap so it can be rebound
(map! :leader
      ":" nil)

;; Bind Spacemacs keybinding for M-x, SPC SPC
(map! :leader
      (:when (featurep! :completion ivy)
        :desc "M-x"                     :n "SPC" #'counsel-M-x))

;; Keybindings from spacemacs that I'd like to have back
(map! :leader
      :desc "counsel-projectile-rg" :n "s g p" #'counsel-projectile-rg
      :desc "magit status" :n "g s" #'magit
      :desc "lisp-state" :n "k" #'lisp-state-toggle-lisp-state)

;; Cider
(map! :after clojure-mode
      :map clojure-mode-map
      :n ", e n" #'cider-eval-sexp-at-point)


(define-key evil-lisp-state-map "c" 'sp-convolute-sexp)
(define-key evil-lisp-state-map "dx" 'sp-kill-sexp)
(define-key evil-lisp-state-map "e" 'sp-splice-sexp-killing-forward)
(define-key evil-lisp-state-map "E" 'sp-splice-sexp-killing-backward)
(define-key evil-lisp-state-map "r" 'sp-raise-sexp)
(define-key evil-lisp-state-map "s" 'sp-forward-slurp-sexp)
(define-key evil-lisp-state-map "S" 'sp-backward-slurp-sexp)
(define-key evil-lisp-state-map "t" 'sp-transpose-sexp)
(define-key evil-lisp-state-map "C-r" 'redo)
(define-key evil-lisp-state-map "u" 'undo)
(define-key evil-lisp-state-map "w" 'lisp-state-wrap)
(define-key evil-lisp-state-map "W" 'sp-unwrap-sexp)
