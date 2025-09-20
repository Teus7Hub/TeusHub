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

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Teus Hub V5",
    SubTitle = "dscg.gg/teusscripts | TeusTeam",
    TabWidth = 120,
    Size = UDim2.fromOffset(430, 300),
    Acrylic = true,
    Theme = "Amethyst"
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Scripts = Window:AddTab({ Title = T("Scripts", "Script"), Icon = "code" })
}

Tabs.Main:AddParagraph({
    Title = T("Entre em nosso Discord!", "Join our Discord!"),
    Content = "https://dsc.gg/teusscripts"
})

Tabs.Main:AddButton({
    Title = T("Copiar link do Discord", "Copy Discord link"),
    Description = ",
    Callback = function()
        setclipboard("dsc.gg/teusscripts")
        Fluent:Notify({
            Title = "Teus Hub",
            Content = T("Link copiado para sua área de transferência!", "Link copied to clipboard!"),
            Duration = 4
        })
    end
})

local games = {
    {Name = "Loading Hub...", Url = "https://raw.githubusercontent.com/Teus7Hub/TeusHub/refs/heads/main/Teusscripts.lua"},
}

for _, entry in ipairs(games) do
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

Fluent:Notify({
    Title = "Teus Hub",
    Content = T("Carregado com sucesso!", "Loaded successfully!"),
    SubContent = "https://dsc.gg/teusscripts",
    Duration = 4
})
