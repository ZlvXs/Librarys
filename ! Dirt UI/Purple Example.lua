local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZlvXs/zQLibs/main/Dirt%20UI/Purple.lua",true))() -- You can change the Toggle Keybind (Default is F6)
local Table = {}
local x = Lib:CreateWindow("Window")
x:Section("Section")
x:Button("Button",function()
   print("Button")
end)
x:Toggle("Toggle",{location = Table, flag = "Toggle"},function() -- [[ Also you can change the Flag ]]
   print(Table["Toggle"])
end)
x:Slider("Slider",{location = Table, min = 1, max = 64, default = 32, precise = true --[[ 0.00 instead of 0 ]], flag = "Slider"},function()
   print(Table["Slider"])
end)
x:Dropdown("Dropdown",{location = Table,flag = "Dropdown",search = true --[[ Adds search bar ]], list = {"1","2","3","4","5","6","7","8","9","0"} --[[ Wont work when PlayerList is true  ]], PlayerList = true --[[ Turns the list into the players in the server ]]},function()
   print(Table["Dropdown"])
end)
x:Bind("KeyBind",{location = Table, flag = "KeyBind", default = Enum.KeyCode.E},function() -- Automatically stops when the gui is removed
   print(Table["KeyBind"])
end)
x:Box("Box",{location = Table,flag = "Box", type = "number" --[[ Only Numbers automatically on false ]], hold = "Numbers" --[[ Player Holder Text  ]]},function()
   print(Table["Box"])
end)
x:Search(Color3.fromRGB(127,0,255))--  Searcher if you have a lot of things
x:Section("Section 2")

-- [[ x:String({string = "String"}) ]]
