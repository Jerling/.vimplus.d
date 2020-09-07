" General
set scrolloff=8
set bg=dark
set cursorline
set cursorcolumn
highlight CursorLine cterm=none ctermbg=236
highlight CursorColumn cterm=none ctermbg=236
let s:rootmakers = ['.project', '.git', '.hg', '.svn', '.root', '.gitignore']

" vim-lsp
let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
let g:lsp_diagnostics_enabled = 1
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': ''} " icons require GUI
let g:lsp_signs_hint = {'text': '➜'} "
let g:lsp_highlight_references_enabled = 1
" Register ccls C++ lanuage server.
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': {
      \     'cache': {'directory': '/tmp/ccls/cache' },
      \     'highlight': { 'lsRanges' : v:true },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc'],
      \ })
endif

" vim-floaterm 
let g:floaterm_rootmarkers = s:rootmakers
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = s:rootmakers
let g:asynctasks_extra_config = [
    \ '~/.vimplus.d/tasks/tasks.ini',
    \ ]

" any-jump
let g:any_jump_ignored_files = ['*.tmp', '*.temp', 'tags']

" vim-clap
let s:user_custom_config = expand($HOME . '/.vimplus.d/config.vim')
let s:user_custom_keymap = expand($HOME . '/.vimplus.d/keymap.vim')
let s:user_plugins = expand($HOME . '/.vimplus.d/.vimrc.custom.plugins')
let s:user_zshrc = expand($HOME . '/.zshrc')
let s:user_tmux_conf = expand($HOME . '/.tmux.conf')
let s:user_task = expand($HOME . '/.vimplus.d/tasks/tasks.ini')
let g:clap_theme = 'material_design_dark'
let g:clap_current_selection_sign= { 'text': '➤', 'texthl': "ClapCurrentSelectionSign", "linehl": "ClapCurrentSelection"}
let g:clap_layout = { 'relative': 'editor' }
let g:clap_enable_icon = 1
let g:clap_search_box_border_style = 'curve'
let g:clap_provider_grep_enable_icon = 1
let g:clap_prompt_format = '%spinner%%forerunner_status% %provider_id%: '
let g:clap_provider_personalconf = {
      \ 'source': [s:user_custom_config, s:user_custom_keymap,s:user_plugins,s:user_zshrc,s:user_tmux_conf,s:user_task],
      \ 'sink': 'e',
      \ }
nnoremap <silent> <Leader>oc :<C-u>Clap personalconf<CR>

" completor
let g:completor_auto_trigger = 0
