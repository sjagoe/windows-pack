(setq -gnu-bin "C:\\Software\\gnuwin32\\bin")
(setq -git-bin "C:\\Software\\Git\\bin")
(setq -home-bin "C:\\Documents and Settings\\enthought-admin\\bin")
(setq -gnutls-bin "C:\\cygwin\\bin")

(setenv
 "PATH"
 (concat
  -gnu-bin ";"
  -git-bin ";"
  -gnutls-bin ";"
  -home-bin ";"
  (getenv "PATH")))

(setq exec-path
      (cons -gnu-bin
            (cons -git-bin
                  (cons -gnutls-bin
                        (cons -home-bin exec-path)))))
