" Auto load the compat module, so that we don't have to write any weird code
let s:lua_folder = fnamemodify(expand("<sfile>"), ":h:h") . "/lua"
call execute(printf('luafile %s/popup/_compat.lua', s:lua_folder))
