local wezterm = require("wezterm")

-- Wezterm config parts taken and modified from https://github.com/linuxmobile/hyprland-dots

local function font_with_fallback(name, params)
	local names = { name, "Fira Mono", "JetBrains Mono" }
	return wezterm.font_with_fallback(names, params)
end

local font_name = "Cascadia Mono"

return {
	-- OpenGL for GPU acceleration, Software for CPU
	front_end = "OpenGL",

	-- Color scheme config
	--color_scheme = 'Dracula',
	-- Other color scheme : 'Smyck (Gogh)' 'Hybrid' 'Dracula'
	-- https://wezfurlong.org/wezterm/colorschemes/index.html
	-- https://github.com/mbadolato/iTerm2-Color-Schemes#screenshots
	-- https://github.com/chriskempson/base16-schemes-source
	-- https://gogh-co.github.io/Gogh/
	-- https://terminal.sexy/
	-- https://themer.dev/
	-- Color scheme set with individual colors
	colors = {
  		foreground = 'EEEEEC',
  		background = '#242424',
  		cursor_bg = "#EEEEEC",
		cursor_border = "#EEEEEC",
		--cursor_fg = "#e0def4",
		--selection_bg = "#2a283e",
		--selection_fg = "#e0def4",
  		ansi = {"#242424", "#CC0000", "#4E9A06", "#C4A000", "#3565A4", "#75507B", "#06989A", "#D3D7CF"},
  		brights = {"#555753", "#EF2929", "#8AE234", "#FCE94F", "#729FCF", "#AD7FA8", "#34E2E2", "#EEEEEC"},
	},

	-- Font config
	font = font_with_fallback(font_name),
	font_rules = {
		{ italic = true, font = font_with_fallback(font_name, { italic = true }),},
		{ italic = false, font = font_with_fallback(font_name, { bold = true }),},
		{ intensity = "Bold", font = font_with_fallback(font_name, { bold = true }),},
	},
	warn_about_missing_glyphs = false,
	font_size = 10,
	line_height = 1.0,
	dpi = 96.0,

	-- Cursor style BlinkingUnderline
	default_cursor_style = "BlinkingBar",

	-- X11
	enable_wayland = true,

	-- Keybinds
	-- wezterm show-keys --lua
	-- https://wezfurlong.org/wezterm/config/default-keys.html
	disable_default_key_bindings = true,
	keys = {
		-- Font resizing
		{ key = 'Backspace', mods = 'CTRL|SHIFT', action = wezterm.action.ResetFontSize },
		{ key = '+', mods = 'CTRL|SHIFT', action = wezterm.action.IncreaseFontSize },
		{ key = '-', mods = 'CTRL|SHIFT', action = wezterm.action.DecreaseFontSize },
		{ key = '_', mods = 'CTRL|SHIFT', action = wezterm.action.DecreaseFontSize },
		{ key = '°', mods = 'CTRL|SHIFT', action = wezterm.action.DecreaseFontSize },
		-- Splits
		{ key = '.', mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical{ domain =  'CurrentPaneDomain' } },
		{ key = '?', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal{ domain =  'CurrentPaneDomain' } },
		-- Exit Panel
		{ key = "q", mods = "CTRL|SHIFT", action = wezterm.action({ CloseCurrentPane = { confirm = false } }),},
		-- Moving from each panel
		{ key = "j", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Left" }),},
		{ key = "m", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Right" }),},
		{ key = "l", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Up" }),},
		{ key = "k", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Down" }),},
		{ key = "LeftArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Left" }),},
		{ key = "RightArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Right" }),},
		{ key = "UpArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Up" }),},
		{ key = "DownArrow", mods = "CTRL|SHIFT", action = wezterm.action({ ActivatePaneDirection = "Down" }),},
		-- Resizing panels
		{ key = "j", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),},
		{ key = "m", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),},
		{ key = "l", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),},
		{ key = "k", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),},
		{ key = "LeftArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),},
		{ key = "RightArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),},
		{ key = "UpArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),},
		{ key = "DownArrow", mods = "CTRL|SHIFT|ALT", action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),},
		-- browser-like bindings for tabbing
		{ key = "t", mods = "CTRL", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),},
		{ key = "w", mods = "CTRL", action = wezterm.action({ CloseCurrentTab = { confirm = false } }),},
		{ key = "Tab", mods = "CTRL", action = wezterm.action({ ActivateTabRelative = 1 }),},
		{ key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action({ ActivateTabRelative = -1 }),}, 
		-- standard copy/paste bindings
		{ key = "x",mods = "CTRL", action = "ActivateCopyMode",},
		{ key = "v",mods = "CTRL|SHIFT", action = wezterm.action({ PasteFrom = "Clipboard" }),},
		{ key = "c",mods = "CTRL|SHIFT", action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),},
	},

	-- Aesthetic Night Colorscheme
	bold_brightens_ansi_colors = true,
	
	-- Padding
	window_padding = {left = 0, right = 0, top = 0, bottom = 0,},

	-- Tab Bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = false,
	tab_bar_at_bottom = true,

	-- General
	automatically_reload_config = true,
	inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
	-- 0.50 with blur, or 0.90, or 1.0 :
	window_background_opacity = 0.90,
	window_close_confirmation = "NeverPrompt",
  	window_frame = { active_titlebar_bg = "#242424", font = font_with_fallback(font_name, { bold = true }) },
}
