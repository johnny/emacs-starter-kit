;; This is needed for Erlang mode setup
(setq erlang-root-dir "/usr/lib/erlang")
(setq load-path (cons "/usr/lib/erlang/lib/tools-2.6.6.3/emacs" load-path))
(setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
(require 'erlang-start)

;; This is needed for Distel setup
(add-to-list 'load-path "~/.emacs.d/custom/plugins/distel/elisp")

(require 'distel)
(distel-setup)

(provide 'custom-erlang)
