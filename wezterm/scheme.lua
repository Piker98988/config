-- import API
local wezterm = require "wezterm"

-- module to export
local module = {}

local function private_helper_start()
	wezterm.log_info "schemes loaded from external file"
end

local function private_helper_end()
	wezterm.log_info "schemes have been set from external file"
end

function module.setter(config)
	private_helper_start()
	config.colors = {
		foreground = "#7366FF", --text
		background = "#0f0014", --backdrop
	
		cursor_bg = "#ae166a", --cursor color
		cursor_fg = "#000000", --text color when cursor is over
		cursor_border = "#ae166a", --the borders or when in line style cursor color
	
		selection_fg = "#000000", --text color when selected
		selection_bg = "#1a0070", --selection color
	
		scrollbar_thumb = "#1a0070", --color of the little scroll helper on the right
	
		split = "#1a0070", --wtf is this bro
	
		ansi = {
			"#260033", --black     30m
			"#A91B6C", --red       31m
			"#702c91", --green     32m
			"#372388", --yellow    33m
			"#1D1389", --blue      34m
			"#21023F", --purple    35m
			"#210169", --cyan      36m
			"#a83175"  --white     37m
		},
		brights = {
			"#3d0052", --black   1;30m
			"#d62289", --red     1;31m
			"#9239bd", --green   1;32m
			"#482eb0", --yellow  1;33m
			"#2619b3", --blue    1;34m
			"#360466", --purple  1;35m
			"#2e0191", --cyan    1;36m
			"#e0419c"  --white   1;37m
		},
		--
		---- THE FOLLOWING IS WHAT I CALL THE WHAT THE ACTUAL FUCK IS THIS
		---- IT IS SET BECAUSE THE EXAMPLE IN THE DOCS HAD IT.
		-- 
		indexed = { [136] = "#af8700" },
		
	    -- Since: 20220319-142410-0fcdea07
	    -- When the IME, a dead key or a leader key are being processed and are effectively
	    -- holding input pending the result of input composition, change the cursor
	    -- to this color to give a visual cue about the compose state.
	    compose_cursor = 'orange',
	
	    -- Colors for copy_mode and quick_select
	    -- available since: 20220807-113146-c2fee766
	    -- In copy_mode, the color of the active text is:
	    -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
	    -- 2. selection_* otherwise
	    copy_mode_active_highlight_bg = { Color = '#000000' },
	    -- use `AnsiColor` to specify one of the ansi color palette values
	    -- (index 0-15) using one of the names "Black", "Maroon", "Green",
	    --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
	    -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
	    copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
	    copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
	    copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },
	
	    quick_select_label_bg = { Color = 'peru' },
	    quick_select_label_fg = { Color = '#ffffff' },
	    quick_select_match_bg = { AnsiColor = 'Navy' },
	    quick_select_match_fg = { Color = '#ffffff' },
	}
	private_helper_end()
end

return module
