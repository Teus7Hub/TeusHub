Loader.Window = Loader:CreateWindow(
    {
        Title = "Teus Hub",
        SubTitle = "Develope by vMh~ (dsc.gg/teusscripts)",
        TabWidth = 160,
        Size = UDim2.fromOffset(500, 290),
        Acrylic = false, -- The blur may be detectable, setting this to false disables blur entirely
        Theme = "Amethyst",
        MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
    }
) 

loadstring(game:HttpGet("https://raw.githubusercontent.com/Tsuo7/TsuoHub/refs/heads/main/fisch"))()
