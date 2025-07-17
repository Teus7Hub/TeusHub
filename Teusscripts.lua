local MenuUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/ZoiIntra/SetUIY/main/One.lua"))()
MenuUI:WindowCreate("Teus Hub", "rbxassetid://80086118575102", "dsc.gg/teusscripts")

MenuUI:ButtonAdd("Blox Fruits Main ✔", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/TeusHub.lua"))()
    MenuUI:WindowDelete()
end)

MenuUI:ButtonAdd("Blox Fruits Kaitun ❌", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/Kaitun.lua"))()
    MenuUI:WindowDelete()
end)

MenuUI:ButtonAdd("universal (all Game) ✔", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/TeusHubUniversal.lua"))()
    MenuUI:WindowDelete()
end)

MenuUI:ButtonAdd("Murder Mystery 2 ✔", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/MM2.lua"))()
    MenuUI:WindowDelete()
end)

game:GetService("Players").LocalPlayer.Idled:Connect(function()
    local vu = game:GetService("VirtualUser")
    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local function safeLoad(url)
    pcall(function()
        loadstring(game:HttpGet(url))()
    end)
end

local gameId = game.PlaceId
if gameId == 10260193230 then
    -- Meme Sea
    safeLoad("https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/Memesea.lua")
end
