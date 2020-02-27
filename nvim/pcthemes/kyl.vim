let g:PaperColor_Theme_kyl = {
      \   'maintainer'  : 'katy lavallee <katylava@gmail.com>',
      \   'source' : 'https://github.com/katylava/dotkyl/tree/master/nvim/pcthemes/kyl.vim',
      \   'description' : 'tweaks to default papercolor theme',
      \ }

let g:PaperColor_Theme_kyl.dark = {
      \     'TEST_256_COLOR_CONSISTENCY' : 1,
      \     'palette' : {
      \       'FunctionParameters' : ['#AAC4FF', '234'],
      \       'color00' : ['#1c1c1c', '234'],
      \       'color01' : ['#af005f', '125'],
      \       'color02' : ['#5faf00', '70'],
      \       'color03' : ['#99B66D', '179'],
      \       'color04' : ['#5fafd7', '74'],
      \       'color05' : ['#808080', '244'],
      \       'color06' : ['#d7875f', '173'],
      \       'color07' : ['#B1BEB7', '252'],
      \       'color08' : ['#585858', '240'],
      \       'color09' : ['#5faf5f', '71'],
      \       'color10' : ['#D6CB23', '148'],
      \       'color11' : ['#af87d7', '140'],
      \       'color12' : ['#ffaf00', '214'],
      \       'color13' : ['#ff5faf', '205'],
      \       'color14' : ['#00afaf', '37'],
      \       'color15' : ['#5f8787', '66'],
      \       'color16' : ['#5fafd7', '74'],
      \       'color17' : ['#D68D24', '178'],
      \       'cursor_fg' : ['#1c1c1c', '234'],
      \       'cursor_bg' : ['#c6c6c6', '251'],
      \       'cursorline' : ['#303030', '236'],
      \       'cursorcolumn' : ['#303030', '236'],
      \       'cursorlinenr_fg' : ['#ffff00', '226'],
      \       'cursorlinenr_bg' : ['#1c1c1c', '234'],
      \       'popupmenu_fg' : ['#c6c6c6', '251'],
      \       'popupmenu_bg' : ['#303030', '236'],
      \       'search_fg' : ['#000000', '16'],
      \       'search_bg' : ['#00875f', '29'],
      \       'linenumber_fg' : ['#585858', '240'],
      \       'linenumber_bg' : ['#1c1c1c', '234'],
      \       'vertsplit_fg' : ['#5f8787', '66'],
      \       'vertsplit_bg' : ['#1c1c1c', '234'],
      \       'statusline_active_fg' : ['#1c1c1c', '234'],
      \       'statusline_active_bg' : ['#5f8787', '66'],
      \       'statusline_inactive_fg' : ['#bcbcbc', '250'],
      \       'statusline_inactive_bg' : ['#3a3a3a', '237'],
      \       'todo_fg' : ['#ff8700', '208'],
      \       'todo_bg' : ['#1c1c1c', '234'],
      \       'error_fg' : ['#af005f', '125'],
      \       'error_bg' : ['#5f0000', '52'],
      \       'matchparen_bg' : ['#4e4e4e', '239'],
      \       'matchparen_fg' : ['#c6c6c6', '251'],
      \       'visual_fg' : ['#000000', '16'],
      \       'visual_bg' : ['#8787af', '103'],
      \       'folded_fg' : ['#d787ff', '177'],
      \       'folded_bg' : ['#5f005f', '53'],
      \       'wildmenu_fg': ['#1c1c1c', '234'],
      \       'wildmenu_bg': ['#afd700', '148'],
      \       'tabline_bg':          ['#262626', '235'],
      \       'tabline_active_fg':   ['#121212', '233'],
      \       'tabline_active_bg':   ['#00afaf', '37'],
      \       'tabline_inactive_fg': ['#bcbcbc', '250'],
      \       'tabline_inactive_bg': ['#585858', '240'],
      \       'spellbad':   ['#5f0000', '52'],
      \       'spellcap':   ['#5f005f', '53'],
      \       'spellrare':  ['#005f00', '22'],
      \       'spelllocal': ['#00005f', '17'],
      \       'diffadd_fg':    ['#87d700', '112'],
      \       'diffadd_bg':    ['#005f00', '22'],
      \       'diffdelete_fg': ['#af005f', '125'],
      \       'diffdelete_bg': ['#5f0000', '52'],
      \       'difftext_fg':   ['#5fffff', '87'],
      \       'difftext_bg':   ['#008787', '30'],
      \       'diffchange_fg': ['#d0d0d0', '252'],
      \       'diffchange_bg': ['#005f5f', '23']
      \     }
      \   }

let g:PaperColor_Theme_kyl.light = {
      \     'TEST_256_COLOR_CONSISTENCY' : 1,
      \     'palette' : {
      \       'color00' : ['#eeeeee', '255'],
      \       'color01' : ['#af0000', '124'],
      \       'color02' : ['#008700', '28'],
      \       'color03' : ['#5f8700', '64'],
      \       'color04' : ['#0087af', '31'],
      \       'color05' : ['#878787', '102'],
      \       'color06' : ['#005f87', '24'],
      \       'color07' : ['#444444', '238'],
      \       'color08' : ['#bcbcbc', '250'],
      \       'color09' : ['#d70000', '160'],
      \       'color10' : ['#d70087', '162'],
      \       'color11' : ['#8700af', '91'],
      \       'color12' : ['#d75f00', '166'],
      \       'color13' : ['#d75f00', '166'],
      \       'color14' : ['#005faf', '25'],
      \       'color15' : ['#005f87', '24'],
      \       'color16' : ['#0087af', '31'],
      \       'color17' : ['#008700', '28'],
      \       'cursor_fg' : ['#eeeeee', '255'],
      \       'cursor_bg' : ['#005f87', '24'],
      \       'cursorline' : ['#e4e4e4', '254'],
      \       'cursorcolumn' : ['#e4e4e4', '254'],
      \       'cursorlinenr_fg' : ['#af5f00', '130'],
      \       'cursorlinenr_bg' : ['#eeeeee', '255'],
      \       'popupmenu_fg' : ['#444444', '238'],
      \       'popupmenu_bg' : ['#d0d0d0', '252'],
      \       'search_fg' : ['#444444', '238'],
      \       'search_bg' : ['#ffff5f', '227'],
      \       'linenumber_fg' : ['#b2b2b2', '249'],
      \       'linenumber_bg' : ['#eeeeee', '255'],
      \       'vertsplit_fg' : ['#005f87', '24'],
      \       'vertsplit_bg' : ['#eeeeee', '255'],
      \       'statusline_active_fg' : ['#e4e4e4', '254'],
      \       'statusline_active_bg' : ['#005f87', '24'],
      \       'statusline_inactive_fg' : ['#444444', '238'],
      \       'statusline_inactive_bg' : ['#d0d0d0', '252'],
      \       'todo_fg' : ['#00af5f', '35'],
      \       'todo_bg' : ['#eeeeee', '255'],
      \       'error_fg' : ['#af0000', '124'],
      \       'error_bg' : ['#ffd7ff', '225'],
      \       'matchparen_bg' : ['#c6c6c6', '251'],
      \       'matchparen_fg' : ['#005f87', '24'],
      \       'visual_fg' : ['#eeeeee', '255'],
      \       'visual_bg' : ['#0087af', '31'],
      \       'folded_fg' : ['#0087af', '31'],
      \       'folded_bg' : ['#afd7ff', '153'],
      \       'wildmenu_fg': ['#444444', '238'],
      \       'wildmenu_bg': ['#ffff00', '226'],
      \       'spellbad':   ['#ffafd7', '218'],
      \       'spellcap':   ['#ffffaf', '229'],
      \       'spellrare':  ['#afff87', '156'],
      \       'spelllocal': ['#d7d7ff', '189'],
      \       'diffadd_fg':    ['#008700', '28'],
      \       'diffadd_bg':    ['#afffaf', '157'],
      \       'diffdelete_fg': ['#af0000', '124'],
      \       'diffdelete_bg': ['#ffd7ff', '225'],
      \       'difftext_fg':   ['#0087af', '31'],
      \       'difftext_bg':   ['#ffffd7', '230'],
      \       'diffchange_fg': ['#444444', '238'],
      \       'diffchange_bg': ['#ffd787', '222'],
      \       'tabline_bg':          ['#005f87', '24'],
      \       'tabline_active_fg':   ['#444444', '238'],
      \       'tabline_active_bg':   ['#e4e4e4', '254'],
      \       'tabline_inactive_fg': ['#eeeeee', '255'],
      \       'tabline_inactive_bg': ['#0087af', '31'],
      \       'buftabline_bg':          ['#005f87', '24'],
      \       'buftabline_current_fg':  ['#444444', '238'],
      \       'buftabline_current_bg':  ['#e4e4e4', '254'],
      \       'buftabline_active_fg': ['#eeeeee', '255'],
      \       'buftabline_active_bg': ['#005faf', '25'],
      \       'buftabline_inactive_fg': ['#eeeeee', '255'],
      \       'buftabline_inactive_bg': ['#0087af', '31']
      \     }
      \   }


let g:PaperColor_Theme_Options = {
      \   'theme': {
      \     'kyl': {
      \       'allow_bold': 1,
      \       'allow_italic': 1,
      \       'transparent_background': 1
      \     },
      \     'default.dark': {
      \       'allow_bold': 1,
      \       'allow_italic': 1,
      \       'transparent_background': 1
      \     },
      \     'default.light': {
      \       'allow_bold': 1,
      \       'allow_italic': 1,
      \       'transparent_background': 0
      \     }
      \   },
      \   'language': {
      \     'python': {
      \       'highlight_builtins' : 1
      \     }
      \   }
      \ }

let g:PaperColor_Theme_Options.theme['default.dark'].override = g:PaperColor_Theme_kyl.dark.palette
let g:PaperColor_Theme_Options.theme['default.light'].override = g:PaperColor_Theme_kyl.light.palette
