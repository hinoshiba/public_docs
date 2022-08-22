local wezterm = require 'wezterm'

local function append_table(table, other)
	for k, v in pairs(other) do
		table[k] = v
	end
end

local settings = {
	font = wezterm.font("Monaco", {weight="Regular", stretch="Normal", style="Normal", italic=false}),
	color_scheme = "neon",
	window_background_opacity = 0.93,
	text_background_opacity = 1,
	hide_tab_bar_if_only_one_tab = true,
	initial_cols = 240,
	initial_rows = 64,
	hyperlink_rules = {}, -- disable hyperlinks # https://wezfurlong.org/wezterm/hyperlinks.html
	keys = {
		{ key = "o", mods = "SUPER", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
		{ key = "c", mods = "SUPER", action = wezterm.action({ CopyTo = "Clipboard" }) },
		{ key = "v", mods = "SUPER", action = wezterm.action({ PasteFrom = "Clipboard" }) },
	},
}

local default_settings = {
	font_size = 20.0,
}

local mac_settings = {
	font_size = 15.0,
}

local windows_settings = {
	use_ime = true,
	font_size = 15.0,
}

local linux_settings = {
	font_size = 13.0,
}

if wezterm.target_triple == "aarch64-apple-darwin" or wezterm.target_triple == "x86_64-apple-darwin" then
	append_table(settings, mac_settings)
elseif wezterm.target_triple == "x86_64-unknown-linux-gnu" then
	append_table(settings, linux_settings)
elseif wezterm.target_triple == "x86_64-pc-windows-msvc" then
	append_table(settings, windows_settings)
else
	append_table(settings, default_settings)
end
return settings
