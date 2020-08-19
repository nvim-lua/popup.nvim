" Auto load the compat module, so that we don't have to write any weird code
let s:lua_folder = fnamemodify(expand("<sfile>"), ":h:h") . "/lua"
call execute(printf('luafile %s/popup/_compat.lua', s:lua_folder))

function! popup#close_win(win_id, force) abort
  try
    call nvim_win_close(a:win_id, a:force)
  catch
  endtry
endfunction

function! popup#close_related_win(parent_win_id, child_win_id) abort
  call popup#close_win(a:parent_win_id, v:true)
  call popup#close_win(a:child_win_id, v:true)
endfunction
