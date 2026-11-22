local tbl = {
	_font_face = Drawing.Fonts.SystemBold,
	_font_size = 13,
	_pool = {Square = {}, Text = {}, Triangle = {}, Circle = {}, Line = {}},
	_pool_state = {Square = {}, Text = {}, Triangle = {}, Circle = {}, Line = {}},
	_pIdx = {Square = 0, Text = 0, Triangle = 0, Circle = 0, Line = 0},
	_tree = {},
	_tab_order = {},
	_menu_open = true,
	_watermark_enabled = true,
	_notifications = {},
	_notifications_spawned = 0
}

tbl._open_tab = nil
tbl._next_tab = nil
tbl._tab_changing = false
tbl._tab_fade = 1
tbl._search_query = ""
tbl._search_typing = false
tbl._search_w_anim = 22

tbl._inputs = {
	m1 = {id = 1, held = false, click = false},
	m2 = {id = 2, held = false, click = false},
	mb = {id = 4, held = false, click = false},
	backspace = {id = 8, held = false, click = false},
	tab = {id = 9, held = false, click = false},
	enter = {id = 13, held = false, click = false},
	shift = {id = 16, held = false, click = false},
	ctrl = {id = 17, held = false, click = false},
	alt = {id = 18, held = false, click = false},
	pause = {id = 19, held = false, click = false},
	capslock = {id = 20, held = false, click = false},
	esc = {id = 27, held = false, click = false},
	space = {id = 32, held = false, click = false},
	pageup = {id = 33, held = false, click = false},
	pagedown = {id = 34, held = false, click = false},
	["end"] = {id = 35, held = false, click = false},
	home = {id = 36, held = false, click = false},
	left = {id = 37, held = false, click = false},
	up = {id = 38, held = false, click = false},
	right = {id = 39, held = false, click = false},
	down = {id = 40, held = false, click = false},
	insert = {id = 45, held = false, click = false},
	delete = {id = 46, held = false, click = false},
	["0"] = {id = 48, held = false, click = false},
	["1"] = {id = 49, held = false, click = false},
	["2"] = {id = 50, held = false, click = false},
	["3"] = {id = 51, held = false, click = false},
	["4"] = {id = 52, held = false, click = false},
	["5"] = {id = 53, held = false, click = false},
	["6"] = {id = 54, held = false, click = false},
	["7"] = {id = 55, held = false, click = false},
	["8"] = {id = 56, held = false, click = false},
	["9"] = {id = 57, held = false, click = false},
	a = {id = 65, held = false, click = false},
	b = {id = 66, held = false, click = false},
	c = {id = 67, held = false, click = false},
	d = {id = 68, held = false, click = false},
	e = {id = 69, held = false, click = false},
	f = {id = 70, held = false, click = false},
	g = {id = 71, held = false, click = false},
	h = {id = 72, held = false, click = false},
	i = {id = 73, held = false, click = false},
	j = {id = 74, held = false, click = false},
	k = {id = 75, held = false, click = false},
	l = {id = 76, held = false, click = false},
	m = {id = 77, held = false, click = false},
	n = {id = 78, held = false, click = false},
	o = {id = 79, held = false, click = false},
	p = {id = 80, held = false, click = false},
	q = {id = 81, held = false, click = false},
	r = {id = 82, held = false, click = false},
	s = {id = 83, held = false, click = false},
	t = {id = 84, held = false, click = false},
	u = {id = 85, held = false, click = false},
	v = {id = 86, held = false, click = false},
	w = {id = 87, held = false, click = false},
	x = {id = 88, held = false, click = false},
	y = {id = 89, held = false, click = false},
	z = {id = 90, held = false, click = false},
	f1 = {id = 112, held = false, click = false},
	f2 = {id = 113, held = false, click = false},
	f3 = {id = 114, held = false, click = false},
	f4 = {id = 115, held = false, click = false},
	f5 = {id = 116, held = false, click = false},
	f6 = {id = 117, held = false, click = false},
	f7 = {id = 118, held = false, click = false},
	f8 = {id = 119, held = false, click = false},
	f9 = {id = 120, held = false, click = false},
	f10 = {id = 121, held = false, click = false},
	f11 = {id = 122, held = false, click = false},
	f12 = {id = 123, held = false, click = false}
}

tbl._slider_drag = nil
tbl._dd_drag = nil
tbl._slider_disp = {}
tbl._menu_drag = nil
tbl._input_ctx = nil
tbl._key_repeat = {}
tbl._overwrite_menu_key = false
tbl._menu_key = "f5"
tbl._active_dropdown = nil
tbl._dropdown_scroll = 0
tbl._dropdown_scroll_v = 0
tbl._active_colorpicker = nil
tbl._copied_color = nil
tbl._activities = {}
tbl._toggle_anim = {}
tbl._dd_arrow_anim = {}
tbl._frame_tooltip = nil
tbl._menu_scale = 0
tbl._current_h = 500
tbl._KB_W = 52
tbl._unloaded = false
tbl._unloading_sequence = false
tbl._unload_phase = "sections"
tbl._unload_section_alpha = 1
tbl._last_step_time = 0
tbl._real_m1_click = false
tbl._sec_scroll = {}
tbl._sec_slide = {}
tbl._item_vis = {}
tbl._tab_scroll = {}
tbl._config_folder = "macosUI"
tbl._config_name = "default"
tbl._config_refs = {}
tbl._config_callbacks = {}
tbl._autosave_dirty = false
tbl._autosave_timer = 0
tbl._autosave_delay = 3
tbl._autosave_last = 0
tbl._config_list = {}
tbl._autoload_requested = false
tbl._boot_loaded = false
tbl.title = "macosUI"
tbl._custom_title_enabled = false
tbl._custom_title = "macosUI"
tbl.w = 420
tbl.h = 500
tbl.x = 20
tbl.y = 100
tbl._padding = 10
tbl._tab_h = 36
tbl._corner = 10
tbl._theme_name = "Midnight"

tbl._themes = {
	Light = {
		accent = Color3.fromRGB(0, 122, 255),
		unsafe = Color3.fromRGB(255, 59, 48),
		body = Color3.fromRGB(236, 236, 236),
		text = Color3.fromRGB(28, 28, 28),
		subtext = Color3.fromRGB(142, 142, 147),
		border1 = Color3.fromRGB(198, 198, 203),
		border0 = Color3.fromRGB(212, 212, 216),
		surface1 = Color3.fromRGB(218, 218, 223),
		surface0 = Color3.fromRGB(250, 250, 252),
		crust = Color3.fromRGB(175, 175, 180),
		shadow = Color3.fromRGB(150, 150, 160)
	},
	Dark = {
		accent = Color3.fromRGB(10, 132, 255),
		unsafe = Color3.fromRGB(255, 69, 58),
		body = Color3.fromRGB(28, 28, 30),
		text = Color3.fromRGB(255, 255, 255),
		subtext = Color3.fromRGB(99, 99, 102),
		border1 = Color3.fromRGB(56, 56, 58),
		border0 = Color3.fromRGB(44, 44, 46),
		surface1 = Color3.fromRGB(44, 44, 46),
		surface0 = Color3.fromRGB(36, 36, 38),
		crust = Color3.fromRGB(18, 18, 18),
		shadow = Color3.fromRGB(5, 5, 5)
	},
	Catppuccin = {
		accent = Color3.fromRGB(137, 180, 250),
		unsafe = Color3.fromRGB(243, 139, 168),
		body = Color3.fromRGB(30, 30, 46),
		text = Color3.fromRGB(205, 214, 244),
		subtext = Color3.fromRGB(166, 173, 200),
		border1 = Color3.fromRGB(54, 58, 79),
		border0 = Color3.fromRGB(45, 50, 68),
		surface1 = Color3.fromRGB(49, 50, 68),
		surface0 = Color3.fromRGB(36, 39, 58),
		crust = Color3.fromRGB(17, 17, 27),
		shadow = Color3.fromRGB(5, 5, 10)
	},
	Dracula = {
		accent = Color3.fromRGB(189, 147, 249),
		unsafe = Color3.fromRGB(255, 85, 85),
		body = Color3.fromRGB(40, 42, 54),
		text = Color3.fromRGB(248, 248, 242),
		subtext = Color3.fromRGB(98, 114, 164),
		border1 = Color3.fromRGB(68, 71, 90),
		border0 = Color3.fromRGB(58, 60, 78),
		surface1 = Color3.fromRGB(68, 71, 90),
		surface0 = Color3.fromRGB(48, 50, 65),
		crust = Color3.fromRGB(21, 22, 30),
		shadow = Color3.fromRGB(5, 5, 8)
	},
	Nord = {
		accent = Color3.fromRGB(136, 192, 208),
		unsafe = Color3.fromRGB(191, 97, 106),
		body = Color3.fromRGB(46, 52, 64),
		text = Color3.fromRGB(236, 239, 244),
		subtext = Color3.fromRGB(129, 161, 193),
		border1 = Color3.fromRGB(67, 76, 94),
		border0 = Color3.fromRGB(59, 66, 82),
		surface1 = Color3.fromRGB(67, 76, 94),
		surface0 = Color3.fromRGB(59, 66, 82),
		crust = Color3.fromRGB(36, 41, 51),
		shadow = Color3.fromRGB(10, 12, 16)
	},
	Rose = {
		accent = Color3.fromRGB(235, 111, 146),
		unsafe = Color3.fromRGB(235, 111, 146),
		body = Color3.fromRGB(25, 23, 36),
		text = Color3.fromRGB(224, 222, 244),
		subtext = Color3.fromRGB(110, 106, 134),
		border1 = Color3.fromRGB(64, 61, 82),
		border0 = Color3.fromRGB(57, 53, 74),
		surface1 = Color3.fromRGB(64, 61, 82),
		surface0 = Color3.fromRGB(42, 39, 60),
		crust = Color3.fromRGB(14, 12, 23),
		shadow = Color3.fromRGB(5, 4, 10)
	},
	Midnight = {
		accent = Color3.fromRGB(59, 130, 246),
		unsafe = Color3.fromRGB(239, 68, 68),
		body = Color3.fromRGB(17, 17, 19),
		text = Color3.fromRGB(232, 232, 236),
		subtext = Color3.fromRGB(90, 90, 98),
		border1 = Color3.fromRGB(42, 42, 46),
		border0 = Color3.fromRGB(34, 34, 38),
		surface1 = Color3.fromRGB(20, 20, 22),
		surface0 = Color3.fromRGB(26, 26, 29),
		crust = Color3.fromRGB(13, 13, 15),
		shadow = Color3.fromRGB(0, 0, 0)
	}
}

tbl._theming = nil
tbl._ctx_menu = nil
tbl._search_tab_results = {}
tbl._tab_content_alpha = 1
tbl._tab_pill_w_anim = {}
local color3
local macosUI; macosUI, color3 = tbl, Color3
local v1 = color3.fromRGB(255, 95, 86)
local color = Color3.fromRGB(196, 68, 62)
local color1 = Color3.fromRGB(255, 189, 46)
local color2 = Color3.fromRGB(196, 146, 30)
local color4 = Color3.fromRGB(39, 201, 63)
local color5 = Color3.fromRGB(22, 160, 44)
local themeUI = macosUI
themeUI._theming = themeUI._themes[themeUI._theme_name]

local function func(arg1, arg2)
	return type(arg1) == "number" and arg1 == arg1 and arg1 or (arg2 or 0)
end

local function func1(arg1, arg2, arg3)
	return arg1 + (arg2 - arg1) * arg3
end

local function func2(arg1, arg2, arg3)
	if arg1 > arg3 then
		return arg3
	end

	if arg1 < arg2 then
		return arg2
	end

	return arg1
end

local function func3(arg1, arg2, arg3)
	return
		Color3.new(
			func1(arg1.R, arg2.R, arg3),
			func1(arg1.G, arg2.G, arg3),
			(func1(arg1.B, arg2.B, arg3))
		)
end

local function func4(arg1)
	return 1 - (1 - arg1) * (1 - arg1)
end

local function func5(arg1)
	local v1 = func(arg1)
	local v2 = math.floor(v1)

	if v1 == v2 then
		return tostring(v2)
	end

	return tostring(math.floor(v1 * 100 + 0.5) / 100)
end

local tbl1 = {
	lshift = true,
	rshift = true,
	lctrl = true,
	rctrl = true,
	lalt = true,
	ralt = true,
	shift = true,
	ctrl = true,
	alt = true
}

local tbl2 = {
	f1 = true,
	f2 = true,
	f3 = true,
	f4 = true,
	f5 = true,
	f6 = true,
	f7 = true,
	f8 = true,
	f9 = true,
	f10 = true,
	f11 = true,
	f12 = true
}

local tbl3 = {
	left = true,
	right = true,
	up = true,
	down = true,
	pageup = true,
	pagedown = true,
	home = true,
	end_ = true,
	insert = true,
	delete = true,
	tab = true,
	enter = true,
	backspace = true,
	esc = true,
	capslock = true,
	pause = true,
	space = true
}

local tbl4 = {m1 = true, m2 = true, mb = true}
local Players = game:GetService("Players")
local tbl5 = {}
local num = 0

local function func6(arg1, arg2, arg3, arg4)
	local v1 = arg2 or ""
	local v2 =
		tostring(arg3 or arg1._font_face) .. ":" .. tostring(arg4 or arg1._font_size) .. ":" .. v1
	local v3 = tbl5[v2]

	if v3 then
		return v3
	end

	local v4 = arg1:_GetTextBounds(v1, arg3, arg4)

	if num >= 600 then
		tbl5 = {}
		num = 0
	end

	tbl5[v2] = v4
	num = num + 1
	return v4
end

local function func7(arg1, arg2)
	return 1 - (1 - arg1) ^ (arg2 * 60)
end

local inputUI = macosUI

local function func8(arg1, arg2, arg3)
	local v1 = math.max(arg1, arg2, arg3)
	local num = 0
	local v2 = v1 - math.min(arg1, arg2, arg3)
	local num1 = 0

	if v1 > 0 then
		num1 = v2 / v1
	end

	if v2 > 0 then
		if v1 == arg1 then
			num = (arg2 - arg3) / v2
			if arg2 < arg3 then
				num = num + 6
			end
		elseif v1 == arg2 then
			num = (arg3 - arg1) / v2 + 2
		elseif v1 == arg3 then
			num = (arg1 - arg2) / v2 + 4
		end
		num = num / 6
	end

	return num, num1, v1
end

inputUI._scroll_delta = 0
inputUI._uiConnections = {}
pcall(function()
	local LocalPlayer = Players.LocalPlayer
	if LocalPlayer then
		local Mouse = LocalPlayer:GetMouse()
		if Mouse then
			table.insert(inputUI._uiConnections, Mouse.WheelForward:Connect(function()
				local themeUI = macosUI
				themeUI._scroll_delta = themeUI._scroll_delta + 60
			end))
			table.insert(inputUI._uiConnections, Mouse.WheelBackward:Connect(function()
				local themeUI = macosUI
				themeUI._scroll_delta = themeUI._scroll_delta - 60
			end))
		end
	end
end)

local function func9()
	return type(writefile) == "function" and type(readfile) == "function"
end

local function func10(arg1)
	if type(makefolder) == "function" then
		pcall(makefolder, arg1)
	end
end

local function func11(arg1)
	if type(isfile) == "function" then
		local ok, result = pcall(isfile, arg1)
		return ok and result
	end
	return false
end

local function func12(arg1, arg2)
	if type(writefile) == "function" then
		pcall(writefile, arg1, arg2)
	end
end

local function func13(arg1)
	if type(readfile) == "function" then
		local ok, result = pcall(readfile, arg1)
		if ok then
			return result
		end
	end
	return nil
end

local function func14(arg1)
	if type(listfiles) == "function" then
		local ok, result = pcall(listfiles, arg1)
		if ok and type(result) == "table" then
			return result
		end
	end
	return {}
end

local function func15(arg1)
	local HttpService = game:GetService("HttpService")
	local ok, result = pcall(function()
		return HttpService:JSONEncode(arg1)
	end)
	return ok and result or nil
end

local configUI = macosUI

local function _RegisterConfigRef(arg1, arg2, arg3, arg4)
	arg1._config_refs = arg1._config_refs or {}
	table.insert(arg1._config_refs, {tab = arg2, sec = arg3, label = arg4.label, item = arg4})
end

local function func16(arg1)
	local HttpService = game:GetService("HttpService")
	local ok, result = pcall(function()
		return HttpService:JSONDecode(arg1)
	end)
	return ok and result or nil
end

configUI._RegisterConfigRef = _RegisterConfigRef

local function func17(arg1)
	if not arg1 then
		return nil
	end
	return
		string.format(
			"%02X%02X%02X",
			math.floor(arg1.R * 255 + 0.5),
			math.floor(arg1.G * 255 + 0.5),
			math.floor(arg1.B * 255 + 0.5)
		)
end

local uiLibrary = macosUI

local function func18(arg1)
	if not arg1 or #arg1 < 6 then
		return nil
	end

	local v1 = arg1:match("^#?(%x%x%x%x%x%x)$")

	if not v1 then
		return nil
	end

	return
		Color3.fromRGB(
			tonumber(v1:sub(1, 2), 16),
			tonumber(v1:sub(3, 4), 16),
			tonumber(v1:sub(5, 6), 16)
		)
end

function uiLibrary:_BuildConfigData()
	local tbl = {}

	for _, v1 in ipairs(self._config_refs or {}) do
		local v2 = v1.tab .. "/" .. v1.sec .. "/" .. v1.label
		local item = v1.item

		if item.type_ == "toggle" then
			tbl[v2] = item.value
		elseif item.type_ == "slider" then
			tbl[v2] = item.value
		elseif item.type_ == "dropdown" then
			tbl[v2] =
				type(item.value) == "table" and table.concat(item.value, ",")
					or tostring(item.value or "")
		elseif item.type_ == "textbox" then
			tbl[v2] = item.value or ""
		end

		if item.keybind then
			tbl[v2 .. "__kb"] = item.keybind.value or ""
		end

		if item.colorpicker then
			tbl[v2 .. "__cp"] = func17(item.colorpicker.value)
		end
	end

	tbl.__theme = self._theme_name
	tbl.__menukey = self._menu_key
	return tbl
end

function uiLibrary:_ApplyConfigData(arg2)
	if type(arg2) ~= "table" then
		return
	end

	for _, v1 in ipairs(self._config_refs or {}) do
		local tab = v1.tab
		local v2 = "/" .. v1.sec .. "/" .. v1.label
		local item = v1.item
		local v3 = tab .. v2
		local v4 = arg2[v3]
		local _rawcb = item._rawcb

		if v4 ~= nil then
			if item.type_ == "toggle" then
				item.value = v4 == true or v4 == "true"

				if _rawcb then
					pcall(_rawcb, item.value)
				end

				local tab1 = v1.tab
				local v5 = v1.sec .. v1.label
				self._toggle_anim[tab1 .. v5] = item.value and 1 or 0
			elseif item.type_ == "slider" then
				local num = tonumber(v4)
				if num then
					item.value = num
					if _rawcb then
						pcall(_rawcb, num)
					end
				end
			elseif item.type_ == "dropdown" then
				local tbl = {}

				for k in tostring(v4):gmatch("[^,]+") do
					table.insert(tbl, k)
				end

				item.value = tbl

				if _rawcb then
					pcall(_rawcb, item.value)
				end
			elseif item.type_ == "textbox" then
				item.value = tostring(v4)
				if _rawcb then
					pcall(_rawcb, item.value)
				end
			end
		end

		if item.keybind then
			local v6 = arg2[v3 .. "__kb"]
			if v6 ~= nil then
				item.keybind.value = tostring(v6)
			end
		end

		if item.colorpicker then
			local v7 = arg2[v3 .. "__cp"]
			if v7 then
				local v8 = func18(tostring(v7))
				if v8 then
					item.colorpicker.value = v8
					if item.colorpicker.callback then
						pcall(item.colorpicker.callback, v8)
					end
				end
			end
		end
	end

	if arg2.__theme and self._themes[arg2.__theme] then
		self:_ApplyTheme(arg2.__theme)
	end

	if arg2.__menukey and self._inputs[arg2.__menukey] then
		self._menu_key = arg2.__menukey
	end

	for _, v9 in ipairs(self._config_callbacks or {}) do
		pcall(v9, arg2)
	end
end

function uiLibrary:_AutoSaveTick(arg2)
	if not self._autosave_dirty then
		return
	end

	self._autosave_timer = self._autosave_timer + func(arg2, 0.016)

	if self._autosave_timer < self._autosave_delay then
		return
	end

	self._autosave_dirty = false
	self._autosave_timer = 0
	self._autosave_last = os.clock()

	if not func9() then
		return
	end

	func10(self._config_folder)
	local v1 = self:_BuildConfigData()

	if self._config_name and self._config_name ~= "default" then
		v1.__savedas = self._config_name
	end

	local v2 = func15(v1)

	if not v2 then
		return
	end

	func12(self._config_folder .. "/_last.json", v2)
end

function uiLibrary:_RefreshConfigList()
	local v1 = self:ListConfigs()
	local flag = false
	local tbl = {}

	for _, v2 in ipairs(v1 or {}) do
		if v2 ~= "_last" then
			table.insert(tbl, v2)
			if v2 == "default" then
				flag = true
			end
		end
	end

	if not flag then
		table.insert(tbl, 1, "default")
	end

	self._config_list = tbl
	return tbl
end

function uiLibrary:SaveConfig(arg2)
	local str = tostring(arg2 or self._config_name or "default")

	if str == "default" or str == "" then
		self:Notification("Set a config name first", 5)
		return
	end

	if not func9() then
		self:Notification("No filesystem API", 5)
		return
	end

	func10(self._config_folder)
	local v1 = self:_BuildConfigData()
	v1.__savedas = str
	local v2 = func15(v1)

	if not v2 then
		self:Notification("Encode failed", 4)
		return
	end

	func12(self._config_folder .. "/" .. str .. ".json", v2)
	func12(self._config_folder .. "/_last.json", v2)
	self._autosave_dirty = false
	self._autosave_timer = 0
	self._config_name = str
	self:_RefreshConfigList()
	self:Notification("Saved: " .. str, 4)
end

function uiLibrary:LoadConfig(arg2)
	local str = tostring(arg2 or self._config_name or "default")

	if not func9() then
		self:Notification("No filesystem API", 5)
		return
	end

	local v1 = self._config_folder .. "/" .. str .. ".json"

	if not func11(v1) then
		if str ~= "_last" then
			self:Notification("Not found: " .. str, 4)
		end
		return
	end

	local v2 = func13(v1)

	if not v2 then
		self:Notification("Read failed: " .. str, 4)
		return
	end

	local v3 = func16(v2)

	if not v3 then
		self:Notification("Config corrupted, using defaults", 4)

		if type(delfile) == "function" then
			pcall(delfile, v1)
		end

		return
	end

	self:_ApplyConfigData(v3)

	if str ~= "_last" then
		self._config_name = str
		self:_RefreshConfigList()
		self:Notification("Loaded: " .. str, 4)
	end
end

function uiLibrary:DeleteConfig(arg2)
	local str = tostring(arg2 or self._config_name or "default")

	if str == "default" then
		self:Notification("Cannot delete default config", 4)
		return
	end

	if not func9() then
		return
	end

	local _config_folder = self._config_folder
	local v1 = "/" .. str .. ".json"
	local v2 = _config_folder .. v1

	if type(delfile) == "function" then
		pcall(delfile, v2)
	end

	if self._config_name == str then
		self._config_name = "default"
	end

	self:_RefreshConfigList()
	self:Notification("Deleted: " .. str, 4)
end

function uiLibrary:ListConfigs()
	if not func9() then
		return {}
	end

	func10(self._config_folder)
	local v1 = func14(self._config_folder)
	local tbl = {}

	for _, v2 in ipairs(v1 or {}) do
		local v3 = tostring(v2):gsub("\\", "/"):match("([^/]+)%.json$")
		if v3 then
			table.insert(tbl, v3)
		end
	end

	return tbl
end

function uiLibrary:_MarkDirty()
	if not self._autosave_dirty then
		self._autosave_timer = 0
	end
	self._autosave_dirty = true
end

function uiLibrary:AutoLoadConfig()
	self._autoload_requested = true
end

function uiLibrary:_DoAutoLoad()
	if not func9() then
		return
	end

	local _config_folder = self._config_folder
	local v1 = _config_folder .. "/_last.json"
	local v2 = _config_folder .. "/default.json"
	func10(_config_folder)

	if func11(v1) then
		local v3 = func13(v1)
		local v4 = v3 and func16(v3)

		if v4 then
			self:_ApplyConfigData(v4)
			self:Notification(
				"Config restored: "
					.. (v4.__savedas and v4.__savedas ~= "" and '"' .. tostring(v4.__savedas) .. '"'
						or "last session"),
				4
			)
			self._config_name = v4.__savedas or "default"
			return
		end

		self:Notification("Config corrupted, using defaults", 4)

		if type(delfile) == "function" then
			pcall(delfile, v1)
		end
	end

	if func11(v2) then
		local v5 = func13(v2)
		local v6 = v5 and func16(v5)

		if v6 then
			self:_ApplyConfigData(v6)
		end

		return
	end

	local v7 = self:_BuildConfigData()
	local v8 = func15(v7)

	if v8 then
		func12(v2, v8)
	end
end

function uiLibrary:_GetSec(arg2)
	self._sec_scroll = self._sec_scroll or {}

	if not self._sec_scroll[arg2] then
		self._sec_scroll[arg2] = {offset = 0, target = 0, maxScroll = 0}
	end

	return self._sec_scroll[arg2]
end

function uiLibrary._TickScroll(arg1, arg2, arg3)
	local v1 = arg1:_GetSec(arg2)
	v1.offset = func1(v1.offset, v1.target, (func7(0.12, arg3)))

	if math.abs(v1.offset - v1.target) < 0.5 then
		v1.offset = v1.target
	end

	return v1.offset
end

function uiLibrary._ScrollSection(arg1, arg2, arg3)
	local v1 = arg1:_GetSec(arg2)
	local target = v1.target
	local maxScroll = v1.maxScroll
	v1.target = func2(target + arg3, 0, maxScroll)
end

function uiLibrary:_KeyIDToName(arg2)
	for k, v1 in pairs(self._inputs or {}) do
		if v1.id == arg2 then
			return k
		end
	end
	return nil
end

function uiLibrary:_IsKeyPressed(arg2)
	return self._inputs and self._inputs[arg2] and self._inputs[arg2].click
end

function uiLibrary:_IsKeyHeld(arg2)
	return self._inputs and self._inputs[arg2] and self._inputs[arg2].held
end

function uiLibrary:_GetScreenSize()
	local v1 = os.clock()

	if not self._cached_ss or v1 - (self._cached_ss_at or 0) > 1 then
		local vector2 = Vector2.new(1920, 1080)
		local CurrentCamera = workspace.CurrentCamera

		if CurrentCamera and CurrentCamera.ViewportSize then
			vector2 = CurrentCamera.ViewportSize
		end

		self._cached_ss = vector2
		self._cached_ss_at = v1
	end

	return self._cached_ss
end

function uiLibrary:_GetMousePos()
	return self._cached_mouse or Vector2.new()
end

function uiLibrary:_PollMousePos()
	local LocalPlayer = Players.LocalPlayer

	if LocalPlayer then
		local Mouse = LocalPlayer:GetMouse()
		if Mouse then
			local _cached_mouse = self._cached_mouse
			local Y = Mouse.Y
			local X = Mouse.X

			if not _cached_mouse or _cached_mouse.x ~= X or _cached_mouse.y ~= Y then
				self._cached_mouse = Vector2.new(X, Y)
			end

			return
		end
	end

	if not self._cached_mouse then
		self._cached_mouse = Vector2.new()
	end
end

function uiLibrary:_IsMouseWithinBounds(arg2, arg3)
	local v1 = self:_GetMousePos()
	return v1.x >= arg2.x and v1.x <= arg2.x + arg3.x and v1.y >= arg2.y and v1.y <= arg2.y + arg3.y
end

function uiLibrary:_ApplyTheme(_theme_name)
	self._theme_name = _theme_name
	self._theming = self._themes[_theme_name] or self._themes.Light
end

function uiLibrary:_GetTextBounds(arg2, arg3, arg4)
	if not arg2 or arg2 == "" then
		return Vector2.new(0, arg4 or self._font_size)
	end

	local v1 = arg4 or self._font_size

	if (arg3 or self._font_face) == Drawing.Fonts.UI then
		return Vector2.new(#arg2 * v1 * 0.53846, v1)
	end

	local v2 = #arg2
	return Vector2.new(v2 * v1 * 0.58, v1)
end

-- Compare components so fresh wrappers do not cause redundant Drawing writes.
local function sameVector(a, b)
    return a == b or (a ~= nil and b ~= nil and a.x == b.x and a.y == b.y)
end

local function sameColor(a, b)
    return a == b or (a ~= nil and b ~= nil and a.R == b.R and a.G == b.G and a.B == b.B)
end

function uiLibrary:_Draw(arg2, color, zIndex, arg5, ...)
	local v1 =
		arg2 == "rect" and "Square"
			or (arg2 == "text" and "Text"
				or (arg2 == "circle" and "Circle" or (arg2 == "triangle" and "Triangle" or "Line")))

	if arg2 == "gradient" then
		local v2, v3, v4 = ...
		local tbl = {select(4, ...)}
		local v5 = #tbl - 1

		for i = 1, v5 do
			local v6 = tbl[i]
			local v7 = tbl[i + 1]
			local v8 = math.max(1, v4.x) / v5
			local v9 = math.max(1, v4.y) / v5

			for i1 = 1, 10 do
				local v10 = (i1 - 1) / 9
				local color3 = Color3.new(
					func1(v6.R, v7.R, v10),
					func1(v6.G, v7.G, v10),
					(func1(v6.B, v7.B, v10))
				)
				local v11 = func1(v6.A or 1, v7.A or 1, v10) * arg5
				local vector2Ref
				local vector21

				if v2 == "horizontal" then
					local vector2 = Vector2.new(v8 / 10, v4.y)
					vector2Ref = vector2
					vector21 = Vector2.new(v3.x + (i - 1) * v8 + (i1 - 1) * vector2.x, v3.y)
				elseif v2 == "vertical" then
					local vector22 = Vector2.new(v4.x, v9 / 10)
					vector2Ref = vector22
					vector21 = Vector2.new(v3.x, v3.y + (i - 1) * v9 + (i1 - 1) * vector22.y)
				end

				self:_Draw("rect", color3, zIndex, v11, vector21, vector2Ref, true)
			end
		end

		return
	end

	self._pIdx[v1] = self._pIdx[v1] + 1
	local v12 = self._pIdx[v1]
	local v13 = self._pool[v1][v12]
	local v14 = self._pool_state[v1][v12]

	if not v13 then
		local drawing = Drawing.new(v1)
		v13 = drawing
		drawing.Visible = false
		self._pool[v1][v12] = drawing
		local tbl1 = {Visible = false}
		v14 = tbl1
		self._pool_state[v1][v12] = tbl1
	end

	if v14.ZIndex ~= zIndex then
		v13.ZIndex = zIndex
		v14.ZIndex = zIndex
	end

	if color ~= nil and not sameColor(v14.Color, color) then
		v13.Color = color
		v14.Color = color
	end

	local v15 = func2(arg5, 0, 1)

	if v14.Transparency ~= v15 then
		v13.Transparency = v15
		v14.Transparency = v15
	end

	if v14.Visible ~= true then
		v13.Visible = true
		v14.Visible = true
	end

	if arg2 == "rect" then
		local v16, v17, v18, v19 = ...

		if not sameVector(v14.Position, v16) then
			v13.Position = v16
			v14.Position = v16
		end

		if not sameVector(v14.Size, v17) then
			v13.Size = v17
			v14.Size = v17
		end

		if v14.Filled ~= v18 then
			v13.Filled = v18
			v14.Filled = v18
		end

		if v19 and v19 > 0 then
			if v14.Corner ~= v19 then
				v13.Corner = v19
				v14.Corner = v19
			end
		elseif v14.Corner ~= 0 then
			v13.Corner = 0
			v14.Corner = 0
		end
	elseif arg2 == "text" then
		local v20, v21, v22, v23, v24, v25 = ...
		local v26 = v23 == "center"

		if v14.Center ~= v26 then
			v13.Center = v26
			v14.Center = v26
		end

		if not sameVector(v14.Position, v20) then
			v13.Position = v20
			v14.Position = v20
		end

		if v14.Text ~= v21 then
			v13.Text = v21
			v14.Text = v21
		end

		if v14.Outline ~= v22 then
			v13.Outline = v22
			v14.Outline = v22
		end

		local v27 = v25 or self._font_face

		if v14.Font ~= v27 then
			v13.Font = v27
			v14.Font = v27
		end

		local v28 = v24 or self._font_size

		if v14.Size ~= v28 then
			v13.Size = v28
			v14.Size = v28
		end
	elseif arg2 == "triangle" then
		local v29, v30, v31, v32 = ...

		if v14.Filled ~= v29 then
			v13.Filled = v29
			v14.Filled = v29
		end

		if not sameVector(v14.PointA, v30) then
			v13.PointA = v30
			v14.PointA = v30
		end

		if not sameVector(v14.PointB, v31) then
			v13.PointB = v31
			v14.PointB = v31
		end

		if not sameVector(v14.PointC, v32) then
			v13.PointC = v32
			v14.PointC = v32
		end
	elseif arg2 == "circle" then
		local v33, v34, v35 = ...

		if not sameVector(v14.Position, v33) then
			v13.Position = v33
			v14.Position = v33
		end

		if v14.Radius ~= v34 then
			v13.Radius = v34
			v14.Radius = v34
		end

		if v14.Filled ~= v35 then
			v13.Filled = v35
			v14.Filled = v35
		end
	elseif arg2 == "line" then
		local v36, v37, v38 = ...

		if not sameVector(v14.From, v36) then
			v13.From = v36
			v14.From = v36
		end

		if not sameVector(v14.To, v37) then
			v13.To = v37
			v14.To = v37
		end

		local v39 = v38 or 1

		if v14.Thickness ~= v39 then
			v13.Thickness = v39
			v14.Thickness = v39
		end
	end
end

function uiLibrary:_FullWipe()
	for _, v1 in pairs(self._pool or {}) do
		for _, v2 in ipairs(v1) do
			v2.Visible = false
			pcall(function()
				v2:Remove()
			end)
		end
	end

	self._pool = {Square = {}, Text = {}, Triangle = {}, Circle = {}, Line = {}}
	self._pool_state = {Square = {}, Text = {}, Triangle = {}, Circle = {}, Line = {}}
end

function uiLibrary:_SpawnColorpicker(arg2, arg3, arg4, arg5)
	local v1, v2, v3 = func8(arg4.R, arg4.G, arg4.B)
	self._active_colorpicker = {
		position = arg2 or Vector2.new(self.x + self.w + self._padding, self.y),
		label = arg3,
		callback = arg5,
		_h = v1,
		_s = v2,
		_v = v3,
		_anim = 0,
		_closing = false
	}
end

function uiLibrary:_RemoveColorpicker()
	if self._active_colorpicker then
		self._active_colorpicker._closing = true
	end
end

function uiLibrary:_SpawnDropdown(arg2, arg3, arg4, arg5, arg6, arg7)
	self._active_dropdown = {
		position = arg2,
		width = arg3,
		value = arg4,
		choices = arg5,
		multi = arg6,
		callback = arg7,
		_spawned_at = os.clock(),
		_anim = 0
	}

	self._dropdown_scroll_target = 0
	self._dropdown_scroll_v = 0
end

function uiLibrary:_RemoveDropdown()
	self._active_dropdown = nil
end

function uiLibrary:_SpawnCtxMenu(arg2, arg3, arg4, arg5)
	self._ctx_menu = {
		x = arg2,
		y = arg3,
		siid = arg4,
		sItem = arg5,
		_anim = 0,
		items = {{label = "Copy", action = "copy"}, {label = "Clear", action = "clear"}}
	}
end

function uiLibrary:_RemoveCtxMenu()
	self._ctx_menu = nil
end

function uiLibrary:_Toggle(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
	local v1 = arg4

	if type(arg4) == "table" then
		v1 = arg4.Label or arg4.label
		arg5 = arg4.Value or arg4.value
		arg6 = arg4.Callback or arg4.callback
		arg7 = arg4.IsNew or arg4.isNew
		arg8 = arg4.Tooltip or arg4.tooltip
	end

	self._tree = self._tree or {}
	self._tree[arg2] = self._tree[arg2] or {_items = {}, _searchQuery = ""}
	self._tree[arg2]._items[arg3] = self._tree[arg2]._items[arg3] or {_items = {}, _count = 0}
	local v2 = #self._tree[arg2]._items[arg3]._items + 1
	local v3 = arg2 .. "_" .. arg3 .. "_" .. v2

	local tbl = {
		type_ = "toggle",
		_rawcb = arg6,
		label = v1,
		value = arg5,
		callback = function(arg1)
			self:_MarkDirty()
			if arg6 then
				arg6(arg1)
			end
		end,
		isNew = arg7 or false,
		tooltip = arg8,
		_id = v3,
		_anim_key = "s_anim_" .. v3,
	}

	table.insert(self._tree[arg2]._items[arg3]._items, tbl)
	local str = tostring(v2)
	self._toggle_anim[arg2 .. arg3 .. str] = arg5 and 1 or 0
	self:_RegisterConfigRef(arg2, arg3, tbl)
	return
		{
			Set = function(_, value)
				self._tree[arg2]._items[arg3]._items[v2].value = value
				if self._tree[arg2]._items[arg3]._items[v2].callback then
					self._tree[arg2]._items[arg3]._items[v2].callback(value)
				end
			end,
			AddKeybind = function(_, arg21, arg31)
				self._tree[arg2]._items[arg3]._items[v2].keybind = {
					value = arg21,
					callback = arg31,
					_listening = false,
					_listening_start = 0
				}
				return
					{
						Set = function(_, value)
							self._tree[arg2]._items[arg3]._items[v2].keybind.value = value
							if self._tree[arg2]._items[arg3]._items[v2].keybind.callback then
								self._tree[arg2]._items[arg3]._items[v2].keybind.callback(value)
							end
						end,
					}
			end,
			AddColorpicker = function(_, arg21, arg31, arg4, arg5)
				self._tree[arg2]._items[arg3]._items[v2].colorpicker = {
					label = arg21,
					value = arg31 or self._theming.accent,
					overwrite = arg4,
					callback = arg5
				}
				return
					{
						Set = function(_, value)
							self._tree[arg2]._items[arg3]._items[v2].colorpicker.value = value
							if self._tree[arg2]._items[arg3]._items[v2].colorpicker.callback then
								self._tree[arg2]._items[arg3]._items[v2].colorpicker.callback(value)
							end
						end,
					}
			end,
		}
end

function uiLibrary:_Slider(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)
	local v1 = arg4
	local v2 = arg10

	if type(arg4) == "table" then
		v1 = arg4.Label or arg4.label
		arg5 = arg4.Value or arg4.value
		arg6 = arg4.Step or arg4.step
		arg7 = arg4.Min or arg4.min
		arg8 = arg4.Max or arg4.max
		arg9 = arg4.Suffix or arg4.suffix
		v2 = arg4.IsNew or arg4.isNew
		arg11 = arg4.Callback or arg4.callback
	elseif type(arg10) == "function" then
		arg11 = arg10
		v2 = false
	end

	self._tree = self._tree or {}
	self._tree[arg2] = self._tree[arg2] or {_items = {}, _searchQuery = ""}
	self._tree[arg2]._items[arg3] = self._tree[arg2]._items[arg3] or {_items = {}, _count = 0}
	local v3 = #self._tree[arg2]._items[arg3]._items + 1
	local v4 = arg2 .. "_" .. arg3 .. "_" .. v3

	local tbl = {
		type_ = "slider",
		_rawcb = arg11,
		label = v1,
		value = arg5,
		default = arg5,
		step = arg6,
		min = arg7,
		max = arg8,
		suffix = arg9 or "",
		isNew = v2 or false,
		callback = function(arg1)
			self:_MarkDirty()
			if arg11 then
				arg11(arg1)
			end
		end,
		_id = v4,
		_anim_key = "s_anim_" .. v4,
	}

	table.insert(self._tree[arg2]._items[arg3]._items, tbl)
	self:_RegisterConfigRef(arg2, arg3, tbl)
	return
		{
			Set = function(_, value)
				self._tree[arg2]._items[arg3]._items[v3].value = value
				if self._tree[arg2]._items[arg3]._items[v3].callback then
					self._tree[arg2]._items[arg3]._items[v3].callback(value)
				end
			end,
		}
end

function uiLibrary:_Dropdown(arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
	local v1 = arg4
	local v2 = arg8

	if type(arg4) == "table" then
		v1 = arg4.Label or arg4.label
		arg5 = arg4.Value or arg4.value
		arg6 = arg4.Choices or arg4.choices
		arg7 = arg4.Multi or arg4.multi
		v2 = arg4.IsNew or arg4.isNew
		arg9 = arg4.Callback or arg4.callback
	elseif type(arg8) == "function" then
		arg9 = arg8
		v2 = false
	end

	self._tree = self._tree or {}
	self._tree[arg2] = self._tree[arg2] or {_items = {}, _searchQuery = ""}
	self._tree[arg2]._items[arg3] = self._tree[arg2]._items[arg3] or {_items = {}, _count = 0}
	local v3 = #self._tree[arg2]._items[arg3]._items + 1
	local v4 = arg2 .. "_" .. arg3 .. "_" .. v3

	local tbl = {
		type_ = "dropdown",
		_rawcb = arg9,
		label = v1,
		value = arg5,
		choices = arg6,
		multi = arg7,
		isNew = v2 or false,
		callback = function(arg1)
			self:_MarkDirty()
			if arg9 then
				arg9(arg1)
			end
		end,
		_id = v4,
		_anim_key = "s_anim_" .. v4,
	}

	table.insert(self._tree[arg2]._items[arg3]._items, tbl)
	self:_RegisterConfigRef(arg2, arg3, tbl)
	return
		{
			Set = function(_, value)
				self._tree[arg2]._items[arg3]._items[v3].value = value
				if self._tree[arg2]._items[arg3]._items[v3].callback then
					self._tree[arg2]._items[arg3]._items[v3].callback(value)
				end
			end,
			UpdateChoices = function(_, choices)
				self._tree[arg2]._items[arg3]._items[v3].choices = choices
			end,
		}
end

function uiLibrary:_Button(arg2, arg3, arg4, arg5, arg6)
	local v1 = arg4
	local v2 = arg5

	if type(arg4) == "table" then
		v1 = arg4.Label or arg4.label
		v2 = arg4.IsNew or arg4.isNew
		arg6 = arg4.Callback or arg4.callback
	elseif type(arg5) == "function" then
		v2 = false
		arg6 = arg5
	end

	self._tree = self._tree or {}
	self._tree[arg2] = self._tree[arg2] or {_items = {}, _searchQuery = ""}
	self._tree[arg2]._items[arg3] = self._tree[arg2]._items[arg3] or {_items = {}, _count = 0}
	local v3 = #self._tree[arg2]._items[arg3]._items + 1
	local v4 = arg2 .. "_" .. arg3 .. "_" .. v3

	local tbl = {
		type_ = "button",
		label = v1,
		isNew = v2 or false,
		callback = arg6,
		_id = v4,
		_anim_key = "s_anim_" .. v4
	}

	table.insert(self._tree[arg2]._items[arg3]._items, tbl)
	return
		{
			AddColorpicker = function(_, arg21, arg31, arg4, arg5)
				self._tree[arg2]._items[arg3]._items[v3].colorpicker = {
					label = arg21,
					value = arg31 or self._theming.accent,
					overwrite = arg4,
					callback = arg5
				}
				return
					{
						Set = function(_, value)
							self._tree[arg2]._items[arg3]._items[v3].colorpicker.value = value
							if self._tree[arg2]._items[arg3]._items[v3].colorpicker.callback then
								self._tree[arg2]._items[arg3]._items[v3].colorpicker.callback(value)
							end
						end,
					}
			end,
		}
end

function uiLibrary:_Textbox(arg2, arg3, arg4, arg5, arg6)
	local v1 = arg4

	if type(arg4) == "table" then
		v1 = arg4.Label or arg4.label
		arg5 = arg4.Value or arg4.value
		arg6 = arg4.Callback or arg4.callback
	end

	self._tree = self._tree or {}
	self._tree[arg2] = self._tree[arg2] or {_items = {}, _searchQuery = ""}
	self._tree[arg2]._items[arg3] = self._tree[arg2]._items[arg3] or {_items = {}, _count = 0}
	local v2 = #self._tree[arg2]._items[arg3]._items + 1
	local v3 = arg2 .. "_" .. arg3 .. "_" .. v2

	local tbl = {
		type_ = "textbox",
		_rawcb = arg6,
		label = v1,
		value = arg5,
		callback = function(arg1)
			self:_MarkDirty()
			if arg6 then
				arg6(arg1)
			end
		end,
		_id = v3,
		_anim_key = "s_anim_" .. v3,
	}

	table.insert(self._tree[arg2]._items[arg3]._items, tbl)
	self:_RegisterConfigRef(arg2, arg3, tbl)
	return
		{
			Set = function(_, value)
				self._tree[arg2]._items[arg3]._items[v2].value = value
				if self._tree[arg2]._items[arg3]._items[v2].callback then
					self._tree[arg2]._items[arg3]._items[v2].callback(value)
				end
			end,
		}
end

function uiLibrary:_Section(arg2, arg3)
	self._tree = self._tree or {}
	self._tree[arg2] = self._tree[arg2] or {_items = {}, _searchQuery = ""}
	self._tree[arg2]._items[arg3] = {_items = {}, _count = 0}
	self._tree[arg2]._secCount = (self._tree[arg2]._secCount or 0) + 1

	if not self._tree[arg2]._sec_order then
		self._tree[arg2]._sec_order = {}
	end

	table.insert(self._tree[arg2]._sec_order, arg3)
	return
		{
			Toggle = function(_, ...)
				return self:_Toggle(arg2, arg3, ...)
			end,
			Slider = function(_, ...)
				return self:_Slider(arg2, arg3, ...)
			end,
			Dropdown = function(_, ...)
				return self:_Dropdown(arg2, arg3, ...)
			end,
			Button = function(_, ...)
				return self:_Button(arg2, arg3, ...)
			end,
			Textbox = function(_, ...)
				return self:_Textbox(arg2, arg3, ...)
			end,
		}
end

function uiLibrary:GetMenuSize()
	return Vector2.new(self.w, self.h)
end

function uiLibrary:SetWatermarkEnabled(_watermark_enabled)
	self._watermark_enabled = _watermark_enabled
end

function uiLibrary:SetKeybindList(enabled)
	self._keybind_list_enabled = enabled and true or false
end

function uiLibrary.SetMenuTitle(arg1, arg2)
	local str = tostring(arg2)

	if #str > 32 then
		str = str:sub(1, 32)
	end

	arg1.title = str
	arg1._custom_title = str
end

function uiLibrary:SetMenuPosition(arg2)
	self.x = arg2.x or self.x
	self.y = arg2.y or self.y
end

function uiLibrary.SetMenuSize(arg1, arg2)
	arg1.w = arg2.x or arg1.w
	arg1.h = arg2.y or arg1.h
end

function uiLibrary.SetMenuKey(arg1, arg2)
	local v1 = tostring(arg2):lower()
	if arg1._inputs[v1] then
		arg1._menu_key = v1
		arg1:Notification("Menu key set to " .. v1:upper(), 3)
	else
		arg1:Notification("Invalid key: " .. v1, 3)
	end
end

function uiLibrary.CenterMenu(arg1)
	local v1 = arg1:_GetScreenSize()
	local MenuSize = arg1:GetMenuSize()
	arg1:SetMenuPosition(Vector2.new(v1.x / 2 - MenuSize.x / 2, v1.y / 2 - MenuSize.y / 2))
end

function uiLibrary:Notification(arg2, time)
	local str = tostring(arg2)
	self._notifications = self._notifications or {}

	for _, _notification in ipairs(self._notifications) do
		if _notification.text == str then
			if os.clock() - _notification._spawned_at < 1 then
				return
			end

			_notification._spawned_at = os.clock()
			_notification.time = time
			return
		end
	end

	if #self._notifications >= 6 then
		table.remove(self._notifications, 1)
	end

	table.insert(
		self._notifications,
		{text = str, time = time or 3, _id = self._notifications_spawned, _spawned_at = os.clock()}
	)
	self._notifications_spawned = self._notifications_spawned + 1
end

function uiLibrary:Tab(_open_tab)
	self._tree = self._tree or {}
	self._tree[_open_tab] = {_items = {}, _searchQuery = ""}
	self._tab_order = self._tab_order or {}
	table.insert(self._tab_order, _open_tab)

	if not self._open_tab then
		self._open_tab = _open_tab
		self._tab_fade = 1
	end

	if not self._autoload_requested and not self._boot_loaded then
		self:AutoLoadConfig()
	end

	return
		{
			Section = function(_, arg2)
				return self:_Section(_open_tab, arg2)
			end,
		}
end

function uiLibrary.RegisterActivity(arg1, arg2)
	arg1._activities = arg1._activities or {}
	local v1 = #arg1._activities + 1
	arg1._activities[v1] = arg2
	return
		{
			Remove = function(_)
				arg1._activities[v1] = nil
			end,
		}
end

function uiLibrary:Unload()
	self._unloading_sequence = true
	self._unload_phase = "sections"
	self._unload_section_alpha = 1
end

function uiLibrary.CreateSettingsTab(arg1, arg2)
	local v1 = arg1:Tab(arg2 or "Settings")
	local v2 = arg2 or "Settings"
	arg1._tab_order = arg1._tab_order or {}

	for i, v3 in ipairs(arg1._tab_order) do
		if v3 == v2 then
			table.remove(arg1._tab_order, i)
			break
		end
	end

	table.insert(arg1._tab_order, v2)
	local v4 = v1:Section("Menu")
	v4:Toggle(
		"Menu Key",
		arg1._overwrite_menu_key,
		function(_overwrite_menu_key)
			arg1._overwrite_menu_key = _overwrite_menu_key
		end
	)
		:AddKeybind(
			arg1._menu_key,
			function(arg2)
				arg1._menu_key = arg1:_KeyIDToName(arg2)
			end
		)
	v4:Toggle(
		"Watermark",
		true,
		function(arg2)
			arg1:SetWatermarkEnabled(arg2)
		end
	)
	v4:Toggle("Keybind list", false, function(enabled)
		arg1:SetKeybindList(enabled)
	end)
	v4:Toggle(
		"Custom watermark",
		arg1._custom_title_enabled,
		function(_custom_title_enabled)
			arg1._custom_title_enabled = _custom_title_enabled
		end
	)
	v4:Textbox(
		"Watermark text",
		arg1.title,
		function(arg2)
			local str = tostring(arg2)

			if #str > 32 then
				str = str:sub(1, 32)
			end

			arg1._custom_title = str
		end
	)
	v4:Button(
		"Unload Script",
		false,
		function()
			arg1:Unload()
		end
	)
	local v5 = v1:Section("Config & Theme")
	local tbl = {}

	for k in pairs(arg1._themes or {}) do
		table.insert(tbl, k)
	end

	table.sort(tbl)
	v5:Dropdown(
		"Theme",
		{arg1._theme_name},
		tbl,
		false,
		false,
		function(arg2)
			if arg2 and arg2[1] then
				arg1:_ApplyTheme(arg2[1])
			end
		end
	)
	v5:Textbox(
		"New config name",
		"",
		function(_config_name)
			if _config_name and _config_name ~= "" then
				arg1._config_name = _config_name
			end
		end
	)
	arg1:_RefreshConfigList()
	local _config_list = arg1._config_list

	if #_config_list == 0 then
		_config_list = {"default"}
	end

	local v6 = v5:Dropdown(
		"Saved configs",
		{arg1._config_name},
		_config_list,
		false,
		false,
		function(arg2)
			if arg2 and arg2[1] then
				arg1._config_name = arg2[1]
			end
		end
	)
	v5:Button(
		"Save config",
		false,
		function()
			arg1:SaveConfig(arg1._config_name)
			local v1 = arg1:_RefreshConfigList()

			if #v1 == 0 then
				v1 = {"default"}
			end

			v6:UpdateChoices(v1)
		end
	)
	v5:Button(
		"Load config",
		false,
		function()
			arg1:LoadConfig(arg1._config_name)
		end
	)
	v5:Button(
		"Delete config",
		false,
		function()
			arg1:DeleteConfig(arg1._config_name)
			local v1 = arg1:_RefreshConfigList()

			if #v1 == 0 then
				v1 = {"default"}
			end

			v6:UpdateChoices(v1)
			arg1._config_name = v1[1] or "default"
		end
	)
	return v1, v4, v5
end

local function func19(arg1, arg2)
	local type_ = arg2.type_
	if type_ == "label" then
		local _, breaks = tostring(arg2.label or ""):gsub("\n", "")
		return (breaks + 1) * (arg1._font_size + 2) + arg1._padding
	end

	if type_ == "toggle" then
		local _font_size = arg1._font_size
		local _padding = arg1._padding
		return _font_size + 2 + _padding
	end

	if type_ == "slider" then
		local v1 = func6(arg1, arg2.label).y + 6
		local _padding1 = arg1._padding
		return v1 + 18 + _padding1 * 3
	end

	if type_ == "dropdown" then
		return func6(arg1, arg2.label).y * 2 + arg1._padding * 4
	end

	if type_ == "button" then
		return func6(arg1, arg2.label).y + arg1._padding * 3
	end

	if type_ == "textbox" then
		return arg1._font_size + arg1._padding * 2
	end

	return 0
end

local function func20(arg1, arg2)
	local _search_lower = arg1._search_lower

	if not _search_lower or _search_lower == "" then
		return true
	end

	if not arg2._lower_label then
		arg2._lower_label = arg2.label:lower()
	end

	return arg2._lower_label:find(_search_lower, 1, true) ~= nil
end

function uiLibrary.Step(arg1)
	local tbl = {}

	if arg1._unloaded then
		return
	end

	arg1._pIdx = {Square = 0, Text = 0, Triangle = 0, Circle = 0, Line = 0}
	arg1._tree = arg1._tree or {}
	arg1._tab_order = arg1._tab_order or {}
	arg1._sec_scroll = arg1._sec_scroll or {}
	arg1._sec_slide = arg1._sec_slide or {}
	arg1._inputs = arg1._inputs or {}
	arg1._item_vis = arg1._item_vis or {}
	arg1._tab_scroll = arg1._tab_scroll or {}
	arg1._frame_tooltip = nil
	tbl[1] = arg1._theming
	tbl[2] = arg1._corner
	tbl[3] = arg1._padding
	tbl[4] = arg1._KB_W
	tbl[5] = os.clock()
	tbl[6] = math.min(tbl[5] - arg1._last_step_time, 0.05)

	if arg1._last_step_time == 0 then
		tbl[6] = 0.016
	end

	arg1._last_step_time = tbl[5]
	tbl[7] = arg1._tab_changing
	tbl[8] = function(arg1)
		return (func7(arg1, tbl[6]))
	end

	if tbl[7] then
		arg1._tab_fade = func1(arg1._tab_fade, 0, (tbl[8](0.45)))
		if arg1._tab_fade < 0.02 then
			arg1._open_tab = arg1._next_tab
			arg1._tab_changing = false
			arg1._tab_fade = 0
			arg1._sec_slide = {}
			arg1._item_vis = {}
		end
	else
		arg1._tab_fade = func1(arg1._tab_fade, 1, (tbl[8](0.18)))
	end

	tbl[9] = func4(arg1._tab_fade)
	arg1:_PollMousePos()

	if arg1._autoload_requested and not arg1._boot_loaded then
		arg1._boot_loaded = true
		arg1._autoload_requested = false
		task.spawn(function()
			arg1:_DoAutoLoad()
		end)
	end

	arg1:_AutoSaveTick(tbl[6])
	tbl[10] = game:GetService("UserInputService")
	tbl[11] = false
	pcall(function()
		tbl[11] = tbl[10]:GetFocusedTextBox() ~= nil
	end)
	local flag = true

	if type(isrbxactive) == "function" then
		pcall(function()
			flag = isrbxactive()
		end)
	end

	if not arg1._kcCache then
		arg1._kcCache = {}
		for k in pairs(arg1._inputs) do
			if k == "m1" then
				arg1._kcCache[k] = Enum.UserInputType.MouseButton1
			elseif k == "m2" then
				arg1._kcCache[k] = Enum.UserInputType.MouseButton2
			elseif k == "mb" then
				arg1._kcCache[k] = Enum.UserInputType.MouseButton3
			else
				pcall(function()
					arg1._kcCache[k] = Enum.KeyCode[k:upper()]
				end)
			end
		end
	end

	local pollAll = arg1._search_typing or arg1._input_ctx ~= nil
	local needed = {m1 = true, m2 = true, mb = true}
	needed[tostring(arg1._overwrite_menu_key and arg1._menu_key or "f5"):lower()] = true
	for _, ref in ipairs(arg1._config_refs or {}) do
		local bind = ref.item and ref.item.keybind
		if bind then
			if bind._listening then pollAll = true end
			if type(bind.value) == "string" then needed[bind.value:lower()] = true end
		end
	end
	for k1, _input in pairs(arg1._inputs) do
		local flag1 = false

		if not pollAll and not needed[k1] then
			-- Keep skipped keys released; text entry and rebinding poll everything.
		elseif type(iskeypressed) == "function" then
			pcall(function()
				flag1 = iskeypressed(_input.id)
			end)
		else
			local v2 = arg1._kcCache[k1]
			if v2 then
				if k1 == "m1" or k1 == "m2" or k1 == "mb" then
					flag1 = tbl[10]:IsMouseButtonPressed(v2) == true
				else
					flag1 = tbl[10]:IsKeyDown(v2) == true
				end
			end
		end

		if not tbl[11] and flag and flag1 then
			arg1._inputs[k1].click = not _input.held and not _input.click
			arg1._inputs[k1].held = true
		else
			arg1._inputs[k1].click = false
			arg1._inputs[k1].held = false
		end
	end

	local v3 = arg1:_IsKeyPressed("m1")
	local v4 = arg1:_IsKeyHeld("m1")
	local v5 = arg1:_IsKeyPressed("m2")
	local v6 = tostring(arg1._overwrite_menu_key and arg1._menu_key or "f5"):lower()
	local v7 = arg1:_IsKeyPressed(v6)
	local flag2 = false
	local flag3 = false

	for k2, _input1 in pairs(arg1._inputs) do
		if not tbl4[k2] and not tbl1[k2] and not tbl2[k2] and not tbl3[k2] and _input1.click then
			flag3 = true
			break
		end
	end

	local v8 = v3 and not flag3

	if v7 then
		arg1._menu_open = not arg1._menu_open
		if not arg1._menu_open then
			arg1:_RemoveDropdown()
			arg1:_RemoveColorpicker()
			arg1:_RemoveCtxMenu()
			local v9 = v6:upper() .. " to open)"
			arg1:Notification("Menu Minimized (" .. v9, 3)
		end
	end

	if arg1._unloading_sequence then
		if arg1._unload_phase == "sections" then
			arg1._unload_section_alpha = func1(arg1._unload_section_alpha or 1, 0, (tbl[8](0.18)))
			if (arg1._unload_section_alpha or 0) < 0.04 then
				arg1._unload_section_alpha = 0
				arg1._unload_phase = "menu"
				arg1._menu_open = false
			end
		end
	end

	local v10 =
		arg1._menu_open and not (arg1._unload_phase == "menu" or arg1._unload_phase == "done") and 1
			or 0
	local _menu_scale = arg1._menu_scale

	if _menu_scale ~= v10 then
		local v11 = func1(_menu_scale, v10, (tbl[8](0.12)))
		_menu_scale = v11

		if math.abs(v11 - v10) < 0.002 then
			_menu_scale = v10
		end

		arg1._menu_scale = _menu_scale
	end

	if arg1._unloading_sequence and arg1._unload_phase == "menu" and _menu_scale < 0.01 then
		arg1._unloaded = true
		arg1:_FullWipe()
		return
	end

	local x = arg1.x
	local w = arg1.w
	local y = arg1.y
	local v12 = arg1._custom_title_enabled and arg1._custom_title or arg1.title
	local v13 = arg1:_GetTextBounds(v12).y + tbl[3] * 2 + 4
	local _search_query = arg1._search_query

	if _search_query ~= arg1._search_query_last then
		arg1._search_query_last = _search_query
		arg1._search_lower = _search_query ~= "" and _search_query:lower() or ""
		local tbl5 = {}

		if _search_query ~= "" then
			local _search_lower = arg1._search_lower
			for _, v14 in ipairs(arg1._tab_order) do
				local v15 = arg1._tree[v14]
				local num = 0

				if v15 then
					for _, v16 in ipairs(v15._sec_order or {}) do
						for _, v17 in ipairs((v15._items[v16] or {_items = {}})._items or {}) do
							if not v17._lower_label then
								v17._lower_label = v17.label:lower()
							end
							if v17._lower_label:find(_search_lower, 1, true) then
								num = num + 1
							end
						end
					end
				end

				tbl5[v14] = num
			end
		end

		arg1._search_tab_results = tbl5
	end

	if not arg1._pill_x then
		arg1._pill_x = 0
	end

	if not arg1._pill_target_x then
		arg1._pill_target_x = 0
	end

	local h = arg1.h
	local v18 = arg1._tree[arg1._open_tab]
	local tbl6 = {}
	local v19 = tbl[3]
	local tbl7 = {}
	local v20 = tbl[3]

	if v18 and (_menu_scale > 0.015 or arg1._menu_open) then
		for i, v21 in ipairs(v18._sec_order or {}) do
			local v22 = v18._items[v21] or {_items = {}}
			local v23 = func6(arg1, v21)
			local v24 = v23.y / 2
			local _items = v22._items
			local num1 = 0
			local v25 = tbl[3] + v24

			for _, v26 in ipairs(_items or {}) do
				local v27 = func20(arg1, v26)

				if v27 then
					num1 = num1 + 1
				end

				local _anim_key = v26._anim_key
				local v28 = v27 and 1 or 0
				local v29 = arg1._toggle_anim[_anim_key]

				if v29 == nil then
					v29 = v28
				end

				if v29 ~= v28 then
					v29 = func1(v29, v28, (tbl[8](0.15)))
				end

				arg1._toggle_anim[_anim_key] = v29

				if v29 > 0.001 then
					v25 = v25 + func19(arg1, v26) * v29
				end
			end

			local v30 = "sec_anim_" .. arg1._open_tab .. "_" .. v21
			local v31 = num1 > 0 and 1 or 0
			arg1._toggle_anim[v30] = func1(arg1._toggle_anim[v30] or v31, v31, (tbl[8](0.15)))
			local v32 = arg1._toggle_anim[v30]

			if v32 > 0.001 then
				local v33 = v25 + tbl[3] * v32
				if i % 2 == 0 then
					table.insert(tbl7, {name = v21, h = v33, tsz = v23, anim = v32})
					v20 = v20 + v33 + (v23.y / 2 + tbl[3]) * v32
				else
					table.insert(tbl6, {name = v21, h = v33, tsz = v23, anim = v32})
					v19 = v19 + v33 + (v23.y / 2 + tbl[3]) * v32
				end
			end
		end

		local v34 = math.max(v19, v20)
		local v35 = v13 + arg1._tab_h + tbl[3] * 3 + v34 + 4
		local v36 = v13 + arg1._tab_h
		local v37 = tbl[3] * 4
		local h1 = arg1.h
		h = func2(v35, v36 + v37, h1)
	end

	local v38 = arg1:_GetScreenSize()

	if arg1._active_dropdown then
		local _active_dropdown = arg1._active_dropdown
		local v39 = arg1._font_size + 9
		local v40 = math.min(#(_active_dropdown.choices or {}), 6) * v39
		local position = _active_dropdown.position
		local v41 = v40 + tbl[3]
		local v42 = position.y - y + v41
		local position1 = _active_dropdown.position
		local v43 = v42 + 12

		if position1.y + v41 < v38.y - 10 and v43 > h then
			h = v43
		end
	end

	if arg1._active_colorpicker and not arg1._active_colorpicker._closing then
		local _active_colorpicker = arg1._active_colorpicker
		local v44 = _active_colorpicker.position.y - y + 215
		local position2 = _active_colorpicker.position
		local v45 = v44 + 12
		local y1 = position2.y
		local y2 = v38.y

		if y1 + 215 < y2 - 10 and v45 > h then
			h = v45
		end
	end

	local v46 = arg1._current_h or arg1.h

	if v46 ~= h then
		local v47 = func1(v46, h, (tbl[8](0.22)))
		v46 = v47

		if math.abs(v47 - h) < 0.5 then
			v46 = h
		end

		arg1._current_h = v46
	end

	local v48 = Vector2.new(w - 2, h - v13 - 2).y - arg1._tab_h - tbl[3] * 2
	local v49 = math.max(0, math.max(v19, v20) - v48 + tbl[3])

	if arg1._menu_open and v4 and arg1._menu_drag then
		local v50 = arg1._cached_mouse or Vector2.new()
		arg1.x = v50.x - arg1._menu_drag.x
		arg1.y = v50.y - arg1._menu_drag.y
	elseif not v4 then
		arg1._menu_drag = nil
	end

	local v51 = func6(arg1, v12)
	local x1 = v51.x
	local v52 = v51.y + 16
	local v53 = x1 + 44
	local vector2 = Vector2.new(v38.x - v53 - 16, 16)
	local v54 =
		arg1._unloading_sequence and arg1._unload_phase == "menu" and func4(_menu_scale) or 1

	if arg1._watermark_enabled then
		local shadow = tbl[1].shadow
		local v55 = 0.2 * v54
		local vector21 = Vector2.new(2, 3)
		local v56 = vector2 + vector21
		local vector22 = Vector2.new(v53, v52)
		arg1:_Draw("rect", shadow, 98, v55, v56, vector22, true, tbl[2])
		local surface0 = tbl[1].surface0
		local vector23 = Vector2.new(v53, v52)
		arg1:_Draw("rect", surface0, 99, v54, vector2, vector23, true, tbl[2])
		local border1 = tbl[1].border1
		local vector24 = Vector2.new(v53, v52)
		arg1:_Draw("rect", border1, 100, v54, vector2, vector24, false, tbl[2])
		local accent = tbl[1].accent
		local v57 = vector2 + Vector2.new(12, v52 / 2)
		arg1:_Draw("circle", accent, 101, v54, v57, 3.5, true)
		local text = tbl[1].text
		local vector25 = Vector2.new(22, (v52 - arg1._font_size) / 2 + 1)
		arg1:_Draw("text", text, 101, v54, vector2 + vector25, v12, false, nil, 13)
	end

	local v58 = 16 + v52
	local _notifications = arg1._notifications
	local v59 = v58 + 10
	local v60 = #_notifications

	if not (v60 < 1) then
		repeat
			local v61 = arg1._notifications[v60]
			local v62 = v61._spawned_at + v61.time
			local v63 = tbl[5] > v62
			local v64 = math.max(
				0,
				math.min(v61._spawned_at - tbl[5] + (v63 and v61.time + 1 or 1), 1)
			)
			local v65 = math.abs((v63 and 0 or 1) - v64 * v64 * (3 - 2 * v64))
			local _GetTextBounds = arg1._GetTextBounds
			local text1 = v61.text
			local v66 = v65 * v54
			local v67 = _GetTextBounds(arg1, text1)
			local v68 = v67.x + tbl[3] * 2 + 6
			local v69 = v67.y + tbl[3] * 1.2
			local v70 = (v68 + 40) * (1 - func4(v66))
			local vector26 = Vector2.new(v38.x - v68 - 16 + v70, v59)
			local v71 = math.max(0, math.min(v66, 1))
			local shadow1 = tbl[1].shadow
			local v72 = vector26 + Vector2.new(2, 4)
			local vector27 = Vector2.new(v68, v69)
			local v73 = tbl[2] + 2
			arg1._Draw(arg1, "rect", shadow1, 103, 0.15 * v71, v72, vector27, true, v73)
			local surface01 = tbl[1].surface0
			local vector28 = Vector2.new(v68, v69)
			arg1:_Draw("rect", surface01, 104, v71, vector26, vector28, true, tbl[2] + 2)
			local border11 = tbl[1].border1
			local vector29 = Vector2.new(v68, v69)
			local v74 = tbl[2] + 2
			arg1._Draw(arg1, "rect", border11, 105, v71, vector26, vector29, false, v74)
			local text2 = tbl[1].text
			local vector210 = Vector2.new(tbl[3], (v69 - arg1._font_size) / 2 + 1)
			arg1:_Draw("text", text2, 105, v71, vector26 + vector210, v61.text, false)
			v59 = v59 + (v69 + 6) * v66

			if tbl[5] > v62 + 1 then
				table.remove(arg1._notifications, v60)
			end

			v60 = v60 + -1
		until v60 < 1
	end



	if arg1._keybind_list_enabled then
		local entries = {}
		for _, ref in ipairs(arg1._config_refs or {}) do
			local item = ref.item
			local bind = item and item.keybind
			if bind and bind.value and bind.value ~= "" and ref.label ~= "Menu Key" and #entries < 14 then
				entries[#entries + 1] = item
			end
		end
		local x, y, width = arg1._keybind_x or 12, arg1._keybind_y or 120, 190
		local mouse = arg1:_GetMousePos()
		if not v4 then arg1._keybind_drag = nil end
		if v3 and not arg1._menu_drag and mouse.x >= x and mouse.x <= x + width
			and mouse.y >= y and mouse.y <= y + 28 then
			arg1._keybind_drag = {x = mouse.x - x, y = mouse.y - y}
			v3, v8, flag2 = false, false, true
		end
		if arg1._keybind_drag and v4 then
			x = math.max(0, mouse.x - arg1._keybind_drag.x)
			y = math.max(0, mouse.y - arg1._keybind_drag.y)
			arg1._keybind_x, arg1._keybind_y = x, y
			v3, v8, flag2 = false, false, true
		end
		arg1:_Draw("rect", tbl[1].surface0, 90, 0.95, Vector2.new(x, y), Vector2.new(width, 28 + #entries * 17), true, 4)
		arg1:_Draw("text", tbl[1].accent, 91, 1, Vector2.new(x + 8, y + 6), "keybinds", false)
		for i, item in ipairs(entries) do
			local label = "[" .. tostring(item.keybind.value):upper() .. "] " .. tostring(item.label or "bind")
			arg1:_Draw("text", item.value and tbl[1].accent or tbl[1].subtext, 91, 1, Vector2.new(x + 8, y + 10 + i * 17), label, false)
		end
	else
		arg1._keybind_drag = nil
	end

	if _menu_scale <= 0.015 then
		for k3, v75 in pairs(arg1._pool or {}) do
			for i1 = (arg1._pIdx[k3] or 0) + 1, #v75 do
				local v76 = v75[i1]
				local v77 = arg1._pool_state[k3][i1]

				if v77 and v77.Visible ~= false then
					pcall(function()
						v76.Visible = false
					end)
					v77.Visible = false
				end
			end
		end
		return
	end

	local v78 = (1 - func4(_menu_scale)) * 50
	local v79 = func4(_menu_scale)
	local flag4 = false

	if arg1._dd_drag or arg1._slider_drag or arg1._tab_scroll_drag then
		flag4 = true
	end

	local _active_dropdown1 = arg1._active_dropdown

	if _active_dropdown1 then
		local v80 = math.min(#(_active_dropdown1.choices or {}), 6) * (arg1._font_size + 9)
		local _GetScreenSize = arg1._GetScreenSize
		local position3 = _active_dropdown1.position
		local v81 = v80 + tbl[3]
		local v82 = _GetScreenSize(arg1)
		local y3 = position3.y
		local y4 = v82.y

		if y3 + v81 > y4 - 10 then
			local new = Vector2.new
			local x2 = position3.x
			local _srcH = _active_dropdown1._srcH
			position3 = new(x2, position3.y - v81 - (_srcH or 0))
		end

		local v83 = table.pack(Vector2.new(_active_dropdown1.width, v81))

		if arg1:_IsMouseWithinBounds(position3, table.unpack(v83, 1, v83.n)) then
			flag4 = true
		end
	end

	local _active_colorpicker1 = arg1._active_colorpicker

	if _active_colorpicker1 and not _active_colorpicker1._closing then
		local position4 = _active_colorpicker1.position
		local v84 = table.pack(Vector2.new(240, 215))

		if arg1:_IsMouseWithinBounds(position4, table.unpack(v84, 1, v84.n)) then
			flag4 = true
		end
	end

	if arg1._ctx_menu then
		flag4 = true
	end

	local shadow2 = tbl[1].shadow
	local v85 = 0.12 * v79
	local new1 = Vector2.new
	local v86 = y + v78
	local v87 = new1(x - 1, v86 + 3)
	local vector211 = Vector2.new(w + 2, v46)
	arg1:_Draw("rect", shadow2, 0, v85, v87, vector211, true, tbl[2] + 1)
	local shadow3 = tbl[1].shadow
	local v88 = 0.06 * v79
	local new2 = Vector2.new
	local v89 = y + v78
	local v90 = new2(x - 3, v89 + 6)
	local vector212 = Vector2.new(w + 6, v46)
	arg1:_Draw("rect", shadow3, 0, v88, v90, vector212, true, tbl[2] + 3)
	local body = tbl[1].body
	local v91 = y + v78
	local vector213 = Vector2.new(x, v91)
	local vector214 = Vector2.new(w, v46)
	arg1:_Draw("rect", body, 1, v79, vector213, vector214, true, tbl[2])
	local surface02 = tbl[1].surface0
	local vector215 = Vector2.new(x + 1, y + v78 + 1)
	local vector216 = Vector2.new(w - 2, v13)
	arg1:_Draw("rect", surface02, 20, v79, vector215, vector216, true, tbl[2] - 1)
	local border12 = tbl[1].border1
	local new3 = Vector2.new
	local v92 = y + v78
	local v93 = new3(x + 1, v92 + v13)
	local vector217 = Vector2.new(w - 2, 1)
	arg1:_Draw("rect", border12, 21, v79, v93, vector217, true)
	local v94 = y + v78 + v13 / 2
	local v95 = x + 16
	local vector218 = Vector2.new(v95, v94)
	arg1:_Draw("circle", v1, 22, v79, vector218, 6, true)
	local vector219 = Vector2.new(v95 + 20, v94)
	arg1:_Draw("circle", color1, 22, v79, vector219, 6, true)
	local vector220 = Vector2.new(v95 + 40, v94)
	arg1:_Draw("circle", color4, 22, v79, vector220, 6, true)
	local vector221 = Vector2.new(v95, v94)
	arg1:_Draw("circle", color, 23, v79, vector221, 6, false)
	local vector222 = Vector2.new(v95 + 20, v94)
	arg1:_Draw("circle", color2, 23, v79, vector222, 6, false)
	local vector223 = Vector2.new(v95 + 40, v94)
	arg1:_Draw("circle", color5, 23, v79, vector223, 6, false)
	local v96 = v8

-- https://leakd.fr
	if v8 then
		local vector224 = Vector2.new(v95 - 6, v94 - 6)
		local v97 = table.pack(Vector2.new(12, 12))
		v96 = arg1:_IsMouseWithinBounds(vector224, table.unpack(v97, 1, v97.n))
	end

	if v96 then
		arg1._menu_open = false
		arg1:_RemoveDropdown()
		arg1:_RemoveColorpicker()
		arg1:_RemoveCtxMenu()
		arg1:Notification("Menu Minimized", 3)
		flag2 = true
		v3 = false
	end

	if arg1._menu_open and _menu_scale > 0.5 then
		local text3 = tbl[1].text
		local new4 = Vector2.new
		local v98 = w / 2
		local v99 = y + v78
		local v100 = new4(x + v98, v99 + v13 / 2)
		arg1:_Draw("text", text3, 22, v79, v100, v12, false, "center")
	end

	arg1._search_query = arg1._search_query or ""
	arg1._search_typing = arg1._search_typing or false
	arg1._search_w_anim = arg1._search_w_anim or 22
	arg1._search_w_anim = func1(
		arg1._search_w_anim,
		(arg1._search_typing or arg1._search_query ~= "") and 130 or 22,
		(tbl[8](0.2))
	)
	local v101 = x + w
	local _search_w_anim = arg1._search_w_anim
	local v102 = v101 - _search_w_anim
	local v103 = y + v78
	local v104 = v102 - 10
	local v105 = (v13 - 22) / 2
	local v106 = v103 + v105
	local vector225 = Vector2.new(v104, v106)
	local vector226 = Vector2.new(_search_w_anim, 22)
	local v107 = not flag4 and arg1:_IsMouseWithinBounds(vector225, vector226)

	if v8 and v107 then
		arg1._search_typing = true
		flag2 = true
		v3 = false
	elseif v8 and not flag2 then
		arg1._search_typing = false
	end

	if arg1._search_typing and arg1:_IsKeyPressed("esc") then
		arg1._search_query = ""
		arg1._search_typing = false
	end

	if arg1._search_typing then
		local tbl8 = {
			space = " ",
			dash = "-",
			colon = ":",
			period = ".",
			comma = ",",
			slash = "/",
			semicolon = ";",
			quote = "'",
			leftbracket = "[",
			rightbracket = "]",
			backslash = "\\",
			equals = "=",
			minus = "-"
		}

		local tbl9 = {
			["1"] = "!",
			["2"] = "@",
			["3"] = "#",
			["4"] = "$",
			["5"] = "%",
			["6"] = "^",
			["7"] = "&",
			["8"] = "*",
			["9"] = "(",
			["0"] = ")",
			["-"] = "_",
			["="] = "+",
			["["] = "{",
			["]"] = "}",
			[";"] = ":",
			["''"] = '"',
			[","] = "<",
			["."] = ">",
			["/"] = "?",
			["\\"] = "|"
		}

		local _search_query1 = arg1._search_query
		local v108 = arg1:_IsKeyHeld("lshift") or arg1:_IsKeyHeld("rshift")
		local k4Ref

		for k4 in pairs(arg1._inputs or {}) do
			if arg1:_IsKeyHeld(k4) then
				k4Ref = k4
				break
			end
		end

		if k4Ref then
			if not arg1._key_repeat[k4Ref] then
				arg1._key_repeat[k4Ref] = os.clock() + 0.4
			elseif os.clock() > arg1._key_repeat[k4Ref] then
				arg1._key_repeat[k4Ref] = os.clock() + 0.05
				local v109 = tbl8[k4Ref] or k4Ref

				if v109 == "backspace" then
					_search_query1 = _search_query1:sub(1, -2)
				elseif #v109 == 1 then
					if v108 and tbl9[v109] then
						v109 = tbl9[v109]
					elseif v108 then
						v109 = v109:upper()
					end
					if #_search_query1 < 24 then
						_search_query1 = _search_query1 .. v109
					end
				end

				arg1._search_query = _search_query1
			end
		else
			arg1._key_repeat = {}
		end

		for k5 in pairs(arg1._inputs or {}) do
			if arg1:_IsKeyPressed(k5) then
				local v110 = tbl8[k5] or k5

				if v110 == "enter" then
					arg1._search_typing = false
					break
				end

				if v110 == "backspace" then
					_search_query1 = _search_query1:sub(1, -2)
				elseif #v110 == 1 then
					if v108 and tbl9[v110] then
						v110 = tbl9[v110]
					elseif v108 then
						v110 = v110:upper()
					end
					if #_search_query1 < 24 then
						_search_query1 = _search_query1 .. v110
					end
				end

				arg1._search_query = _search_query1
			end
		end
	end

	local v111 = func2((_search_w_anim - 22) / 108, 0, 1)
	local v112 = func3(tbl[1].body, tbl[1].surface1, v111)
	arg1:_Draw("rect", v112, 22, v79, vector225, vector226, true, 11)
	arg1:_Draw(
		"rect",
		arg1._search_typing and tbl[1].accent or tbl[1].border1,
		23,
		v79,
		vector225,
		vector226,
		false,
		11
	)
	local y5 = vector226.y
	local y6 = vector225.y
	local v113 = vector225.x + 10
	local v114 = y6 + y5 / 2
	local subtext = tbl[1].subtext
	local text4 = tbl[1].text
	local v115 = v114 - 1
	local v116 = func3(subtext, text4, v111)
	local vector227 = Vector2.new(v113, v115)
	arg1:_Draw("circle", v116, 24, v79, vector227, 3, false)
	local vector228 = Vector2.new(v113 + 2, v115 + 2)
	local new5 = Vector2.new
	local v117 = v115 + 5
	local v118 = new5(v113 + 5, v117)
	arg1:_Draw("line", v116, 24, v79, vector228, v118, 2)

	if v111 > 0.05 then
		local _search_query2 = arg1._search_query

		if arg1._search_typing then
			_search_query2 = _search_query2 .. (math.floor(os.clock() * 2) % 2 == 0 and "|" or "")
		end

		if _search_query2 == "" and not arg1._search_typing then
			_search_query2 = "Global search..."
		end

		if arg1:_GetTextBounds(_search_query2).x > vector226.x - 24 - 8 then
            for startIndex = 1, #_search_query2 do
                local suffix = _search_query2:sub(startIndex)
                if arg1:_GetTextBounds(suffix).x <= vector226.x - 24 - 8 then
                    _search_query2 = suffix
                    break
                end
            end
		end

		local v121 =
			(arg1._search_query ~= "" or arg1._search_typing) and tbl[1].text or tbl[1].subtext
		local v122 = v79 * v111
		local vector229 = Vector2.new(24, vector226.y / 2 - arg1._font_size / 2)
		arg1:_Draw("text", v121, 24, v122, vector225 + vector229, _search_query2, false)
	end

	local vector230 = Vector2.new(x + 1, y + v13 + 1)
	local new6 = Vector2.new
	local v123 = y + v78
	local v124 = new6(x + 1, v123 + v13 + 1)
	local new7 = Vector2.new
	local v125 = v46 - v13
	local v126 = new7(w - 2, v125 - 2)
	local v127 = v124.y + arg1._tab_h + tbl[3]
	local v128 = v126.y - arg1._tab_h - tbl[3] * 2
	local v129 = v127 + v128
	local _scroll_delta = arg1._scroll_delta
	arg1._scroll_delta = 0
	pcall(function()
		if _scroll_delta == 0 then
			local v1 = getmousedelta()
			if v1 and v1.Y ~= 0 then
				_scroll_delta = v1.Y > 0 and 18 or -18
			end
		end
	end)

	if _scroll_delta ~= 0 then
		if arg1._active_colorpicker then
			arg1:_RemoveColorpicker()
		end
	end

	local x3 = v126.x
	local v130 = #arg1._tab_order
	local v131 = x3 - 12
	local v132 = math.max(1, v130)
	local v133 = v131 / v132
	local vector231 = Vector2.new(6, 6)
	local v134 = v124 + vector231
	local vector232 = Vector2.new(6, 6)
	local surface1 = tbl[1].surface1
	local v135 = vector230 + vector232
	local vector233 = Vector2.new(v131, arg1._tab_h)
	arg1:_Draw("rect", surface1, 20, v79, v134, vector233, true, tbl[2])
	local border13 = tbl[1].border1
	local vector234 = Vector2.new(v131, arg1._tab_h)
	arg1:_Draw("rect", border13, 21, v79, v134, vector234, false, tbl[2])

	for i2, v136 in ipairs(arg1._tab_order) do
		local vector235 = Vector2.new(v133 * (i2 - 1), 0)
		local v137 = v134 + vector235
		local vector236 = Vector2.new(v133 * (i2 - 1), 0)
		local v138 = v135 + vector236
		local vector237 = Vector2.new(v133, arg1._tab_h)
		local v139 = arg1._open_tab == v136
		local v140 = arg1._search_tab_results[v136] or 0
		local v141 = v139 and tbl[1].text or tbl[1].subtext
		local v142 = v137 + Vector2.new(v133 / 2, arg1._tab_h / 2)
		arg1:_Draw("text", v141, 24, v79, v142, v136, false, "center")

		if arg1._search_query ~= "" and v140 > 0 and not v139 then
			local v143 = arg1:_GetTextBounds(v136, nil, arg1._font_size)
			local x4 = v137.x
			local v144 = v133 / 2
			local x5 = v143.x
			local v145 = x4 + v144 + x5 / 2 + 6
			local v146 = v137.y + arg1._tab_h / 2 - 4
			local accent1 = tbl[1].accent
			local vector238 = Vector2.new(v145, v146)
			arg1:_Draw("circle", accent1, 25, v79, vector238, 3, true)
		end

		if
			not v139
				and not flag4
				and arg1:_IsMouseWithinBounds(v138, vector237)
				and v3
				and not flag2
		then
			if not arg1._tab_changing then
				arg1._tab_changing = true
				arg1._next_tab = v136
				arg1._input_ctx = nil
				arg1:_RemoveDropdown()
				arg1:_RemoveColorpicker()
				arg1:_RemoveCtxMenu()
				arg1._pill_target_x = v133 * (i2 - 1)
				v3 = false
				flag2 = true
			end
		end
	end

	arg1._pill_x = func1(arg1._pill_x, arg1._pill_target_x, (tbl[8](0.16)))
	local surface03 = tbl[1].surface0
	local v147 = v134.x + arg1._pill_x
	local vector239 = Vector2.new(v147 + 3, v134.y + 3)
	local vector240 = Vector2.new(v133 - 6, arg1._tab_h - 6)
	local v148 = tbl[2] - 2
	arg1._Draw(arg1, "rect", surface03, 22, v79, vector239, vector240, true, v148)
	local border0 = tbl[1].border0
	local vector241 = Vector2.new(v147 + 3, v134.y + 3)
	local vector242 = Vector2.new(v133 - 6, arg1._tab_h - 6)
	arg1:_Draw("rect", border0, 23, v79, vector241, vector242, false, tbl[2] - 2)

	for _, v149 in ipairs(arg1._tab_order) do
		if
			arg1._tree[v149] and arg1._open_tab == v149 and arg1._menu_open and _menu_scale > 0.5
		then
			arg1._tab_scroll[v149] =
				arg1._tab_scroll[v149] or {offset = 0, target = 0, maxScroll = 0}
			local v150 = arg1._tab_scroll[v149]
			local v151 = math.max(v19, v20) - v128
			v150.maxScroll = math.max(0, v151 + tbl[3])

			if v49 > 0 and v150.maxScroll > 0 and tbl[9] > 0.75 then
				local v152 = v124.x + v126.x - 3 - 2
				local v153 = math.max(20, v128 * (v128 / (v128 + v150.maxScroll)))
				local vector243 = Vector2.new(19, v128)
				local new8 = Vector2.new
				local v154 = new8(v152 - 8, v127)
				local v155 = not flag4 and arg1:_IsMouseWithinBounds(v154, vector243)

				if v4 then
					if (v155 or arg1._tab_scroll_drag == v149) and v3 and not flag2 then
						arg1._tab_scroll_drag = v149
						flag2 = true
						v3 = false
					end
					if arg1._tab_scroll_drag == v149 then
						local v156 = arg1:_GetMousePos().y - v127 - v153 / 2
						local v157 = v128 - v153
						v150.target = func2(v156 / math.max(1, v157), 0, 1) * v150.maxScroll
					end
				elseif arg1._tab_scroll_drag == v149 then
					arg1._tab_scroll_drag = nil
				end
			end
		end
	end

	for _, v158 in ipairs(arg1._tab_order) do
		local v159 = arg1._tree[v158]
		if v159 and arg1._open_tab == v158 then
			arg1._tab_scroll[v158] =
				arg1._tab_scroll[v158] or {offset = 0, target = 0, maxScroll = 0}
			local v160 = arg1._tab_scroll[v158]
			local v161 = arg1._menu_open and _menu_scale > 0.5
			local v162 = v126.x / 2 - tbl[3] * 1.5
			local v163 = math.max(v19, v20)
			local v164 = math.max(0, v163 - v128 + tbl[3])
			v160.maxScroll = v164

			if v161 then
				if v49 > 0 and v164 > 0 and tbl[9] > 0.75 then
					local v165 = v124.x + v126.x - 3 - 2
					local v166 = v128 + v164
					local v167 = math.max(20, v128 * (v128 / v166))
					local v168 = v128 - v167
					local offset = v160.offset
					local v169 = math.max(1, v164)
					local v170 = v127 + v168 * (offset / v169)

					if
						_scroll_delta ~= 0 and not flag4 and arg1:_IsMouseWithinBounds(v124, v126)
					then
						v160.target = func2(v160.target - _scroll_delta, 0, v164)
					end

					local v171 = func2((tbl[9] - 0.75) / 0.25, 0, 1)
					local v172 = v79 * v171
					local border01 = tbl[1].border0
					local v173 = 0.35 * v172
					local vector244 = Vector2.new(v165, v127)
					local vector245 = Vector2.new(3, v128)
					arg1:_Draw("rect", border01, 13, v173, vector244, vector245, true, 1.5)
					local subtext1 = tbl[1].subtext
					local v174 = 0.7 * v172
					local vector246 = Vector2.new(v165, v170)
					local vector247 = Vector2.new(3, v167)
					arg1:_Draw("rect", subtext1, 14, v174, vector246, vector247, true, 1.5)
				elseif
					_scroll_delta ~= 0 and not flag4 and arg1:_IsMouseWithinBounds(v124, v126)
				then
					v160.target = func2(v160.target - _scroll_delta, 0, v164)
				end
			end

			if v160.offset ~= v160.target then
				v160.offset = func1(v160.offset, v160.target, (tbl[8](0.18)))
				if math.abs(v160.offset - v160.target) < 0.5 then
					v160.offset = v160.target
				end
			end

			local offset1 = v160.offset

			local function func(arg11, _, arg3)
				local v1 = v127 + tbl[3]
				local v2 = v1 - offset1

				for _, v6 in ipairs(arg11) do
					local name = v6.name
					local anim = v6.anim
					local h = v6.h
					local tsz = v6.tsz
					local v7 = "menu_sec_" .. v158 .. "_" .. name
					arg1._sec_slide = arg1._sec_slide or {}

					if arg1._sec_slide[v7] == nil then
						arg1._sec_slide[v7] = 10
					end

					local v8 = arg1._sec_slide[v7]

					if v8 ~= 0 then
						v8 = func1(v8, 0, (tbl[8](0.14)))

						if math.abs(v8) < 0.25 then
							v8 = 0
						end

						arg1._sec_slide[v7] = v8
					end

					local v9 = v2 + tsz.y / 2 * anim + v8
					local vector2 = Vector2.new(arg3, v9)

					if v161 then
						local y = vector2.y
						local v10 = vector2.y + h
						local v11 = math.max(y, v127)
						local v12 = math.min(v10, v129) - v11
						local v13 = math.max(0, v12)
						local v14 = v13 > 0
						local v15 = anim * tbl[9]

						if arg1._unloading_sequence and arg1._unload_phase == "sections" then
							v15 = v15 * (arg1._unload_section_alpha or 1)
						end

						if v14 and v15 > 0.001 then
							local shadow = tbl[1].shadow
							local v16 = 0.1 * v15
							arg1:_Draw(
								"rect",
								shadow,
								2,
								v16 * v79,
								Vector2.new(vector2.x + 2, v11 + 3),
								Vector2.new(v162, v13),
								true,
								tbl[2]
							)
							arg1:_Draw(
								"rect",
								tbl[1].surface0,
								3,
								v15 * v79,
								Vector2.new(vector2.x, v11),
								Vector2.new(v162, v13),
								true,
								tbl[2]
							)
							arg1:_Draw(
								"rect",
								tbl[1].border1,
								4,
								v15 * v79,
								Vector2.new(vector2.x, v11),
								Vector2.new(v162, v13),
								false,
								tbl[2]
							)
						end

						local v17 = vector2.y - tsz.y / 2 * anim
						local y1 = tsz.y
						local v18 = v17 - 7
						local v19 = v18 + y1
						local v20 = anim * tbl[9]

						if v19 > v127 and v18 < v129 then
							local v21 = v18 - v127
							local v22 = v129 - v19

							if v21 < 12 then
								v20 = math.min(v20, math.max(0, v21 / 12))
							end

							if v22 < 12 then
								v20 = math.min(v20, math.max(0, v22 / 12))
							end

							if v21 < 0 or v22 < 0 then
								v20 = 0
							end

							if arg1._unloading_sequence and arg1._unload_phase == "sections" then
								v20 = v20 * (arg1._unload_section_alpha or 1)
							end
						else
							v20 = 0
						end

						if v20 > 0.001 then
							local subtext = tbl[1].subtext
							arg1:_Draw(
								"text",
								subtext,
								6,
								v79 * v20,
								Vector2.new(vector2.x + tbl[3], v18),
								name,
								false
							)
						end

						local v23 = v159._items and v159._items[name]
						local v24 = (tbl[3] + tsz.y / 2) * anim

						for i, v25 in ipairs((v23 or {_items = {}})._items or {}) do
							local v26 = arg1._toggle_anim[v25._anim_key] or 0
							if v26 > 0.001 then
								local v27 = func19(arg1, v25)
								local v28 = v27 * v26
								local vector21 = Vector2.new(vector2.x + tbl[3], vector2.y + v24)
								local type_ = v25.type_
								local value = v25.value
								local callback = v25.callback
								local v29 = name .. tostring(i)
								local y2 = vector21.y
								local v30 = v158 .. v29
								local v31 = vector21.y + v28 - tbl[3] * v26
								local v32 = v14 and v31 >= v127 and y2 <= v129
								local v33 = v26 * tbl[9]

								if v32 then
									local v34 = y2 - v127
									local v35 = v129 - v31

									if v34 < 12 then
										v33 = math.min(v33, math.max(0, v34 / 12))
									end

									if v35 < 12 then
										v33 = math.min(v33, math.max(0, v35 / 12))
									end

									if v34 < 0 or v35 < 0 then
										v33 = 0
									end

									if
										arg1._unloading_sequence
											and arg1._unload_phase == "sections"
									then
										v33 = v33 * (arg1._unload_section_alpha or 1)
									end
								end

								if v33 <= 0.001 then
									v32 = false
								end

								local _id = v25._id
								local v36 = v32 and v33 > 0.4

								if v32 then
									arg1._item_vis[_id] = true
									local v37 = v36 and v3 and not flag2
									local v38 = v79 * v33 * anim

									if type_ == "toggle" then
										local v39 = value and 1 or 0
										local v40 = arg1._toggle_anim[v30]

										if v40 == nil then
											v40 = v39
										elseif v40 ~= v39 then
											v40 = func1(v40, v39, (tbl[8](0.1)))
										end

										arg1._toggle_anim[v30] = v40
										local v41 = arg1._font_size + 2
										local keybind = v25.keybind
										local colorpicker = v25.colorpicker
										local num = 0

										if keybind then
											local value1 = keybind.value
											num = tbl[4] + tbl[3]
											local v42 = (value1 or "?"):upper()
											local v43 = keybind._listening and "..." or v42
											local num1 = 12

											while
												num1 > 7
													and arg1:_GetTextBounds(v43, nil, num1).x > tbl[4] - 6
											do
												num1 = num1 - 1
											end

											local new = Vector2.new
											local v44 = vector2.x + v162 - tbl[4]
											local y3 = vector21.y
											local v45 = v44 - tbl[3]
											local v46 = new(v45, y3 + (v41 - arg1._font_size) / 2)
											local vector22 = Vector2.new(tbl[4], arg1._font_size + 2)
											local v47 =
												not flag4 and arg1:_IsMouseWithinBounds(v46, vector22)
											local v48 =
												v47 and func3(tbl[1].surface1, tbl[1].accent, 0.2)
													or tbl[1].surface1

											if keybind.value and not keybind._listening then
												if arg1:_IsKeyPressed(keybind.value) then
													if v25.value then
														local v49 = not v25.value
														v25.value = v49

														if callback then
															callback(v49)
														end
													else
														arg1:Notification("Enable " .. v25.label .. " first", 3)
													end
												end
											end

											local shadow1 = tbl[1].shadow
											arg1:_Draw(
												"rect",
												shadow1,
												6,
												0.1 * v38,
												v46 + Vector2.new(1, 2),
												vector22,
												true,
												6
											)
											arg1:_Draw("rect", v48, 7, v38, v46, vector22, true, 6)
											arg1:_Draw(
												"rect",
												keybind._listening and tbl[1].accent or tbl[1].border1,
												8,
												v38,
												v46,
												vector22,
												false,
												6
											)
											local v50 =
												(v47 or keybind._listening) and tbl[1].text
													or tbl[1].subtext
											local new1 = Vector2.new
											local y4 = vector22.y
											arg1:_Draw(
												"text",
												v50,
												8,
												v38,
												v46 + new1(tbl[4] / 2, y4 / 2),
												v43,
												false,
												"center",
												num1
											)

											if v47 and v37 then
												keybind._listening = true
												keybind._listening_start = os.clock()
												v3 = false
												flag2 = true
											end

											if keybind._listening then
												local v51 = os.clock() - keybind._listening_start
												if v51 > 6 then
													keybind._listening = false
												elseif v51 > 0.15 then
													for k, v52 in pairs(arg1._inputs or {}) do
														if arg1:_IsKeyPressed(k) then
															if k == "m1" then
																keybind._listening = false
															else
																local v53 = k ~= "backspace" and k

																if v53 then
																	for _, v54 in ipairs(arg1._config_refs or {}) do
																		local item = v54.item
																		if
																			item ~= v25 and item.keybind and item.keybind.value == v53
																		then
																			arg1:Notification(
																				"Conflict: " .. v53:upper() .. " used by " .. item.label,
																				4
																			)
																		end
																	end
																end

																if keybind.callback and arg1._inputs[v53] then
																	keybind.callback(v52.id)
																end

																keybind.value = v53
																keybind._listening = false
															end
														end
													end
												end
											end
										elseif colorpicker then
											local vector23 = Vector2.new(24, 14)
											local new2 = Vector2.new
											local v55 = v162 - tbl[3] * 2
											local x = vector23.x
											local y5 = vector23.y
											local v56 = vector21 + new2(v55 - x, (v41 - y5) / 2)
											num = vector23.x + tbl[3] * 2
											local v57 =
												not flag4 and arg1:_IsMouseWithinBounds(v56, vector23)
											arg1:_Draw(
												"rect",
												tbl[1].border1,
												7,
												v38,
												v56,
												vector23,
												true,
												4
											)
											arg1:_Draw(
												"rect",
												colorpicker.value,
												8,
												v38,
												v56 + Vector2.new(1, 1),
												vector23 - Vector2.new(2, 2),
												true,
												4
											)

											if v57 and v37 then
												arg1:_SpawnColorpicker(
													nil,
													colorpicker.label,
													colorpicker.value,
													function(value)
														colorpicker.value = value
														if colorpicker.callback then
															colorpicker.callback(value)
														end
													end
												)
												v3 = false
												flag2 = true
											end
										end

										local v58 =
											v25.unsafe and tbl[1].unsafe
												or (value and tbl[1].text or tbl[1].subtext)

										if not colorpicker or not colorpicker.overwrite then
											if
												not flag4
													and arg1:_IsMouseWithinBounds(
														vector21,
														Vector2.new(34, v41)
													)
													and v37
											then
												local v59 = not value
												v25.value = v59

												if callback then
													callback(v59)
												end

												v3 = false
												flag2 = true
											end

											local v60 = func3(tbl[1].surface1, tbl[1].accent, v40)
											arg1:_Draw(
												"rect",
												v60,
												7,
												v38,
												vector21,
												Vector2.new(34, v41),
												true,
												v41 / 2
											)
											arg1:_Draw(
												"rect",
												func3(tbl[1].border1, tbl[1].accent, v40),
												8,
												v38,
												vector21,
												Vector2.new(34, v41),
												false,
												v41 / 2
											)
											local v61 = v41 / 2 - 1
											local v62 = vector21.x + v61 + 1
											local v63 = (34 - v41) * v40
											local y6 = vector21.y
											local v64 = v62 + v63
											local v65 = y6 + v41 / 2
											arg1:_Draw(
												"circle",
												tbl[1].shadow,
												8,
												0.15 * v38,
												Vector2.new(v64, v65 + 1),
												v61,
												true
											)
											arg1:_Draw(
												"circle",
												tbl[1].surface0,
												9,
												v38,
												Vector2.new(v64, v65),
												v61,
												true
											)
										else
											v58 = tbl[1].text
										end

										local label = v25.label
										local flag = false
										local v66 =
											v162 - 34 - tbl[3] * 2 - num - (v25.isNew and 36 or 0)

										while #label > 1 and arg1:_GetTextBounds(label).x > v66 do
											label = label:sub(1, -2)
											flag = true
										end

										if flag then
											label = label:sub(1, -2) .. ".."
										end

										local v67 = arg1:_GetTextBounds(label)
										local v68 =
											vector21
												+ Vector2.new(34 + tbl[3], (v41 - arg1._font_size) / 2)
										arg1:_Draw("text", v58, 7, v38, v68, label, false)

										if
											v36
												and flag
												and not flag4
												and arg1:_IsMouseWithinBounds(v68, v67)
										then
											arg1._frame_tooltip = {key = _id, text = v25.label}
										end

										if v25.isNew then
											local v69 = v68 + Vector2.new(v67.x + 8, -2)
											arg1:_Draw(
												"rect",
												tbl[1].accent,
												8,
												v38,
												v69,
												Vector2.new(28, 14),
												true,
												4
											)
											arg1:_Draw(
												"text",
												tbl[1].surface0,
												9,
												v38,
												v69 + Vector2.new(14, 7),
												"NEW",
												false,
												"center",
												9
											)
										end
									elseif type_ == "slider" then
										local v70 = v25.min or 0
										local v71 = v25.max or 100
										local v72 = v25.step or 1
										local v73 = arg1:_GetTextBounds(v25.label)
										local _font_size = arg1._font_size
										local v74 = vector21.x + _font_size + tbl[3]
										local v75 = v162 - tbl[3] * 2 - _font_size * 2
										local v76 = tbl[3] * 2
										local v77 = v75 - v76
										local vector24 = Vector2.new(
											v74,
											vector21.y + v73.y + tbl[3]
										)
										local vector25 = Vector2.new(v77, 6)
										local label1 = v25.label
										local flag1 = false
										local v78 = tbl[3] * 2
										local isNew = v25.isNew
										local v80 = v162 - v78 - (isNew and 36 or 0)

										while #label1 > 1 and arg1:_GetTextBounds(label1).x > v80 do
											label1 = label1:sub(1, -2)
											flag1 = true
										end

										if flag1 then
											label1 = label1:sub(1, -2) .. ".."
										end

										local v81 = arg1:_GetTextBounds(label1)
										arg1:_Draw(
											"text",
											tbl[1].subtext,
											7,
											v38,
											vector21,
											label1,
											false
										)

										if
											v36
												and flag1
												and not flag4
												and arg1:_IsMouseWithinBounds(vector21, v81)
										then
											arg1._frame_tooltip = {key = _id, text = v25.label}
										end

										if v25.isNew then
											local v82 = vector21 + Vector2.new(v81.x + 8, 0)
											arg1:_Draw(
												"rect",
												tbl[1].accent,
												8,
												v38,
												v82,
												Vector2.new(28, 14),
												true,
												4
											)
											arg1:_Draw(
												"text",
												tbl[1].surface0,
												9,
												v38,
												v82 + Vector2.new(14, 7),
												"NEW",
												false,
												"center",
												9
											)
										end

										local v83 = value or v70
										local new3 = Vector2.new
										local y7 = vector25.y
										local v84 = _font_size + tbl[3]
										local v85 = vector24 - new3(v84, y7 + tbl[3])
										local vector26 = Vector2.new(
											v77 + (_font_size + tbl[3]) * 2,
											v27
										)

										if
											not flag4
												and arg1:_IsMouseWithinBounds(v85, vector26)
												and v5
												and v36
										then
											local v86 = v25.default ~= nil and v25.default or v70
											v83 = v86
											v25.value = v86

											if callback then
												callback(v86)
											end

											arg1:Notification("Reset to default", 2)
											v5 = false
										end

										local v87 = not flag4

										if v87 then
											local vector27 = Vector2.new(0, 6)
											v87 = arg1:_IsMouseWithinBounds(
												vector24 - vector27,
												vector25 + Vector2.new(0, 12)
											)
										end

										if v4 then
											if
												v36
													and (v87 or arg1._slider_drag == _id)
													and v3
													and arg1._slider_drag ~= _id
											then
												arg1._slider_drag = _id
												v3 = false
												flag2 = true
											end
											if arg1._slider_drag == _id then
												local v88 = arg1:_GetMousePos()
												local x1 = vector24.x
												local x2 = v88.x
												local x3 = vector25.x
												local v89 = func2((x2 - x1) / x3, 0, 1)
												local v90 = v70 + (v71 - v70) * v89
												local v91 = math.floor(v90 / v72 + 0.5)
												v83 = func2(v91 * v72, v70, v71)
											end
										else
											arg1._slider_drag = nil
										end

										local x4 = vector21.x
										local v92 = _font_size / 2
										local v93 = v74 + v77
										local v94 = x4 + v92
										local v95 = v93 + tbl[3] + _font_size / 2
										local v96 = vector24.y + vector25.y / 2
										local x5 = vector21.x
										local v97 = _font_size / 2
										local vector28 = Vector2.new(x5, v96 - v97)
										local v98 = v74 + v77
										local vector29 = Vector2.new(
											v98 + tbl[3],
											v96 - _font_size / 2
										)
										local vector210 = Vector2.new(_font_size, _font_size)
										local v99 =
											not flag4 and arg1:_IsMouseWithinBounds(vector28, vector210)
										local v100 =
											not flag4 and arg1:_IsMouseWithinBounds(vector29, vector210)
										arg1:_Draw(
											"text",
											v99 and tbl[1].text or tbl[1].subtext,
											7,
											v38,
											Vector2.new(v94, v96),
											"-",
											false,
											"center"
										)
										arg1:_Draw(
											"text",
											v100 and tbl[1].text or tbl[1].subtext,
											7,
											v38,
											Vector2.new(v95, v96),
											"+",
											false,
											"center"
										)

										if v37 and not flag4 then
											if v99 then
												v83 = func2(v83 - v72, v70, v71)
												v3 = false
												flag2 = true
											elseif v100 then
												v83 = func2(v83 + v72, v70, v71)
												v3 = false
												flag2 = true
											end
										end

										if v83 ~= value then
											v25.value = v83
											if callback then
												callback(v83)
											end
										end

										local v101 = v83 - v70
										local v102 = v71 - v70
										local v103 = func2(v101 / math.max(0.01, v102), 0, 1)
										arg1._slider_disp[_id .. "_dv"] = v83
										local v104 = arg1._slider_drag == _id
										local v105 =
											(v87 or v104)
												and func3(tbl[1].surface1, tbl[1].accent, 0.12)
										arg1:_Draw(
											"rect",
											v105 or tbl[1].surface1,
											7,
											v38,
											vector24,
											vector25,
											true,
											3
										)
										arg1:_Draw(
											"rect",
											(v87 or v104) and tbl[1].border0 or tbl[1].border1,
											8,
											v38,
											vector24,
											vector25,
											false,
											3
										)
										local v106 = math.max(0, vector25.x * v103 - 2)
										local accent = tbl[1].accent
										local vector211 = Vector2.new(1, 1)
										arg1:_Draw(
											"rect",
											accent,
											9,
											v38,
											vector24 + vector211,
											Vector2.new(v106, vector25.y - 2),
											true,
											3
										)
										local x6 = vector24.x
										local v107 = vector25.x * v103
										local y8 = vector25.y
										local v108 = x6 + v107
										local v109 = vector24.y + y8 / 2
										local v110 = v104 and 7 or 5
										arg1:_Draw(
											"circle",
											tbl[1].surface0,
											10,
											v38,
											Vector2.new(v108, v109),
											v110,
											true
										)
										arg1:_Draw(
											"circle",
											tbl[1].accent,
											11,
											v38,
											Vector2.new(v108, v109),
											v110,
											false
										)
										local v111 = func5(v83) .. v25.suffix
										arg1:_Draw(
											"text",
											tbl[1].text,
											15,
											v38,
											Vector2.new(v108, v109 + v110 + 6),
											v111,
											false,
											"center",
											11
										)
									elseif type_ == "dropdown" then
										local v112 = arg1:_GetTextBounds(v25.label)
										local vector212 = Vector2.new(
											vector21.x,
											vector21.y + v112.y + tbl[3]
										)
										local vector213 = Vector2.new(
											v162 - tbl[3] * 2,
											v112.y + tbl[3]
										)
										local v113 =
											not flag4
												and arg1:_IsMouseWithinBounds(vector212, vector213)
										local v114 =
											arg1._active_dropdown and arg1._active_dropdown_owner == _id

										if v114 then
											arg1._active_dropdown.position = Vector2.new(
												vector212.x,
												vector212.y + vector213.y
											)
											arg1._active_dropdown._srcH = vector213.y
										end

										if v113 and v37 then
											if v114 then
												arg1:_RemoveDropdown()
												arg1._active_dropdown_owner = nil
											else
												arg1:_SpawnDropdown(
													Vector2.new(vector212.x, vector212.y + vector213.y),
													vector213.x,
													value,
													v25.choices,
													v25.multi,
													function(value)
														v25.value = value
														if callback then
															callback(value)
														end
													end
												)
												arg1._active_dropdown._srcH = vector213.y
												arg1._active_dropdown_owner = _id
											end

											v3 = false
											flag2 = true
										end

										local v115 = _id .. "_arw"
										arg1._dd_arrow_anim[v115] = func1(
											arg1._dd_arrow_anim[v115] or 0,
											v114 and 1 or 0,
											(tbl[8](0.25))
										)
										local v116 = arg1._dd_arrow_anim[v115]
										local v117 = math.floor(
											vector212.x + vector213.x - tbl[3] - 4
										)
										local v118 = math.floor(vector212.y + vector213.y / 2)
										local vector214 = Vector2.new(
											math.floor(func1(v117 + 2, v117 - 3, v116) + 0.5),
											math.floor(func1(v118 - 3, v118 - 2, v116) + 0.5)
										)
										local vector215 = Vector2.new(
											math.floor(func1(v117 + 2, v117 + 3, v116) + 0.5),
											math.floor(func1(v118 + 3, v118 - 2, v116) + 0.5)
										)
										local vector216 = Vector2.new(
											math.floor(func1(v117 - 3, v117, v116) + 0.5),
											math.floor(func1(v118, v118 + 3, v116) + 0.5)
										)
										local v119 =
											v113 and func3(tbl[1].surface0, tbl[1].accent, 0.06)
												or tbl[1].surface0
										arg1:_Draw(
											"rect",
											tbl[1].shadow,
											6,
											0.1 * v38,
											vector212 + Vector2.new(1, 2),
											vector213,
											true,
											6
										)
										arg1:_Draw(
											"rect",
											v119,
											7,
											v38,
											vector212,
											vector213,
											true,
											6
										)
										arg1:_Draw(
											"rect",
											tbl[1].border1,
											8,
											v38,
											vector212,
											vector213,
											false,
											6
										)
										arg1:_Draw(
											"triangle",
											tbl[1].subtext,
											8,
											v38,
											true,
											vector214,
											vector215,
											vector216
										)
										local v120 =
											type(value) == "table" and table.concat(value, ", ")
												or tostring(value or "")
										local flag3 = false

										if v120 == "" then
											flag3 = true
											v120 =
												v25.choices and v25.choices[1] and tostring(v25.choices[1])
													or ""
										end

										if
											arg1:_GetTextBounds(v120).x > vector213.x - tbl[3] - 14
										then
											if flag3 then
												local v121 = vector213.x - tbl[3] - 26

												while #v120 > 1 and arg1:_GetTextBounds(v120).x > v121 do
													v120 = v120:sub(1, -2)
												end

												v120 = v120 .. ".."
											else
												local v122 = type(value) == "table" and #(value or {}) or 1
												v120 =
													tostring(v122) .. " item" .. (v122 == 1 and "" or "s")
											end
										end

										arg1:_Draw(
											"text",
											flag3 and tbl[1].subtext or tbl[1].text,
											8,
											v38,
											vector212
												+ Vector2.new(6, arg1:_GetTextBounds(v120).y / 2 - 1),
											v120,
											false
										)
										local flag5 = false
										local v123 = v162 - tbl[3] * 2 - (v25.isNew and 36 or 0)
										local label2 = v25.label
										local x7 = func6(arg1, label2).x

										if x7 > v123 then
											local v124 = v123 / math.max(1, x7)
											local max = math.max
											local v125 = #label2
											label2 =
												label2:sub(1, max(1, math.floor(v125 * v124) - 2)) .. ".."
											flag5 = true
										end

										local v126 = func6(arg1, label2)
										arg1:_Draw(
											"text",
											tbl[1].subtext,
											7,
											v38,
											vector21 + Vector2.new(tbl[3], 0),
											label2,
											false
										)

										if
											v36
												and flag5
												and not flag4
												and arg1:_IsMouseWithinBounds(
													vector21 + Vector2.new(tbl[3], 0),
													v126
												)
										then
											arg1._frame_tooltip = {key = _id .. "dd", text = v25.label}
										end

										if v25.isNew then
											local v128 = vector21 + Vector2.new(tbl[3] + v126.x + 8, -2)
											arg1:_Draw(
												"rect",
												tbl[1].accent,
												8,
												v38,
												v128,
												Vector2.new(28, 14),
												true,
												4
											)
											arg1:_Draw(
												"text",
												tbl[1].surface0,
												9,
												v38,
												v128 + Vector2.new(14, 7),
												"NEW",
												false,
												"center",
												9
											)
										end
									elseif type_ == "label" then
										local lineY = vector21.y
										for line in (tostring(v25.label or "") .. "\n"):gmatch("([^\n]*)\n") do
											arg1:_Draw("text", tbl[1].subtext, 7, v38,
												Vector2.new(vector21.x, lineY), line, false)
											lineY = lineY + arg1._font_size + 2
										end
									elseif type_ == "button" then
										local colorpicker1 = v25.colorpicker
										local num2 = 0
										local v130 = arg1:_GetTextBounds(v25.label).y + tbl[3]

										if colorpicker1 then
											local vector217 = Vector2.new(24, 14)
											local new4 = Vector2.new
											local v131 = v162 - tbl[3] * 2
											local x8 = vector217.x
											local y9 = vector217.y
											local v132 = new4(v131 - x8, (v130 - y9) / 2)
											local x9 = vector217.x
											local v133 = vector21 + v132
											num2 = x9 + tbl[3] * 2
											local v134 =
												not flag4 and arg1:_IsMouseWithinBounds(v133, vector217)
											arg1:_Draw(
												"rect",
												tbl[1].border1,
												7,
												v38,
												v133,
												vector217,
												true,
												4
											)
											arg1:_Draw(
												"rect",
												colorpicker1.value,
												8,
												v38,
												v133 + Vector2.new(1, 1),
												vector217 - Vector2.new(2, 2),
												true,
												4
											)

											if v134 and v37 then
												arg1:_SpawnColorpicker(
													nil,
													colorpicker1.label,
													colorpicker1.value,
													function(value)
														colorpicker1.value = value
														if colorpicker1.callback then
															colorpicker1.callback(value)
														end
													end
												)
												v3 = false
												flag2 = true
											end
										end

										local vector218 = Vector2.new(vector21.x, vector21.y)
										local vector219 = Vector2.new(
											v162 - tbl[3] * 2 - num2,
											v130
										)
										local v135 =
											not flag4
												and arg1:_IsMouseWithinBounds(vector218, vector219)

										if v4 then
											if v135 and v37 then
												arg1._slider_drag = _id
												v3 = false
												flag2 = true

												if callback then
													callback()
												end
											end
										else
											arg1._slider_drag = nil
										end

										local v136 = v4 and arg1._slider_drag == _id
										local v137 = _id .. "_bp"
										arg1._toggle_anim[v137] = func1(
											arg1._toggle_anim[v137] or 0,
											v136 and 1 or 0,
											(tbl[8](0.45))
										)
										local v138 = arg1._toggle_anim[v137]
										local v139 = math.floor(v138 * 2 + 0.5)
										local v140 = vector218 + Vector2.new(v139, v139)
										local v141 = vector219 - Vector2.new(v139 * 2, v139 * 2)
										local v142 = func3(
											v135 and func3(tbl[1].surface0, tbl[1].accent, 0.08)
												or tbl[1].surface0,
											tbl[1].accent,
											v138 * 0.85
										)
										arg1:_Draw(
											"rect",
											tbl[1].shadow,
											6,
											(1 - v138) * 0.1 * v38,
											vector218 + Vector2.new(1, 2),
											vector219,
											true,
											6
										)
										arg1:_Draw("rect", v142, 7, v38, v140, v141, true, 6)
										arg1:_Draw(
											"rect",
											v136 and tbl[1].accent or tbl[1].border1,
											8,
											v38,
											v140,
											v141,
											false,
											6
										)
										local v143 =
											(v136 or v135) and tbl[1].text or tbl[1].subtext

										if v25._last_label == nil then
											v25._last_label = v25.label
										end

										local v144 = _id .. "_lbl_anim"

										if v25.label ~= v25._last_label then
											v25._old_label = v25._last_label
											v25._last_label = v25.label
											arg1._toggle_anim[v144] = 0
										end

										local v145 = func1(
											arg1._toggle_anim[v144] or 1,
											1,
											(tbl[8](0.35))
										)
										arg1._toggle_anim[v144] = v145

										if v145 < 0.995 and v25._old_label then
											local v146 = func4(v145)
											local v147 = v38 * (1 - v146)
											local v148 = v140.y + v141.y / 2
											local v149 = 10 * v146
											local v150 = v148 - v149
											arg1:_Draw(
												"text",
												v143,
												8,
												v147,
												Vector2.new(v140.x + v141.x / 2, v150),
												v25._old_label,
												false,
												"center"
											)
											local y10 = v140.y
											local v151 = v38 * v146
											local v152 = y10 + v141.y / 2 + 10 * (1 - v146)
											arg1:_Draw(
												"text",
												v143,
												8,
												v151,
												Vector2.new(v140.x + v141.x / 2, v152),
												v25.label,
												false,
												"center"
											)
										else
											arg1:_Draw(
												"text",
												v143,
												8,
												v38,
												v140 + Vector2.new(v141.x / 2, v141.y / 2),
												v25.label,
												false,
												"center"
											)
										end

										if v25.isNew then
											local v153 = arg1:_GetTextBounds(v25.label)
											local v154 =
												v140
													+ Vector2.new(
														v141.x / 2 + v153.x / 2 + 8,
														(v141.y - 14) / 2
													)
											arg1:_Draw(
												"rect",
												tbl[1].accent,
												9,
												v38,
												v154,
												Vector2.new(28, 14),
												true,
												4
											)
											arg1:_Draw(
												"text",
												tbl[1].surface0,
												10,
												v38,
												v154 + Vector2.new(14, 7),
												"NEW",
												false,
												"center",
												9
											)
										end
									elseif type_ == "textbox" then
										local vector220 = Vector2.new(
											v162 - tbl[3] * 2,
											arg1._font_size + tbl[3]
										)
										local v155 =
											not flag4 and arg1:_IsMouseWithinBounds(vector21, vector220)
										local v156 = arg1._input_ctx == _id
										local v157 =
											math.floor(os.clock() * 2) % 2 == 0 and "|" or " "
										local v160 = value and value ~= ""
										local v163 = _id .. "_ph"
										arg1._toggle_anim[v163] = func1(
											arg1._toggle_anim[v163] or (v160 and 1 or 0),
											v160 and 1 or 0,
											(tbl[8](0.18))
										)
										local v164 = arg1._toggle_anim[v163]
										local v165 =
											v156 and (value or "") .. v157
												or (v160 and value or v25.label) .. " "
										local v166 =
											(v156 or v155) and tbl[1].text
												or func3(tbl[1].subtext, tbl[1].text, v164)

										if arg1:_GetTextBounds(v165).x > vector220.x then
											local num3 = 1
											local v167 = #v165

											while num3 < v167 do
												local v168 = math.floor((num3 + v167) / 2)
												if
													arg1:_GetTextBounds(v165:sub(v168)).x <= vector220.x - 4
												then
													v167 = v168
												else
													num3 = v168 + 1
												end
											end

											v165 = v165:sub(num3)
										end

										local v169 = arg1:_GetTextBounds(v165)

										if arg1:_IsKeyPressed("m1") then
											if v37 and v155 then
												arg1._input_ctx = _id
												arg1:_RemoveCtxMenu()
												v3 = false
												flag2 = true
											elseif v156 then
												arg1._input_ctx = nil
												arg1:_RemoveDropdown()
												v156 = false
											end
										end

										if v5 and v36 and v155 then
											local v170 = arg1:_GetMousePos()
											arg1:_SpawnCtxMenu(v170.x, v170.y, _id, v25)
											v5 = false
										end

										if v156 then
											local tbl1 = {
												space = " ",
												dash = "-",
												colon = ":",
												period = ".",
												comma = ",",
												slash = "/",
												semicolon = ";",
												quote = "'",
												leftbracket = "[",
												rightbracket = "]",
												backslash = "\\",
												equals = "=",
												minus = "-"
											}

											local tbl2 = {
												["1"] = "!",
												["2"] = "@",
												["3"] = "#",
												["4"] = "$",
												["5"] = "%",
												["6"] = "^",
												["7"] = "&",
												["8"] = "*",
												["9"] = "(",
												["0"] = ")",
												["-"] = "_",
												["="] = "+",
												["["] = "{",
												["]"] = "}",
												[";"] = ":",
												["'"] = '"',
												[","] = "<",
												["."] = ">",
												["/"] = "?",
												["\\"] = "|"
											}

											local v171 = value or ""
											local v172 =
												arg1:_IsKeyHeld("lshift") or arg1:_IsKeyHeld("rshift")
											local k1Ref

											for k1 in pairs(arg1._inputs or {}) do
												if arg1:_IsKeyHeld(k1) then
													k1Ref = k1
													break
												end
											end

											if k1Ref then
												if not arg1._key_repeat[k1Ref] then
													arg1._key_repeat[k1Ref] = os.clock() + 0.4
												elseif os.clock() > arg1._key_repeat[k1Ref] then
													arg1._key_repeat[k1Ref] = os.clock() + 0.05
													local v173 = tbl1[k1Ref] or k1Ref

													if v173 == "backspace" then
														v171 = v171:sub(1, -2)
													elseif #v173 == 1 then
														if v172 and tbl2[v173] then
															v173 = tbl2[v173]
														elseif v172 then
															v173 = v173:upper()
														end
														if #v171 < 200 then
															v171 = v171 .. v173
														end
													end

													if v25.callback then
														v25.callback(v171)
													end

													v25.value = v171
												end
											else
												arg1._key_repeat = {}
											end

											for k2 in pairs(arg1._inputs or {}) do
												if arg1:_IsKeyPressed(k2) then
													local v174 = tbl1[k2] or k2

													if v174 == "enter" or v174 == "esc" then
														arg1._input_ctx = nil
														break
													end

													if v174 == "backspace" then
														v171 = v171:sub(1, -2)
													elseif #v174 == 1 then
														if v172 and tbl2[v174] then
															v174 = tbl2[v174]
														elseif v172 then
															v174 = v174:upper()
														end
														if #v171 < 200 then
															v171 = v171 .. v174
														end
													end

													if v25.callback then
														v25.callback(v171)
													end

													v25.value = v171
												end
											end
										end

										arg1:_Draw(
											"rect",
											v156 and tbl[1].surface0 or tbl[1].surface1,
											7,
											v38,
											vector21,
											vector220,
											true,
											6
										)
										arg1:_Draw(
											"rect",
											v156 and tbl[1].accent
												or (v155 and tbl[1].border0 or tbl[1].border1),
											8,
											v38,
											vector21,
											vector220,
											false,
											6
										)
										arg1:_Draw(
											"text",
											v166,
											8,
											v38,
											vector21 + Vector2.new(6, v169.y / 2 - 2),
											v165,
											false
										)
									end
								else
									arg1._item_vis[_id] = false
								end

								v24 = v24 + v28
							end
						end

						local y11 = tsz.y
						v2 = v2 + h + (y11 / 2 + tbl[3]) * anim
					end
				end
			end

			local v175 = v126.x / 2
			local v176 = tbl[3] * 1.5
			local x6 = vector230.x
			local v177 = v175 - v176
			func(tbl6, false, x6 + tbl[3])
			func(tbl7, true, vector230.x + tbl[3] * 2 + v177)
		end
	end

	local _ctx_menu = arg1._ctx_menu

	if _ctx_menu then
		_ctx_menu._anim = func1(_ctx_menu._anim or 0, 1, (tbl[8](0.3)))
		local _anim = _ctx_menu._anim
		local items = _ctx_menu.items
		local v178 = arg1._font_size + 8
		local v179 = #items * v178
		local x7 = _ctx_menu.x
		local v180 = v179 + 4
		local y7 = _ctx_menu.y

		if x7 + 80 > x + w - 4 then
			x7 = x + w - 80 - 4
		end

		local v181 = y + v46

		if y7 + v180 > v181 - 4 then
			y7 = y7 - v180
		end

		local vector248 = Vector2.new(x7, y7)
		local vector249 = Vector2.new(80, v180)
		local shadow4 = tbl[1].shadow
		local v182 = 0.18 * _anim
		local v183 = v182 * v79
		local vector250 = Vector2.new(2, 4)
		arg1:_Draw("rect", shadow4, 700, v183, vector248 + vector250, vector249, true, 6)
		arg1:_Draw("rect", tbl[1].surface0, 701, _anim * v79, vector248, vector249, true, 6)
		arg1:_Draw("rect", tbl[1].border1, 702, _anim * v79, vector248, vector249, false, 6)

		for i3, item in ipairs(_ctx_menu.items) do
			local v184 = y7 + 2 + (i3 - 1) * v178
			local vector251 = Vector2.new(x7 + 2, v184)
			local vector252 = Vector2.new(76, v178)
			local v185 = arg1:_IsMouseWithinBounds(vector251, vector252)

			if v185 then
				local v186 = func3(tbl[1].surface0, tbl[1].accent, 0.18)
				arg1:_Draw("rect", v186, 703, _anim * v79, vector251, vector252, true, 4)
			end

			local v187 = v185 and tbl[1].text or tbl[1].subtext
			local v188 = _anim * v79
			local vector253 = Vector2.new(38, v178 / 2)
			arg1:_Draw(
				"text",
				v187,
				704,
				v188,
				vector251 + vector253,
				item.label,
				false,
				"center",
				12
			)

			if v185 and v3 and not flag2 then
				local sItem = _ctx_menu.sItem

				if item.action == "copy" then
					local v189 = sItem.value or ""

					if type(setclipboard) == "function" then
						pcall(setclipboard, v189)
					end

					arg1:Notification("Copied to clipboard", 2)
				elseif item.action == "clear" then
					sItem.value = ""

					if sItem.callback then
						sItem.callback("")
					end

					arg1:_MarkDirty()
					arg1:Notification("Cleared", 2)
				end

				arg1:_RemoveCtxMenu()
				v3 = false
				flag2 = true
			end
		end

		if (v3 or v5) and not flag2 and not arg1:_IsMouseWithinBounds(vector248, vector249) then
			arg1:_RemoveCtxMenu()
			v3 = false
			flag2 = true
			v5 = false
		end
	end

	local _active_dropdown2 = arg1._active_dropdown

	if _active_dropdown2 then
		_active_dropdown2._anim = func1(_active_dropdown2._anim or 0, 1, (tbl[8](0.15)))
		local _anim1 = _active_dropdown2._anim
		local position5 = _active_dropdown2.position
		local choices = _active_dropdown2.choices
		local v190 = arg1._font_size + 9
		local v191 = #(choices or {})
		local v192 = math.min(v191, 6)
		local width = _active_dropdown2.width
		local v193 = v192 * v190 + tbl[3]
		local v194 = arg1:_GetScreenSize()
		local flag5 = false

		if position5.y + v193 > v194.y - 10 then
			flag5 = true
			local x8 = position5.x
			local new9 = Vector2.new
			local _srcH1 = _active_dropdown2._srcH
			position5 = new9(x8, position5.y - v193 - (_srcH1 or 0))
		end

		local v195 = v191 > 6
		local v196 = v193 - tbl[3]
		local v197 = math.max(0, v191 * v190 - v196)

		if _scroll_delta ~= 0 then
			local v198 = table.pack(Vector2.new(width, v193))
			if arg1:_IsMouseWithinBounds(position5, table.unpack(v198, 1, v198.n)) then
				_active_dropdown2._scroll_target = func2(
					(_active_dropdown2._scroll_target or 0) - _scroll_delta,
					0,
					v197
				)
			end
		end

		_active_dropdown2._scroll_target = _active_dropdown2._scroll_target or 0
		_active_dropdown2._scroll_v = func1(
			_active_dropdown2._scroll_v or 0,
			_active_dropdown2._scroll_target,
			(tbl[8](0.25))
		)

		if math.abs(_active_dropdown2._scroll_v - _active_dropdown2._scroll_target) < 0.5 then
			_active_dropdown2._scroll_v = _active_dropdown2._scroll_target
		end

		local v199 = math.max(1, v193 * func4(_anim1))
		local v200 = flag5

		if flag5 then
			local v201 = v193 - v199
			v200 = Vector2.new(position5.x, position5.y + v201)
		end

		v200 = v200 or position5
		local shadow5 = tbl[1].shadow
		local v202 = 0.15 * v79
		local v203 = v200 + Vector2.new(2, 4)
		local vector254 = Vector2.new(width, v199)
		arg1:_Draw("rect", shadow5, 500, v202, v203, vector254, true, 6)
		local surface04 = tbl[1].surface0
		local vector255 = Vector2.new(width, v199)
		arg1:_Draw("rect", surface04, 501, v79, v200, vector255, true, 6)
		local border14 = tbl[1].border1
		local vector256 = Vector2.new(width, v199)
		arg1:_Draw("rect", border14, 502, v79, v200, vector256, false, 6)
		local y8 = v200.y
		local v204 = v200.y + v199

		if v195 and v199 > 20 then
			local v205 = width - 3 - 2
			local v206 = v199 - tbl[3]
			local v207 = math.max(10, v206 * (v206 / (v206 + v197)))

			if v4 then
				local v208 = v200 + Vector2.new(v205 - 5, tbl[3] / 2)
				local v209 = table.pack(Vector2.new(13, v206))

				if
					arg1:_IsMouseWithinBounds(v208, table.unpack(v209, 1, v209.n))
						and v3
						and not flag2
				then
					arg1._dd_drag = "dd_sb"
					flag2 = true
					v3 = false
				end

				if arg1._dd_drag == "dd_sb" then
					local v210 = arg1:_GetMousePos().y - (v200.y + tbl[3] / 2) - v207 / 2
					local v211 = v206 - v207
					_active_dropdown2._scroll_target = func2(v210 / math.max(1, v211), 0, 1) * v197
				end
			else
				arg1._dd_drag = nil
			end

			local _scroll_v = _active_dropdown2._scroll_v
			local v212 = v206 - v207
			local v213 = tbl[3] / 2
			local v214 = v212 * (_scroll_v / v197)
			local border02 = tbl[1].border0
			local v215 = v213 + v214
			local v216 = 0.35 * v79
			local vector257 = Vector2.new(v205, tbl[3] / 2)
			local v217 = v200 + vector257
			local vector258 = Vector2.new(3, v206)
			arg1:_Draw("rect", border02, 503, v216, v217, vector258, true, 1.5)
			local subtext2 = tbl[1].subtext
			local v218 = 0.7 * v79
			local v219 = v200 + Vector2.new(v205, v215)
			local vector259 = Vector2.new(3, v207)
			arg1:_Draw("rect", subtext2, 504, v218, v219, vector259, true, 1.5)
		end

		for i4, v220 in ipairs(_active_dropdown2.choices or {}) do
			local v221 =
				(flag5 and position5.y or position5.y) + tbl[3] / 2 + (i4 - 1) * v190
					- _active_dropdown2._scroll_v
			local v222 = v221 + v190

			if v222 > y8 and v221 < v204 then
				local num3 = 1
				local v223 = v204 - v222
				local v224 = v221 - y8

				if v224 < 3 then
					num3 = math.max(0, v224 / 3)
				end

				if v223 < 3 then
					num3 = math.min(num3, math.max(0, v223 / 3))
				end

				if v224 < 0 or v223 < 0 then
					num3 = 0
				end

				if num3 > 0.05 then
					local v225 =
						type(_active_dropdown2.value) == "table"
							and table.find(_active_dropdown2.value, v220)
							or false
					local vector260 = Vector2.new(position5.x + 6, v221)
					local vector261 = Vector2.new(width - (v195 and 16 or 12), v190)
					local v226 = num3 > 0.4 and arg1:_IsMouseWithinBounds(vector260, vector261)

					if v226 then
						local v227 = math.max(vector260.y + 1, y8 + 2)
						local v228 = math.min(vector260.y + vector261.y - 1, v204 - 2) - v227
						local v229 = math.max(0, v228)

						if v229 > 0 then
							local v230 = func3(tbl[1].surface0, tbl[1].accent, 0.18)
							local v231 = v79 * num3
							local vector262 = Vector2.new(vector260.x + 2, v227)
							local vector263 = Vector2.new(vector261.x - 4, v229)
							arg1:_Draw("rect", v230, 505, v231, vector262, vector263, true, 4)
						end
					end

					local v232 = v226 and tbl[1].text or (v225 and tbl[1].text or tbl[1].subtext)
					local v233 = v79 * num3
					local v234 = vector260 + Vector2.new(2, 4)
					arg1:_Draw("text", v232, 506, v233, v234, v220, false, nil, 12)

					if v226 and v3 and not flag2 then
						if _active_dropdown2.multi then
							if type(_active_dropdown2.value) ~= "table" then
								_active_dropdown2.value = {}
							end

							local v235 = table.find(_active_dropdown2.value, v220)

							if v235 then
								table.remove(_active_dropdown2.value, v235)
							else
								table.insert(_active_dropdown2.value, v220)
							end
						else
							_active_dropdown2.value = {v220}
						end

						if _active_dropdown2.callback then
							_active_dropdown2.callback(_active_dropdown2.value)
						end

						if not _active_dropdown2.multi then
							arg1:_RemoveDropdown()
						end

						v3 = false
						flag2 = true
						break
					end
				end
			end
		end

		if v3 and not flag2 then
			local v236 = table.pack(Vector2.new(width, v199))
			if not arg1:_IsMouseWithinBounds(v200, table.unpack(v236, 1, v236.n)) then
				arg1:_RemoveDropdown()
				arg1._active_dropdown_owner = nil
				v3 = false
				flag2 = true
			end
		end
	end

	local _active_colorpicker2 = arg1._active_colorpicker

	if _active_colorpicker2 then
		_active_colorpicker2._anim = func1(
			_active_colorpicker2._anim or 0,
			_active_colorpicker2._closing and 0 or 1,
			(tbl[8](0.15))
		)
		local _anim2 = _active_colorpicker2._anim

		if _active_colorpicker2._closing and _anim2 < 0.05 then
			arg1._active_colorpicker = nil
		else
			local vector264 = Vector2.new(240, 215)
			local position6 = _active_colorpicker2.position
			local v237 = arg1:_GetTextBounds(_active_colorpicker2.label)
			local vector265 = Vector2.new(vector264.x, math.max(1, vector264.y * func4(_anim2)))
			local shadow6 = tbl[1].shadow
			local v238 = 0.18 * v79
			local vector266 = Vector2.new(2, 4)
			local v239 = position6 + vector266
			arg1._Draw(arg1, "rect", shadow6, 600, v238, v239, vector265, true, tbl[2])
			arg1:_Draw("rect", tbl[1].surface0, 601, v79, position6, vector265, true, tbl[2])
			arg1:_Draw("rect", tbl[1].border1, 602, v79, position6, vector265, false, tbl[2])

			if vector265.y > 20 then
				local text5 = tbl[1].text
				local vector267 = Vector2.new(tbl[3], tbl[3] + 1)
				local v240 = position6 + vector267
				arg1._Draw(arg1, "text", text5, 603, v79, v240, _active_colorpicker2.label, false)
			end

			if vector265.y > 40 then
				local color3 = Color3.fromHSV(
					_active_colorpicker2._h,
					_active_colorpicker2._s,
					_active_colorpicker2._v
				)
				local vector268 = Vector2.new(24, 14)
				local vector269 = Vector2.new(vector264.x - tbl[3] - vector268.x, tbl[3] + 1)
				local border15 = tbl[1].border1
				local v241 = position6 + vector269
				arg1:_Draw("rect", border15, 603, v79, v241, vector268, true, 4)
				local v242 = v241 + Vector2.new(1, 1)
				local vector270 = Vector2.new(2, 2)
				arg1:_Draw("rect", color3, 604, v79, v242, vector268 - vector270, true, 4)
				local vector271 = Vector2.new(tbl[3], tbl[3] + v237.y + 10)
				local v243 = position6 + vector271
				local vector272 = Vector2.new(vector264.x - tbl[3] * 2, 100)
				arg1:_Draw("rect", tbl[1].border1, 602, v79, v243, vector272, false)
				arg1:_Draw("rect", tbl[1].body, 604, v79, v243, vector272, true)
				local v244 = arg1:_GetMousePos()
				local vector273 = Vector2.new(vector272.x, 14)
				local v245 = v243 + Vector2.new(0, vector272.y + 10)
				local v246 = v245 + Vector2.new(0, vector273.y + 10)
				local vector274 = Vector2.new(vector272.x, 24)

				if arg1:_IsMouseWithinBounds(v245, vector273) and v4 then
					local v247 = func2((v244.x - v245.x) / math.max(1, vector273.x), 0, 1)
					if v247 ~= _active_colorpicker2._h then
						_active_colorpicker2._h = v247
						if _active_colorpicker2.callback then
							_active_colorpicker2.callback(
								Color3.fromHSV(
									_active_colorpicker2._h,
									_active_colorpicker2._s,
									_active_colorpicker2._v
								)
							)
						end
					end
				end

				if arg1:_IsMouseWithinBounds(v243, vector272) and v4 then
					local v248 = func2((v244.x - v243.x) / math.max(1, vector272.x), 0, 1)
					local v249 = func2((v244.y - v243.y) / math.max(1, vector272.y), 0, 1)
					local _s = _active_colorpicker2._s
					local v250 = 1 - v249

					if v248 ~= _s or v250 ~= _active_colorpicker2._v then
						_active_colorpicker2._s = v248
						_active_colorpicker2._v = v250

						if _active_colorpicker2.callback then
							_active_colorpicker2.callback(
								Color3.fromHSV(
									_active_colorpicker2._h,
									_active_colorpicker2._s,
									_active_colorpicker2._v
								)
							)
						end
					end
				end

				local color6 = Color3.fromHSV(_active_colorpicker2._h, 1, 1)
				local color7 = Color3.fromRGB(255, 255, 255)
				arg1:_Draw("gradient", nil, 605, v79, "horizontal", v243, vector272, color7, color6)
				arg1:_Draw(
					"gradient",
					nil,
					606,
					v79,
					"vertical",
					v243,
					vector272,
					{R = 0, G = 0, B = 0, A = 0},
					{R = 0, G = 0, B = 0, A = 1}
				)
				local color8 = Color3.fromRGB(255, 0, 0)
				local color9 = Color3.fromRGB(255, 255, 0)
				local color10 = Color3.fromRGB(0, 255, 0)
				local color11 = Color3.fromRGB(0, 255, 255)
				local color12 = Color3.fromRGB(0, 0, 255)
				local color13 = Color3.fromRGB(255, 0, 255)
				local v251 = table.pack(Color3.fromRGB(255, 0, 0))
				arg1:_Draw(
					"gradient",
					nil,
					606,
					v79,
					"horizontal",
					v245,
					vector273,
					color8,
					color9,
					color10,
					color11,
					color12,
					color13,
					table.unpack(v251, 1, v251.n)
				)
				local x9 = vector272.x
				local _s1 = _active_colorpicker2._s
				local new10 = Vector2.new
				local _v = _active_colorpicker2._v
				local v252 = v243 + new10(x9 * _s1, vector272.y * (1 - _v))
				local color14 = Color3.fromRGB(255, 255, 255)
				arg1:_Draw("circle", color14, 607, 0.9 * v79, v252, 5, false)
				local x10 = v245.x
				local v253 = vector273.x * _active_colorpicker2._h
				local v254 = x10 + v253
				local color15 = Color3.fromRGB(255, 255, 255)
				local new11 = Vector2.new
				local y9 = v245.y
				local v255 = new11(v254 - 2, y9 - 2)
				local vector275 = Vector2.new(4, vector273.y + 4)
				arg1:_Draw("rect", color15, 607, v79, v255, vector275, true)
				local color16 = Color3.fromRGB(50, 50, 50)
				local vector276 = Vector2.new(v254 - 2, v245.y - 2)
				local vector277 = Vector2.new(4, vector273.y + 4)
				arg1:_Draw("rect", color16, 608, v79, vector276, vector277, false)
				local v256 = string.format(
					"%02X%02X%02X",
					math.floor(color3.R * 255),
					math.floor(color3.G * 255),
					math.floor(color3.B * 255)
				)
				local surface11 = tbl[1].surface1
				local v257 = "#" .. v256
				arg1:_Draw("rect", surface11, 605, v79, v246, vector274, true, 4)
				arg1:_Draw("rect", tbl[1].border1, 606, v79, v246, vector274, false, 4)
				local text6 = tbl[1].text
				local x11 = vector274.x
				local new12 = Vector2.new
				local y10 = vector274.y
				local v258 = new12(x11 / 2, y10 / 2)
				arg1:_Draw("text", text6, 607, v79, v246 + v258, v257, false, "center", 12)
			end

			if v3 and not flag2 and not arg1:_IsMouseWithinBounds(position6, vector265) then
				arg1:_RemoveColorpicker()
				flag2 = true
				v3 = false
			end
		end
	end

	if arg1._frame_tooltip then
		if not arg1._tooltip or arg1._tooltip.key ~= arg1._frame_tooltip.key then
			arg1._tooltip = {
				key = arg1._frame_tooltip.key,
				text = arg1._frame_tooltip.text,
				timer = 0,
				_anim = 0
			}
		end
	else
		arg1._tooltip = nil
	end

	if arg1._tooltip then
		local _tooltip = arg1._tooltip
		_tooltip.timer = (_tooltip.timer or 0) + tbl[6]
		_tooltip._anim = func1(_tooltip._anim or 0, _tooltip.timer > 0.5 and 1 or 0, (tbl[8](0.28)))
		local v259 = func4(_tooltip._anim)

		if v259 > 0.01 then
			local v260 = arg1:_GetTextBounds(_tooltip.text)
			local x12 = v260.x
			local v261 = tbl[3] * 1.5
			local y11 = v260.y
			local v262 = x12 + v261
			local v263 = tbl[3] * 0.8
			local v264 = y11 + v263
			local v265 = arg1._GetMousePos(arg1)
			local vector278 = Vector2.new(v265.x + 10, v265.y - v264 - 6)
			local shadow7 = tbl[1].shadow
			local v266 = 0.18 * v54
			local v267 = v266 * v259
			local v268 = vector278 + Vector2.new(1, 2)
			local vector279 = Vector2.new(v262, v264)
			arg1:_Draw("rect", shadow7, 999, v267, v268, vector279, true, 6)
			local v269 = v54 * v259
			local surface05 = tbl[1].surface0
			local vector280 = Vector2.new(v262, v264)
			arg1:_Draw("rect", surface05, 1000, v269, vector278, vector280, true, 6)
			local border16 = tbl[1].border1
			local v270 = v54 * v259
			local vector281 = Vector2.new(v262, v264)
			arg1:_Draw("rect", border16, 1001, v270, vector278, vector281, false, 6)
			local v271 = v54 * v259
			local text7 = tbl[1].text
			local new13 = Vector2.new
			local _font_size = arg1._font_size
			local v272 = new13(tbl[3] * 0.75, (v264 - _font_size) / 2 + 1)
			arg1:_Draw("text", text7, 1001, v271, vector278 + v272, _tooltip.text, false)
		end
	end

	if v8 and not flag2 and not arg1._menu_drag then
		local vector282 = Vector2.new(x, y)
		local v273 = table.pack(Vector2.new(w, v13))

		if arg1:_IsMouseWithinBounds(vector282, table.unpack(v273, 1, v273.n)) then
			local v274 = arg1._cached_mouse or Vector2.new()
			arg1._menu_drag = Vector2.new(v274.x - arg1.x, v274.y - arg1.y)
		end
	end

	for k6, v275 in pairs(arg1._pool or {}) do
		for i5 = (arg1._pIdx[k6] or 0) + 1, #v275 do
			local v276 = v275[i5]
			local v277 = arg1._pool_state[k6][i5]

			if v277 and v277.Visible ~= false then
				pcall(function()
					v276.Visible = false
				end)
				v277.Visible = false
			end
		end
	end
end

-- Set up the UI only; Main intentionally contains no application controls.
local old = rawget(_G, "macosUI")
if type(old) == "table" then
    if old._macosConnection then pcall(function() old._macosConnection:Disconnect() end) end
    for _, connection in ipairs(old._uiConnections or {}) do pcall(function() connection:Disconnect() end) end
    if old._FullWipe then pcall(function() old:_FullWipe() end)
    elseif old.Destroy then pcall(function() old:Destroy() end)
    elseif old.Unload then pcall(function() old:Unload() end) end
end
uiLibrary:SetMenuTitle("macosUI")
uiLibrary:SetMenuSize(Vector2.new(480, 310))
uiLibrary:CenterMenu()
uiLibrary.Main = uiLibrary:Tab("Main")
uiLibrary:CreateSettingsTab("Settings")
_G.macosUI = uiLibrary
local heartbeat
local uiAccumulator = 0
heartbeat = game:GetService("RunService").Heartbeat:Connect(function()
    if uiLibrary._unloaded then
        heartbeat:Disconnect()
        for _, connection in ipairs(uiLibrary._uiConnections) do pcall(function() connection:Disconnect() end) end
        if rawget(_G, "macosUI") == uiLibrary then _G.macosUI = nil end
        return
    end
    local now = os.clock()
    uiAccumulator = uiAccumulator + math.min(now - (uiLibrary._heartbeatAt or now), 0.1)
    uiLibrary._heartbeatAt = now
    if uiAccumulator >= 1 / 60 then
        uiAccumulator = uiAccumulator % (1 / 60)
        uiLibrary:Step()
    end
end)
uiLibrary._macosConnection = heartbeat
return uiLibrary
