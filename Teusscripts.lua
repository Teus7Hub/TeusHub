if gameId == 2753915549 or gameId == 4442272183 or gameId == 7449423635 then
    
-- Teus Hub Loading 😈
-- Ant-Afk ❄️
    game:GetService("Players").LocalPlayer.Idled:connect(function()
     game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
wait(1)
game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)
 print("Ant-Afk")
-- List Of Games Script 👾
local MenuUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/SetUIY/main/One.lua"))()
MenuUI:WindowCreate("Teus Hub","rbxassetid://80086118575102","dsc.gg/teusscripts")
MenuUI:ButtonAdd("Blox Fruits Main",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/TeusHub.lua"))()
    MenuUI:WindowDelete()
end)
MenuUI:ButtonAdd("Blox Fruits Kaitun",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/Kaitun.lua"))()
    MenuUI:WindowDelete()
end)
MenuUI:ButtonAdd("universal (all Game)",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/TeusHubUniversal.lua"))()
    MenuUI:WindowDelete()
end)
MenuUI:ButtonAdd("Murder Mystery 2",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/MM2.lua"))()
    MenuUI:WindowDelete()
end)
--open source niggas
