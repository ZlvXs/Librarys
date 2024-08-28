local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZlvXs/zQLibs/main/Cattoware%20UI/Green.lua"))()
local Window = Library:CreateWindow("Window", Vector2.new(492, 598), Enum.KeyCode.F1) -- [[ You can change the Keybind ]] 
local MainTab = Window:CreateTab("Tab 1")

local MainSection = MainTab:CreateSector("Left Section", "left") -- [[ Also you can change the section to "right" ]]

MainSection:AddButton("Button", function()
    print("Button")
end)

MainSection:AddToggle("Toggle", false, function(State)
   print(State)
end)

MainSection:AddSlider("Slider", 0, 120, 2000, 1, function(State) -- [[ 0 is the Min, 120 is the Default, 2000 the Max. (idk what is the 1 but you can change it to 2) ]]
    print(State)
end)

MainSection:AddTextbox("Textbox", "Place Holder Text", function(State) -- [[ You can change the "Palce Holder Text" to Nil ]]
   print(State)
end)

MainSection:AddDropdown("Dropdown", {"Option 1", "Option 2", "Option 3", "Option 4", "Option 5"}, "Option 1", false, function(Dropdown) -- [[ You can turn on the Multi Options in "false" ]]
   print(Dropdown)
end)

local ColorToggle = MainSection:AddToggle("ColorPicker w/ Toggle", false, function(x)
   print(x)
end)

ColorToggle:AddColorpicker(Color3.fromRGB(134,255,146), function(ztx)
   print(ztx)   
end)

local ToggleBind = MainSection:AddToggle("Keybind w/ Toggle", false, function(Keybind)
   print(Keybind)
end)


ToggleBind:AddKeybind()

local MainSection = MainTab:CreateSector("Watermark", "Right")

local watermark = Library:CreateWatermark("Watermark | {fps} | ")
watermark.Visible = true

MainSection:AddToggle("Toggle Watermark", false, function(x)
    watermark.Visible = x
end)

local SecondTab = Window:CreateTab("Tab 2")

local SecondSection = SecondTab:CreateSector("Second Secton", "left")

-- [[ MainTab:CreateConfigSystem("right") ]] This is the config system
