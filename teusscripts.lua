local Players = game:GetService("Players")
local LocalizationService = game:GetService("LocalizationService")
local LocalPlayer = Players.LocalPlayer

local success, countryCode = pcall(function()
    return LocalizationService:GetCountryRegionForPlayerAsync(LocalPlayer)
end)

local isPortuguese = false
if success and countryCode == "BR" then
    isPortuguese = true
else
    local PlayerLocaleId = LocalizationService.RobloxLocaleId or "en-us"
    if string.find(PlayerLocaleId:lower(), "pt") then
        isPortuguese = true
    end
end

local function T(pt, en)
    return isPortuguese and pt or en
end

Players.LocalPlayer.Idled:Connect(function()
    local vu = game:GetService("VirtualUser")
    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(1)
    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Teus Hub - Main [ Free ]",
    SubTitle = "dsc.gg/teusscripts | TeusTeam",
    TabWidth = 120,
    Size = UDim2.fromOffset(430, 300),
    Acrylic = true,
    Theme = "Amethyst"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Scripts = Window:AddTab({ Title = T("Scripts", "Scripts"), Icon = "code" })
}

Tabs.Main:AddParagraph({
    Title = T("Entre em nosso Discord!", "Join our Discord!"),
    Content = "https://dsc.gg/teusscripts"
})

Tabs.Main:AddButton({
    Title = T("Copiar link do Discord", "Copy Discord link"),
    Description = T("Copia o convite do Discord para a área de transferência.", "Copies the Discord invite to clipboard."),
    Callback = function()
        setclipboard("dsc.gg/teusscripts")
        Fluent:Notify({
            Title = "Teus Hub",
            Content = T("Link copiado para sua área de transferência!", "Link copied to clipboard!"),
            Duration = 4
        })
    end
})

local scripts = {
    { Name = "Loading Main Teus Hub V5...", Url = "https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/Teusscripts.lua" },
}

for _, entry in ipairs(scripts) do
    Tabs.Scripts:AddButton({
        Title = entry.Name,
        Description = T("Executar script de ", "Execute script for ") .. entry.Name,
        Callback = function()
            loadstring(game:HttpGet(entry.Url))()
            Window:Destroy()
        end
    })
end

Window:SelectTab(1)

-- Notificação inicial
Fluent:Notify({
    Title = "Teus Hub V5",
    Content = T("Carregado com sucesso!", "Loaded successfully!"),
    SubContent = "https://dsc.gg/teusscripts",
    Duration = 4
})
