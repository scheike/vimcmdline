
function StataSourceLines(lines)
    call writefile(a:lines, g:cmdline_tmp_dir . "/lines.do")
    call VimCmdLineSendCmd('do ' . g:cmdline_tmp_dir . '/lines.do')
endfunction

let b:cmdline_nl = "\r\n"
let b:cmdline_app = "stata"
let b:cmdline_quit_cmd = "exit"
let b:cmdline_source_fun = function("StataSourceLines")
let b:cmdline_send_empty = 0

nmap <buffer><silent> <LocalLeader>s :call VimCmdLineStartApp()<CR>

exe 'autocmd VimLeave * call delete(g:cmdline_tmp_dir . "/lines.do")'
