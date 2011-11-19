if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
  set guioptions-=T
  set guifont=Menlo:h14
end
