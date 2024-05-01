
let s:depth = 0

if &ft == 'html'
  let s:depth = 2
elseif &ft == 'javascript'
  let s:depth = 2
elseif &ft == 'json'
  let s:depth = 2
elseif &ft == 'elm'
  let s:depth = 2
endif

if s:depth != 0
  setlocal expandtab
  let &tabstop = s:depth
  let &shiftwidth = s:depth
endif

