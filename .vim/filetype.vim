if exists("did_load_filetypes_userafter")
  finish
endif
let did_load_filetypes_userafter = 1
augroup filetypedetect
  au BufRead,BufNewFile *.ftl setfiletype ftl
augroup END
