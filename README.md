# macosUI

macosUI is a Drawing API interface library for Matcha. It includes tabs, sections, controls, themes, notifications, search, and a Settings tab for the menu key, watermark, and configs.

Running `main.lua` starts the drawing loop and creates an empty **Main** tab and a **Settings** tab. The default menu key is **F5**.

## Upload and load

Upload `main.lua` to the root of a GitHub repository. In `example.lua`, replace `YOUR_USERNAME/YOUR_REPOSITORY` in `LIB_URL` with your repository details. If your default branch isn't `main`, change that part of the URL too. The repository must be accessible to `game:HttpGet`.

Run the updated `example.lua` in Matcha. It downloads `main.lua`, then reads `_G.macosUI`: some Matcha environments discard the return value of `loadstring`.

```lua
local source = game:HttpGet("https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPOSITORY/main/main.lua")
loadstring(source)()
local ui = _G.macosUI
local main = ui.Main
```

The library creates Main and Settings automatically. Use `ui.Main` to add controls to the existing Main tab; don't create another tab named `Main`.

## Controls

Add a section to a tab, then add controls to the section. Sections are arranged in two columns in the order they are created.

```lua
local options = ui.Main:Section("Options")

local enabled = options:Toggle("Enabled", false, function(value)
    print("Enabled:", value)
end)

enabled:AddKeybind("e", function(keyId)
    print("Key ID:", keyId)
end)

options:Slider("Amount", 50, 1, 0, 100, "%", false, function(value)
    print("Amount:", value)
end)

options:Dropdown("Mode", {"First"}, {"First", "Second"}, false, false, function(values)
    print("Selected:", values[1])
end)

options:Textbox("Name", "", function(value)
    print("Name:", value)
end)

options:Button("Run", false, function()
    print("Clicked")
end)
```

`Toggle`, `Slider`, `Dropdown`, and `Textbox` return handles with `:Set(value)`. Dropdown values are arrays; set the fourth dropdown argument to `true` for multiple selections. Dropdown handles also support `:UpdateChoices(choices)`. Toggles and buttons support `:AddColorpicker(label, defaultColor, overwrite, callback)`.

Create additional tabs with `ui:Tab("Tab name")`, then add sections with `tab:Section("Section name")`. For a notification, call `ui:Notification("Message", 3)`.

## Window and settings

```lua
ui:SetMenuTitle("My menu")
ui:SetMenuSize(Vector2.new(480, 310))
ui:CenterMenu()
ui:SetWatermarkEnabled(true)
```

The Settings tab can change the menu key, watermark and theme, save or load named configs, and unload the UI. Config files are stored in the `macosUI` folder through the runtime's filesystem API. The library also exposes `SaveConfig(name)`, `LoadConfig(name)`, `DeleteConfig(name)`, and `ListConfigs()`.
