# 03apr12abu
# (c) Software Lab. Alexander Burger

(if (opt)
   (let "Lst" (chop @)
      (if (= "-" (car "Lst"))
         (let "Pre" (pop '"Lst")
            (when (member (car "Lst") '("\"" "'"))
               (setq "Pre" (pop '"Lst")) )
            (let "Str" (pack "Lst")
               (for "Sym" (all)
                  (and
                     (pre? "Str" "Sym")
                     (getd "Sym")
                     (prinl "Pre" "Sym" (and (= "-" "Pre") " ")) ) ) ) )
         (let ("Path" (rot (split "Lst" "/"))  "Str" (pack (car "Path")))
            (setq "Path" (and (cdr "Path") (pack (glue "/" @) "/")))
            (for "Sym" (dir "Path" T)
               (when (pre? "Str" "Sym")
                  (prinl "Path"
                     (replace (chop "Sym") " " "\\ ")
                     (if (=T (car (info (pack "Path" "Sym"))))
                        "/"
                        " " ) ) ) ) ) ) )
   (prinl '+) )

# vi:et:ts=3:sw=3
