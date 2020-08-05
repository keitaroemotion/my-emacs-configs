;; vi ... o -> c-a RET
;;
;;
(require 'hl-line)
(setq make-backup-files nil)
(global-font-lock-mode 0)

(add-to-list 'load-path "~/.emacs.d/evil")

(add-to-list 'display-buffer-alist
     '("^\\*shell\\*$" . (display-buffer-same-window)))

;; Enable Evil
(require 'evil)
(evil-mode 1)
(define-key evil-insert-state-map (kbd "C-c") (kbd "<escape>"))
(define-key evil-normal-state-map (kbd "s")   (kbd ":w"))
(define-key evil-normal-state-map (kbd "C-n") (kbd "5j"))
(define-key evil-normal-state-map (kbd "C-p") (kbd "5k"))
(define-key evil-normal-state-map (kbd "Q")   (kbd ":b **/*"))
(define-key evil-normal-state-map (kbd "C-t") 'term)
(define-key evil-normal-state-map (kbd "M-r") 'em)
(defun em()
  (interactive)
  (load-file "$HOME/.emacs"))


;;(set-face-background hl-line-face "gray13")

;; M-x cd ... change the current working directory
;; [in term mode] C-x, k -> kill the buffer
