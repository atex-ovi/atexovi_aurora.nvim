local atexovi_aurora = require("atexovi_aurora.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = atexovi_aurora.purple }, -- int, long, char, etc.
		StorageClass =				{ fg = atexovi_aurora.cyan }, -- static, register, volatile, etc.
		Structure =					{ fg = atexovi_aurora.puple }, -- struct, union, enum, etc.
		Constant =					{ fg = atexovi_aurora.yellow }, -- any constant
		String =					{ fg = atexovi_aurora.green, bg = atexovi_aurora.none, style= 'italic' }, -- Any string
		Character =					{ fg = atexovi_aurora.orange }, -- any character constant: 'c', '\n'
		Number =					{ fg = atexovi_aurora.orange }, -- a number constant: 5
		Boolean =					{ fg = atexovi_aurora.orange }, -- a boolean constant: TRUE, false
		Float =						{ fg = atexovi_aurora.orange }, -- a floating point constant: 2.3e10
		Statement =					{ fg = atexovi_aurora.pink }, -- any statement
		Label =						{ fg = atexovi_aurora.purple }, -- case, default, etc.
		Operator =					{ fg = atexovi_aurora.cyan }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = atexovi_aurora.cyan }, -- try, catch, throw
		PreProc =					{ fg = atexovi_aurora.purple }, -- generic Preprocessor
		Include =					{ fg = atexovi_aurora.blue }, -- preprocessor #include
		Define =					{ fg = atexovi_aurora.pink }, -- preprocessor #define
		Macro =						{ fg = atexovi_aurora.cyan }, -- same as Define
		Typedef =					{ fg = atexovi_aurora.red }, -- A typedef
		PreCondit =					{ fg = atexovi_aurora.cyan }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = atexovi_aurora.red }, -- any special symbol
		SpecialChar =				{ fg = atexovi_aurora.pink }, -- special character in a constant
		Tag =						{ fg = atexovi_aurora.red }, -- you can use CTRL-] on this
		Delimiter =					{ fg = atexovi_aurora.cyan }, -- character that needs attention like , or .
		SpecialComment =			{ fg = atexovi_aurora.gray }, -- special things inside a comment
		Debug =						{ fg = atexovi_aurora.red }, -- debugging statements
		Underlined =				{ fg = atexovi_aurora.link, bg = atexovi_aurora.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = atexovi_aurora.disabled }, -- left blank, hidden
		Error =						{ fg = atexovi_aurora.error, bg = atexovi_aurora.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = atexovi_aurora.yellow, bg = atexovi_aurora.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = atexovi_aurora.link, style = "underline" },
        htmlH1 = { fg = atexovi_aurora.cyan, style = "bold" },
        htmlH2 = { fg = atexovi_aurora.red, style = "bold" },
        htmlH3 = { fg = atexovi_aurora.green, style = "bold" },
        htmlH4 = { fg = atexovi_aurora.yellow, style = "bold" },
        htmlH5 = { fg = atexovi_aurora.purple, style = "bold" },
        markdownH1 = { fg = atexovi_aurora.cyan, style = "bold" },
        markdownH2 = { fg = atexovi_aurora.red, style = "bold" },
        markdownH3 = { fg = atexovi_aurora.green, style = "bold" },
        markdownH1Delimiter = { fg = atexovi_aurora.cyan },
        markdownH2Delimiter = { fg = atexovi_aurora.red },
        markdownH3Delimiter = { fg = atexovi_aurora.green },
	}

	-- Options:

	-- Italic comments
	if vim.g.atexovi_aurora_italic_comments == true then
		syntax.Comment =		{fg = atexovi_aurora.comments, bg = atexovi_aurora.none, style = 'italic'} -- italic comments
	else
		syntax.Comment =		{fg = atexovi_aurora.comments} -- normal comments
	end

	-- Italic Keywords
	if vim.g.atexovi_aurora_italic_keywords == true then
		syntax.Conditional =		{fg = atexovi_aurora.purple, bg = atexovi_aurora.none, style = 'italic'} -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = atexovi_aurora.purple, bg = atexovi_aurora.none, style = 'italic'} -- italic for, do, while, etc.
		syntax.Repeat =				{fg = atexovi_aurora.purple, bg = atexovi_aurora.none, style = 'italic'} -- italic any other keyword
	else
		syntax.Conditional =		{fg = atexovi_aurora.purple} -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{fg = atexovi_aurora.purple} -- normal for, do, while, etc.
		syntax.Repeat =				{fg = atexovi_aurora.purple} -- normal any other keyword
	end

	-- Italic Function names
	if vim.g.atexovi_aurora_italic_functions == true then
		syntax.Function =		{fg = atexovi_aurora.blue, bg = atexovi_aurora.none, style = 'italic'} -- italic funtion names
	else
		syntax.Function =		{fg = atexovi_aurora.blue} -- normal function names
	end

	if vim.g.atexovi_aurora_italic_variables == true then
		Identifier =				{fg = atexovi_aurora.gray, bg = atexovi_aurora.none, style = 'italic'}; -- any variable name
    else
		Identifier =				{fg = atexovi_aurora.gray}; -- any variable name
    end

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = atexovi_aurora.fg, bg = atexovi_aurora.float }, -- normal text and background color
		ColorColumn =			{ fg = atexovi_aurora.none, bg = atexovi_aurora.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = atexovi_aurora.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = atexovi_aurora.cursor, bg = atexovi_aurora.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = atexovi_aurora.cursor, bg = atexovi_aurora.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = atexovi_aurora.blue, bg = atexovi_aurora.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = atexovi_aurora.green, bg = atexovi_aurora.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = atexovi_aurora.orange, bg = atexovi_aurora.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = atexovi_aurora.red, bg = atexovi_aurora.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = atexovi_aurora.yellow, bg = atexovi_aurora.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = atexovi_aurora.disabled },
		ErrorMsg =				{ fg = atexovi_aurora.none },
		Folded =				{ fg = atexovi_aurora.disabled, bg = atexovi_aurora.none, style = 'italic' },
		FoldColumn =			{ fg = atexovi_aurora.blue },
		IncSearch =				{ fg = atexovi_aurora.highlight, bg = atexovi_aurora.white, style = 'reverse' },
		LineNr =				{ fg = atexovi_aurora.line_numbers },
		CursorLineNr =			{ fg = atexovi_aurora.accent },
		MatchParen =			{ fg = atexovi_aurora.yellow, bg = atexovi_aurora.none, style = 'bold' },
		ModeMsg =				{ fg = atexovi_aurora.accent },
		MoreMsg =				{ fg = atexovi_aurora.accent },
		NonText =				{ fg = atexovi_aurora.disabled },
		Pmenu =					{ fg = atexovi_aurora.text, bg = atexovi_aurora.contrast },
		PmenuSel =				{ fg = atexovi_aurora.accent, bg = atexovi_aurora.active },
		PmenuSbar =				{ fg = atexovi_aurora.text, bg = atexovi_aurora.contrast },
		PmenuThumb =			{ fg = atexovi_aurora.fg, bg = atexovi_aurora.accent },
		Question =				{ fg = atexovi_aurora.green },
		QuickFixLine =			{ fg = atexovi_aurora.highlight, bg = atexovi_aurora.white, style = 'reverse' },
		qfLineNr =				{ fg = atexovi_aurora.highlight, bg = atexovi_aurora.white, style = 'reverse' },
		Search =				{ fg = atexovi_aurora.highlight, bg = atexovi_aurora.white, style = 'reverse' },
		SpecialKey =			{ fg = atexovi_aurora.purple },
		SpellBad =				{ fg = atexovi_aurora.red, bg = atexovi_aurora.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = atexovi_aurora.blue, bg = atexovi_aurora.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = atexovi_aurora.cyan, bg = atexovi_aurora.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = atexovi_aurora.purple, bg = atexovi_aurora.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = atexovi_aurora.fg, bg = atexovi_aurora.contrast },
		StatusLineNC =  		{ fg = atexovi_aurora.text, bg = atexovi_aurora.disabled },
		StatusLineTerm =		{ fg = atexovi_aurora.fg, bg = atexovi_aurora.contrast },
		StatusLineTermNC =		{ fg = atexovi_aurora.text, bg = atexovi_aurora.disabled },
		TabLineFill =			{ fg = atexovi_aurora.fg },
		TablineSel =			{ fg = atexovi_aurora.bg, bg = atexovi_aurora.accent },
		Tabline =				{ fg = atexovi_aurora.fg },
		Title =					{ fg = atexovi_aurora.green, bg = atexovi_aurora.none, style = 'bold' },
		Visual =				{ fg = atexovi_aurora.none, bg = atexovi_aurora.selection },
		VisualNOS =				{ fg = atexovi_aurora.none, bg = atexovi_aurora.selection },
		WarningMsg =			{ fg = atexovi_aurora.yellow },
		WildMenu =				{ fg = atexovi_aurora.orange, bg = atexovi_aurora.none, style = 'bold' },
		CursorColumn =			{ fg = atexovi_aurora.none, bg = atexovi_aurora.active },
		CursorLine =			{ fg = atexovi_aurora.none, bg = atexovi_aurora.none },
		ToolbarLine =			{ fg = atexovi_aurora.fg, bg = atexovi_aurora.bg_alt },
		ToolbarButton =			{ fg = atexovi_aurora.fg, bg = atexovi_aurora.none, style = 'bold' },
		NormalMode =			{ fg = atexovi_aurora.accent, bg = atexovi_aurora.none, style = 'reverse' },
		InsertMode =			{ fg = atexovi_aurora.green, bg = atexovi_aurora.none, style = 'reverse' },
		ReplacelMode =			{ fg = atexovi_aurora.red, bg = atexovi_aurora.none, style = 'reverse' },
		VisualMode =			{ fg = atexovi_aurora.purple, bg = atexovi_aurora.none, style = 'reverse' },
		CommandMode =			{ fg = atexovi_aurora.gray, bg = atexovi_aurora.none, style = 'reverse' },
		Warnings =				{ fg = atexovi_aurora.yellow },

        healthError =           { fg = atexovi_aurora.error },
        healthSuccess =         { fg = atexovi_aurora.green },
        healthWarning =         { fg = atexovi_aurora.yellow },

        -- Dashboard
        DashboardShortCut =                     { fg = atexovi_aurora.blue },
        DashboardHeader =                       { fg = atexovi_aurora.red },
        DashboardCenter =                       { fg = atexovi_aurora.cyan },
        DashboardFooter =                       { fg = atexovi_aurora.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.atexovi_aurora_disable_background == true then
		editor.Normal =				{ fg = atexovi_aurora.fg, bg = atexovi_aurora.none } -- normal text and background color
		editor.SignColumn =			{ fg = atexovi_aurora.fg, bg = atexovi_aurora.none }
    else
		editor.Normal =				{ fg = atexovi_aurora.fg, bg = atexovi_aurora.bg } -- normal text and background color
		editor.SignColumn =			{ fg = atexovi_aurora.fg, bg = atexovi_aurora.bg }
    end

    -- Remove window split borders
    if vim.g.atexovi_aurora_borders == true then
		editor.VertSplit =				{ fg = atexovi_aurora.border }
    else
		editor.VertSplit =				{ fg = atexovi_aurora.bg }
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = atexovi_aurora.black
	vim.g.terminal_color_1 = atexovi_aurora.red
	vim.g.terminal_color_2 = atexovi_aurora.green
	vim.g.terminal_color_3 = atexovi_aurora.yellow
	vim.g.terminal_color_4 = atexovi_aurora.blue
	vim.g.terminal_color_5 = atexovi_aurora.purple
	vim.g.terminal_color_6 = atexovi_aurora.cyan
	vim.g.terminal_color_7 = atexovi_aurora.white
	vim.g.terminal_color_8 = atexovi_aurora.gray
	vim.g.terminal_color_9 = atexovi_aurora.red
	vim.g.terminal_color_10 = atexovi_aurora.green
	vim.g.terminal_color_11 = atexovi_aurora.yellow
	vim.g.terminal_color_12 = atexovi_aurora.blue
	vim.g.terminal_color_13 = atexovi_aurora.purple
	vim.g.terminal_color_14 = atexovi_aurora.cyan
	vim.g.terminal_color_15 = atexovi_aurora.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        TSAnnotation =              { fg = atexovi_aurora.red },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = atexovi_aurora.yellow },    -- (unstable) TODO: docs
        TSBoolean=                  { fg = atexovi_aurora.orange },    -- For booleans.
        TSCharacter=                { fg = atexovi_aurora.orange },    -- For characters.
        TSConstructor =             { fg = atexovi_aurora.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = atexovi_aurora.yellow },    -- For constants
        TSConstBuiltin =            { fg = atexovi_aurora.blue },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = atexovi_aurora.blue },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = atexovi_aurora.error },    -- For syntax/parser errors.
        TSException =               { fg = atexovi_aurora.yellow },    -- For exception related keywords.
        TSField =                   { fg = atexovi_aurora.gray }, -- For fields.
        TSFloat =                   { fg = atexovi_aurora.red },    -- For floats.
        TSFuncMacro =               { fg = atexovi_aurora.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = atexovi_aurora.cyan },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = atexovi_aurora.red }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = atexovi_aurora.yellow },    -- For identifiers referring to modules and namespaces.
        --TSNone =                    { },    -- TODO: docs
        TSNumber =                  { fg = atexovi_aurora.orange },    -- For all numbers
        TSOperator =                { fg = atexovi_aurora.cyan }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = atexovi_aurora.paleblue }, -- For parameters of a function.
        TSParameterReference=       { fg = atexovi_aurora.paleblue },    -- For references to parameters of a function.
        TSProperty =                { fg = atexovi_aurora.paleblue }, -- Same as `TSField`.
        TSPunctDelimiter =          { fg = atexovi_aurora.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = atexovi_aurora.cyan }, -- For brackets and parens.
        TSPunctSpecial =            { fg = atexovi_aurora.cyan }, -- For special punctutation that does not fall in the catagories before.
        TSString =                  { fg = atexovi_aurora.green },    -- For strings.
        TSStringRegex =             { fg = atexovi_aurora.blue }, -- For regexes.
        TSStringEscape =            { fg = atexovi_aurora.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = atexovi_aurora.yellow },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = atexovi_aurora.purple },    -- For types.
        TSTypeBuiltin =             { fg = atexovi_aurora.purple },    -- For builtin types.
        TSTag =                     { fg = atexovi_aurora.red },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = atexovi_aurora.yellow },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = atexovi_aurora.text },    -- For strings considered text in a markup language.
        TSTextReference =           { fg = atexovi_aurora.yellow }, -- FIXME
        TSEmphasis =                { fg = atexovi_aurora.paleblue },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = atexovi_aurora.fg, bg = atexovi_aurora.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { },    -- For strikethrough text.
        TSTitle =                   { fg = atexovi_aurora.paleblue, bg = atexovi_aurora.none, style = 'bold' },    -- Text that is part of a title.
        TSLiteral =                 { fg = atexovi_aurora.fg },    -- Literal text.
        TSURI =                     { fg = atexovi_aurora.link },    -- Any URI like a link or email.
    }

    -- Options:

    -- Italic comments
    if vim.g.atexovi_aurora_italic_comments == true then
        treesitter.TSComment=                  { fg = atexovi_aurora.comments , bg = atexovi_aurora.none, style = 'italic' }    -- For comment blocks.
    else
        treesitter.TSComment=                  { fg = atexovi_aurora.comments }    -- For comment blocks.
    end

    if vim.g.atexovi_aurora_italic_keywords == true then
        treesitter.TSConditional =             { fg = atexovi_aurora.purple, style = 'italic' }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = atexovi_aurora.purple, style = 'italic' } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = atexovi_aurora.purple, style = 'italic' }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = atexovi_aurora.purple, style = 'italic' } -- For keywords used to define a fuction.
    else
        treesitter.TSConditional =             { fg = atexovi_aurora.purple }    -- For keywords related to conditionnals.
        treesitter.TSKeyword =                 { fg = atexovi_aurora.purple } -- For keywords that don't fall in previous categories.
        treesitter.TSRepeat =                  { fg = atexovi_aurora.purple }    -- For keywords related to loops.
        treesitter.TSKeywordFunction =         { fg = atexovi_aurora.purple } -- For keywords used to define a fuction.
    end

    if vim.g.atexovi_aurora_italic_functions == true then
        treesitter.TSFunction =                { fg = atexovi_aurora.blue, style = 'italic' }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = atexovi_aurora.blue, style = 'italic' }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = atexovi_aurora.cyan, style = 'italic' }    -- For builtin functions: `table.insert` in Lua.
    else
        treesitter.TSFunction =                { fg = atexovi_aurora.blue }    -- For fuction (calls and definitions).
        treesitter.TSMethod =                  { fg = atexovi_aurora.blue }    -- For method calls and definitions.
        treesitter.TSFuncBuiltin =             { fg = atexovi_aurora.cyan }    -- For builtin functions: `table.insert` in Lua.
    end

    if vim.g.atexovi_aurora_italic_variables == true then
        treesitter.TSVariable =                { fg = atexovi_aurora.gray, style = 'italic' } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = atexovi_aurora.gray, style = 'italic' } -- Variable names that are defined by the languages, like `this` or `self`.
    else
        treesitter.TSVariable =                { fg = atexovi_aurora.gray } -- Any variable name that does not have another highlight.
        treesitter.TSVariableBuiltin =         { fg = atexovi_aurora.gray } -- Variable names that are defined by the languages, like `this` or `self`.
    end

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = atexovi_aurora.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = atexovi_aurora.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = atexovi_aurora.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = atexovi_aurora.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = atexovi_aurora.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = atexovi_aurora.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = atexovi_aurora.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = atexovi_aurora.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = atexovi_aurora.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = atexovi_aurora.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = atexovi_aurora.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = atexovi_aurora.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = atexovi_aurora.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = atexovi_aurora.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = atexovi_aurora.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = atexovi_aurora.purple  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = atexovi_aurora.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = atexovi_aurora.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = atexovi_aurora.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = atexovi_aurora.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = atexovi_aurora.accent, bg = atexovi_aurora.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = atexovi_aurora.accent, bg = atexovi_aurora.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = atexovi_aurora.accent, bg = atexovi_aurora.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = atexovi_aurora.text },
        LspTroubleCount =                       { fg = atexovi_aurora.purple, bg = atexovi_aurora.active },
        LspTroubleNormal =                      { fg = atexovi_aurora.fg, bg = atexovi_aurora.sidebar },

        -- Diff
        diffAdded =                             { fg = atexovi_aurora.green },
        diffRemoved =                           { fg = atexovi_aurora.red },
        diffChanged =                           { fg = atexovi_aurora.yellow },
        diffOldFile =                           { fg = atexovi_aurora.yelow },
        diffNewFile =                           { fg = atexovi_aurora.orange },
        diffFile =                              { fg = atexovi_aurora.blue },
        diffLine =                              { fg = atexovi_aurora.comments },
        diffIndexLine =                         { fg = atexovi_aurora.purple },

        -- Neogit
        NeogitBranch =                          { fg = atexovi_aurora.paleblue },
        NeogitRemote =                          { fg = atexovi_aurora.purple },
        NeogitHunkHeader =                      { fg = atexovi_aurora.fg, bg = atexovi_aurora.highlight },
        NeogitHunkHeaderHighlight =             { fg = atexovi_aurora.blue, bg = atexovi_aurora.contrast },
        NeogitDiffContextHighlight =            { fg = atexovi_aurora.text, bg = atexovi_aurora.contrast },
        NeogitDiffDeleteHighlight =             { fg = atexovi_aurora.red },
        NeogitDiffAddHighlight =                { fg = atexovi_aurora.green },

        -- GitGutter
        GitGutterAdd =                          { fg = atexovi_aurora.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = atexovi_aurora.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = atexovi_aurora.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = atexovi_aurora.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = atexovi_aurora.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = atexovi_aurora.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = atexovi_aurora.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = atexovi_aurora.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = atexovi_aurora.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = atexovi_aurora.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = atexovi_aurora.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = atexovi_aurora.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = atexovi_aurora.cyan },
        TelescopeResultsBorder =                { fg = atexovi_aurora.purple },
        TelescopePreviewBorder =                { fg = atexovi_aurora.green },
        TelescopeSelectionCaret =               { fg = atexovi_aurora.purple },
        TelescopeSelection =                    { fg = atexovi_aurora.purple },
        TelescopeMatching =                     { fg = atexovi_aurora.cyan },
        TelescopeNormal =                       { fg = atexovi_aurora.fg, bg = atexovi_aurora.float },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = atexovi_aurora.blue, style = "bold" },
        NvimTreeGitDirty =                      { fg = atexovi_aurora.yellow },
        NvimTreeGitNew =                        { fg = atexovi_aurora.green },
        NvimTreeImageFile =                     { fg = atexovi_aurora.yellow },
        NvimTreeExecFile =                      { fg = atexovi_aurora.green },
        NvimTreeSpecialFile =                   { fg = atexovi_aurora.purple , style = "underline" },
        NvimTreeFolderName=                     { fg = atexovi_aurora.paleblue },
        NvimTreeEmptyFolderName=                { fg = atexovi_aurora.disabled },
        NvimTreeFolderIcon=                     { fg = atexovi_aurora.accent },
        NvimTreeIndentMarker =                  { fg  = atexovi_aurora.disabled },
        LspDiagnosticsError =                   { fg = atexovi_aurora.error },
        LspDiagnosticsWarning =                 { fg = atexovi_aurora.yellow },
        LspDiagnosticsInformation =             { fg = atexovi_aurora.paleblue },
        LspDiagnosticsHint =                    { fg = atexovi_aurora.purple },

        -- WhichKey
        WhichKey =                              { fg = atexovi_aurora.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = atexovi_aurora.text },
        WhichKeyDesc =                          { fg = atexovi_aurora.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = atexovi_aurora.fg },
        WhichKeyFloating =                      { bg = atexovi_aurora.float },
        WhichKeyFloat =                         { bg = atexovi_aurora.float },

        -- LspSaga
        DiagnosticError =                       { fg = atexovi_aurora.error },
        DiagnosticWarning =                     { fg = atexovi_aurora.yellow },
        DiagnosticInformation =                 { fg = atexovi_aurora.paleblue },
        DiagnosticHint =                        { fg = atexovi_aurora.purple },
        DiagnosticTruncateLine =                { fg = atexovi_aurora.fg },
        LspFloatWinNormal =                     { bg = atexovi_aurora.contrast },
        LspFloatWinBorder =                     { fg = atexovi_aurora.purple },
        LspSagaBorderTitle =                    { fg = atexovi_aurora.cyan },
        LspSagaHoverBorder =                    { fg = atexovi_aurora.paleblue },
        LspSagaRenameBorder =                   { fg = atexovi_aurora.green },
        LspSagaDefPreviewBorder =               { fg = atexovi_aurora.green },
        LspSagaCodeActionBorder =               { fg = atexovi_aurora.blue },
        LspSagaFinderSelection =                { fg = atexovi_aurora.green },
        LspSagaCodeActionTitle =                { fg = atexovi_aurora.paleblue },
        LspSagaCodeActionContent =              { fg = atexovi_aurora.purple },
        LspSagaSignatureHelpBorder =            { fg = atexovi_aurora.pink },
        ReferencesCount =                       { fg = atexovi_aurora.purple },
        DefinitionCount =                       { fg = atexovi_aurora.purple },
        DefinitionIcon =                        { fg = atexovi_aurora.blue },
        ReferencesIcon =                        { fg = atexovi_aurora.blue },
        TargetWord =                            { fg = atexovi_aurora.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = atexovi_aurora.accent },
        BufferLineFill =                        { bg = atexovi_aurora.bg_alt },

        -- Sneak
        Sneak =                                 { fg = atexovi_aurora.bg, bg = atexovi_aurora.accent },
        SneakScope =                            { bg = atexovi_aurora.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = atexovi_aurora.highlight },
        IndentBlanklineContextChar =            { fg = atexovi_aurora.disabled },
	
	 -- Nvim dap
         DapBreakpoint =                         { fg = atexovi_aurora.red },
         DapStopped =                            { fg = atexovi_aurora.green },
    }

    -- Options:

    -- Disable nvim-tree background
        if vim.g.atexovi_aurora_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = atexovi_aurora.fg, bg = atexovi_aurora.none }
        else
            plugins.NvimTreeNormal =                        { fg = atexovi_aurora.fg, bg = atexovi_aurora.sidebar }
        end

    return plugins

end

return theme
