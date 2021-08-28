syntax match myTodo /@T\(ODO\|odo\):/ containedin=zigCommentLine
syntax match myNote /@N\(OTE\|ote\):/ containedin=zigCommentLine

highlight myTodo guifg=Red ctermfg=Red ctermbg=18
highlight myNote guifg=Green ctermfg=Green ctermbg=18

