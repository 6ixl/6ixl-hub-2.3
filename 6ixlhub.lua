-- 6ixl Hub
-- Стильный хаб с прозрачным фоном

local sixlHub = {
    Executor = identifyexecutor and identifyexecutor() or "6ixl",
    Version = "2.3",
    Author = "6ixl Community"
}

-- Звуки
local SoundService = game:GetService("SoundService")
local ClickSound = Instance.new("Sound")
ClickSound.SoundId = "rbxassetid://3570572347"
ClickSound.Volume = 0.7
ClickSound.Parent = SoundService

-- Новый звук для нажатия кнопок
local ButtonSound = Instance.new("Sound")
ButtonSound.SoundId = "rbxassetid://103307955424380"
ButtonSound.Volume = 0.8
ButtonSound.Parent = SoundService

-- Настройки по умолчанию
local Settings = {
    SoundEnabled = true,
    ButtonSoundsEnabled = true,
    Theme = "Amethyst",
    Notifications = true,
    ToggleKey = Enum.KeyCode.K,
    CustomSize = {Width = 500, Height = 600},
    Font = "GothamBlack"
}

-- Доступные шрифты
local AvailableFonts = {
    "GothamBlack",
    "SourceSansBold", 
    "Arial",
    "Code",
    "Highway",
    "SciFi"
}

-- Цветовые темы с прозрачным фоном
local Themes = {
    ["Amethyst"] = {
        MainBackground = Color3.fromRGB(40, 25, 60),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(75, 35, 110),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(55, 30, 85),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(45, 25, 70),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(50, 30, 80),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(180, 150, 255),
        ButtonActive = Color3.fromRGB(160, 130, 230),
        Accent = Color3.fromRGB(160, 100, 255),
        Text = Color3.fromRGB(255, 255, 255),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(220, 80, 100),
        MinimizeButton = Color3.fromRGB(30, 60, 120),
        ResizeButton = Color3.fromRGB(160, 100, 255),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Night"] = {
        MainBackground = Color3.fromRGB(15, 15, 20),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(25, 25, 35),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(20, 20, 30),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(18, 18, 25),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(22, 22, 32),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(45, 95, 150),
        ButtonActive = Color3.fromRGB(55, 105, 160),
        Accent = Color3.fromRGB(75, 125, 180),
        Text = Color3.fromRGB(220, 220, 255),
        ButtonText = Color3.fromRGB(255, 255, 255),
        CloseButton = Color3.fromRGB(180, 60, 60),
        MinimizeButton = Color3.fromRGB(20, 50, 90),
        ResizeButton = Color3.fromRGB(75, 125, 180),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Miami"] = {
        MainBackground = Color3.fromRGB(30, 15, 40),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(210, 60, 140),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(120, 40, 140),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(50, 25, 80),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(80, 35, 120),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(255, 150, 200),
        ButtonActive = Color3.fromRGB(235, 130, 180),
        Accent = Color3.fromRGB(0, 200, 255),
        Text = Color3.fromRGB(255, 255, 255),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(255, 50, 100),
        MinimizeButton = Color3.fromRGB(50, 150, 255),
        ResizeButton = Color3.fromRGB(0, 200, 255),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Banana"] = {
        MainBackground = Color3.fromRGB(45, 30, 15),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(240, 190, 50),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(200, 150, 40),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(160, 120, 30),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(180, 140, 35),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(255, 220, 100),
        ButtonActive = Color3.fromRGB(245, 210, 80),
        Accent = Color3.fromRGB(255, 180, 50),
        Text = Color3.fromRGB(50, 35, 10),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(220, 80, 80),
        MinimizeButton = Color3.fromRGB(150, 100, 30),
        ResizeButton = Color3.fromRGB(255, 180, 50),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Sun"] = {
        MainBackground = Color3.fromRGB(60, 35, 15),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(255, 140, 40),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(220, 100, 30),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(180, 80, 25),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(200, 90, 28),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(255, 180, 80),
        ButtonActive = Color3.fromRGB(245, 170, 60),
        Accent = Color3.fromRGB(255, 120, 0),
        Text = Color3.fromRGB(255, 240, 200),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(200, 70, 70),
        MinimizeButton = Color3.fromRGB(150, 80, 20),
        ResizeButton = Color3.fromRGB(255, 120, 0),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Ocean"] = {
        MainBackground = Color3.fromRGB(15, 35, 55),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(25, 80, 130),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(20, 60, 100),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(18, 45, 75),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(22, 55, 90),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(100, 180, 255),
        ButtonActive = Color3.fromRGB(90, 160, 235),
        Accent = Color3.fromRGB(0, 150, 255),
        Text = Color3.fromRGB(255, 255, 255),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(200, 70, 70),
        MinimizeButton = Color3.fromRGB(20, 70, 120),
        ResizeButton = Color3.fromRGB(0, 150, 255),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Forest"] = {
        MainBackground = Color3.fromRGB(20, 45, 25),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(40, 90, 45),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(30, 70, 35),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(25, 55, 30),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(28, 65, 33),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(120, 210, 100),
        ButtonActive = Color3.fromRGB(110, 190, 90),
        Accent = Color3.fromRGB(80, 180, 60),
        Text = Color3.fromRGB(240, 255, 220),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(180, 70, 70),
        MinimizeButton = Color3.fromRGB(30, 80, 40),
        ResizeButton = Color3.fromRGB(80, 180, 60),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Fire"] = {
        MainBackground = Color3.fromRGB(55, 20, 15),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(200, 50, 30),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(160, 40, 25),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(120, 30, 20),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(140, 35, 22),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(255, 130, 100),
        ButtonActive = Color3.fromRGB(245, 120, 90),
        Accent = Color3.fromRGB(255, 80, 40),
        Text = Color3.fromRGB(255, 240, 220),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(200, 60, 60),
        MinimizeButton = Color3.fromRGB(120, 40, 25),
        ResizeButton = Color3.fromRGB(255, 80, 40),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Lavanda"] = {
        MainBackground = Color3.fromRGB(50, 35, 65),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(140, 100, 200),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(110, 70, 170),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(80, 50, 120),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(95, 60, 140),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(210, 180, 255),
        ButtonActive = Color3.fromRGB(200, 170, 245),
        Accent = Color3.fromRGB(180, 130, 255),
        Text = Color3.fromRGB(255, 255, 255),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(200, 100, 150),
        MinimizeButton = Color3.fromRGB(100, 70, 150),
        ResizeButton = Color3.fromRGB(180, 130, 255),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Steel"] = {
        MainBackground = Color3.fromRGB(35, 40, 45),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(70, 75, 85),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(55, 60, 70),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(45, 50, 60),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(50, 55, 65),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(150, 160, 180),
        ButtonActive = Color3.fromRGB(140, 150, 170),
        Accent = Color3.fromRGB(100, 180, 220),
        Text = Color3.fromRGB(255, 255, 255),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(200, 80, 90),
        MinimizeButton = Color3.fromRGB(60, 70, 90),
        ResizeButton = Color3.fromRGB(100, 180, 220),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Pink gold"] = {
        MainBackground = Color3.fromRGB(55, 30, 40),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(255, 160, 180),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(220, 130, 150),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(180, 100, 120),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(200, 115, 135),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(255, 200, 210),
        ButtonActive = Color3.fromRGB(245, 190, 200),
        Accent = Color3.fromRGB(255, 140, 160),
        Text = Color3.fromRGB(255, 255, 255),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(220, 100, 120),
        MinimizeButton = Color3.fromRGB(160, 90, 110),
        ResizeButton = Color3.fromRGB(255, 140, 160),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Cyberpunk"] = {
        MainBackground = Color3.fromRGB(10, 20, 30),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(255, 0, 100),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(0, 255, 200),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(30, 0, 50),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(20, 0, 70),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(255, 255, 0),
        ButtonActive = Color3.fromRGB(235, 235, 0),
        Accent = Color3.fromRGB(0, 255, 255),
        Text = Color3.fromRGB(0, 255, 200),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(255, 0, 0),
        MinimizeButton = Color3.fromRGB(0, 200, 255),
        ResizeButton = Color3.fromRGB(0, 255, 255),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Chocolade"] = {
        MainBackground = Color3.fromRGB(45, 30, 20),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(140, 80, 40),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(110, 60, 30),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(90, 50, 25),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(100, 55, 28),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(220, 160, 100),
        ButtonActive = Color3.fromRGB(210, 150, 90),
        Accent = Color3.fromRGB(180, 120, 60),
        Text = Color3.fromRGB(255, 240, 200),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(200, 80, 60),
        MinimizeButton = Color3.fromRGB(100, 55, 25),
        ResizeButton = Color3.fromRGB(180, 120, 60),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Gradient"] = {
        MainBackground = Color3.fromRGB(75, 0, 130),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(138, 43, 226),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(106, 13, 173),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(153, 50, 204),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(128, 0, 128),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(255, 215, 0),
        ButtonActive = Color3.fromRGB(245, 205, 0),
        Accent = Color3.fromRGB(0, 191, 255),
        Text = Color3.fromRGB(255, 255, 255),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(255, 69, 0),
        MinimizeButton = Color3.fromRGB(199, 21, 133),
        ResizeButton = Color3.fromRGB(0, 191, 255),
        Shadow = Color3.fromRGB(0, 0, 0)
    },
    ["Neon"] = {
        MainBackground = Color3.fromRGB(0, 0, 0),
        MainBackgroundTransparency = 0.5,
        TopBar = Color3.fromRGB(57, 255, 20),
        TopBarTransparency = 0.5,
        TabBackground = Color3.fromRGB(0, 255, 127),
        TabBackgroundTransparency = 0.5,
        ContentBackground = Color3.fromRGB(255, 0, 255),
        ContentBackgroundTransparency = 0.5,
        ScrollBackground = Color3.fromRGB(0, 255, 255),
        ScrollBackgroundTransparency = 0.5,
        ButtonNormal = Color3.fromRGB(255, 255, 0),
        ButtonActive = Color3.fromRGB(235, 235, 0),
        Accent = Color3.fromRGB(255, 20, 147),
        Text = Color3.fromRGB(255, 255, 255),
        ButtonText = Color3.fromRGB(0, 0, 0),
        CloseButton = Color3.fromRGB(255, 0, 0),
        MinimizeButton = Color3.fromRGB(0, 255, 255),
        ResizeButton = Color3.fromRGB(255, 20, 147),
        Shadow = Color3.fromRGB(0, 0, 0)
    }
}

-- Функция для воспроизведения звука кнопки
local function playButtonSound()
    if Settings.SoundEnabled and Settings.ButtonSoundsEnabled then
        ButtonSound:Play()
    end
end

-- Функция для воспроизведения клика
local function playClickSound()
    if Settings.SoundEnabled then
        ClickSound:Play()
    end
end

-- Система визуальных уведомлений
local NotificationGui = Instance.new("ScreenGui")
NotificationGui.Name = "6ixlNotifications"
NotificationGui.Parent = game.CoreGui
NotificationGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
NotificationGui.IgnoreGuiInset = true

local function showNotification(title, text, duration)
    if not Settings.Notifications then return end
    
    duration = duration or 1
    
    local NotificationFrame = Instance.new("Frame")
    local NotificationCorner = Instance.new("UICorner")
    local NotificationGradient = Instance.new("UIGradient")
    local NotificationShadow = Instance.new("ImageLabel")
    local TitleLabel = Instance.new("TextLabel")
    local TextLabel = Instance.new("TextLabel")
    
    NotificationFrame.Parent = NotificationGui
    NotificationFrame.Size = UDim2.new(0, 400, 0, 80)
    NotificationFrame.Position = UDim2.new(0.5, -200, 0, -100)
    NotificationFrame.BackgroundColor3 = Color3.fromRGB(30, 15, 45)
    NotificationFrame.BackgroundTransparency = 0.1
    NotificationFrame.BorderSizePixel = 0
    NotificationFrame.ZIndex = 1000
    
    NotificationCorner.Parent = NotificationFrame
    NotificationCorner.CornerRadius = UDim.new(0, 12)
    
    NotificationGradient.Parent = NotificationFrame
    NotificationGradient.Rotation = 90
    NotificationGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(45, 25, 70)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(75, 35, 110))
    })
    
    -- Тень
    NotificationShadow.Parent = NotificationFrame
    NotificationShadow.Size = UDim2.new(1, 10, 1, 10)
    NotificationShadow.Position = UDim2.new(0, -5, 0, -5)
    NotificationShadow.BackgroundTransparency = 1
    NotificationShadow.Image = "rbxassetid://5554236805"
    NotificationShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    NotificationShadow.ImageTransparency = 0.8
    NotificationShadow.ScaleType = Enum.ScaleType.Slice
    NotificationShadow.SliceCenter = Rect.new(23, 23, 277, 277)
    NotificationShadow.ZIndex = 999
    
    TitleLabel.Parent = NotificationFrame
    TitleLabel.Size = UDim2.new(1, -20, 0, 30)
    TitleLabel.Position = UDim2.new(0, 10, 0, 5)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TitleLabel.Text = title
    TitleLabel.Font = Enum.Font.GothamBlack
    TitleLabel.TextSize = 16
    TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
    TitleLabel.ZIndex = 1001
    
    TextLabel.Parent = NotificationFrame
    TextLabel.Size = UDim2.new(1, -20, 0, 40)
    TextLabel.Position = UDim2.new(0, 10, 0, 35)
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextColor3 = Color3.fromRGB(200, 200, 255)
    TextLabel.Text = text
    TextLabel.Font = Enum.Font.Gotham
    TextLabel.TextSize = 14
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextWrapped = true
    TextLabel.ZIndex = 1001
    
    -- Анимация появления
    NotificationFrame.Position = UDim2.new(0.5, -200, 0, -100)
    
    local fadeIn = game:GetService("TweenService"):Create(NotificationFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Position = UDim2.new(0.5, -200, 0, 20)
    })
    fadeIn:Play()
    
    -- Ждем и удаляем
    task.wait(duration)
    
    local fadeOut = game:GetService("TweenService"):Create(NotificationFrame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
        Position = UDim2.new(0.5, -200, 0, -100)
    })
    fadeOut:Play()
    
    fadeOut.Completed:Connect(function()
        NotificationFrame:Destroy()
    end)
end

-- Удаляем пользовательские темы при запуске
local function cleanupCustomThemes()
    local defaultThemes = {
        "Amethyst", "Night", "Miami", "Banana", "Sun",
        "Ocean", "Forest", "Fire", "Lavanda", "Steel",
        "Pink gold", "Cyberpunk", "Chocolade", "Gradient", "Neon"
    }
    local themesToRemove = {}
    
    for themeName, _ in pairs(Themes) do
        local isDefault = false
        for _, defaultName in ipairs(defaultThemes) do
            if themeName == defaultName then
                isDefault = true
                break
            end
        end
        if not isDefault then
            table.insert(themesToRemove, themeName)
        end
    end
    
    for _, themeName in ipairs(themesToRemove) do
        Themes[themeName] = nil
    end
end

-- Запускаем очистку при старте
cleanupCustomThemes()

-- Функция для безопасного выполнения
function sixlHub:ExecuteScript(scriptCode, scriptName, categoryName)
    if not scriptCode then return end
    
    local success, err = pcall(function()
        loadstring(scriptCode)()
    end)
    
    if success then
        showNotification("6ixl Hub - " .. categoryName, "✅ " .. scriptName .. " started!", 1)
    else
        warn("[6ixlHub] Error Injection: " .. tostring(err))
        showNotification("6ixl Hub - " .. categoryName, "❌ Error: " .. tostring(err), 1)
    end
end

-- Обновленный список скриптов по категориям (с вашими изменениями)
local Scripts = {
    ["Various"] = {
        {
            Name = "Infinite Yield",
            Code = [[
                loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
            ]]
        },
        {
            Name = "ESP",
            Code = [[
                loadstring(game:HttpGet("https://raw.githubusercontent.com/nz728665/AIscripts/refs/heads/main/ColdWarMenu.lua"))("t.me/cherru_script")
            ]]
        },
        {
            Name = "Anti-AFK",
            Code = [[
                loadstring(game:HttpGet("https://raw.githubusercontent.com/hassanxzayn-lua/Anti-afk/main/antiafkbyhassanxzyn"))()
            ]]
        },
        {
            Name = "Invisible",
            Code = [[
                loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
            ]]
        },
        {
            Name = "Aimbot",
            Code = [[
                loadstring(game:HttpGet("https://pastebin.com/raw/qGJnSYeM", true))()
            ]]
        },
        {
            Name = "Universal Settings",
            Code = [[
                loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-universal-settings-v2-70793"))()
            ]]
        }
    },
    
    ["Evade"] = {
        {
            Name = "Speed Hack",
            Code = [[
                loadstring(game:HttpGet("https://raw.githubusercontent.com/thesigmacorex/RobloxScripts/main/speedhax"))()
            ]]
        }
    },
    
    ["VD"] = {
        {
            Name = "Violence District",
            Code = [[
                loadstring(game:HttpGet("https://raw.githubusercontent.com/TexRBLX/Roblox-stuff/refs/heads/main/violence-district/script.lua"))()
            ]]
        }
    },
    
    ["MM2"] = {
        {
            Name = "Vertex",
            Code = [[
                loadstring(game:HttpGet("https://raw.githubusercontent.com/vertex-peak/vertex/refs/heads/main/loadstring"))()
            ]]
        }
    },
    
    ["BH"] = {
        {
            Name = "Soluna",
            Code = [[
                loadstring(game:HttpGet("https://soluna-script.vercel.app/brookhaven.lua",true))()
            ]]
        }
    }
}

-- Функция для получения названий настроек с описаниями
local function getSettingsNames()
    return {
        {
            Name = "Sounds: " .. (Settings.SoundEnabled and "ON" or "OFF"),
            Description = "Enable/disable all sounds in the hub",
            Code = "SETTINGS_TOGGLE_SOUND"
        },
        {
            Name = "Button sounds: " .. (Settings.ButtonSoundsEnabled and "ON" or "OFF"),
            Description = "Sounds when pressing buttons",
            Code = "SETTINGS_TOGGLE_BUTTON_SOUNDS"
        },
        {
            Name = "Notifications: " .. (Settings.Notifications and "ON" or "OFF"),
            Description = "Show notifications for actions",
            Code = "SETTINGS_TOGGLE_NOTIFICATIONS"
        },
        {
            Name = "Theme: " .. Settings.Theme,
            Description = "Change interface color theme",
            Code = "SETTINGS_CHANGE_THEME"
        },
        {
            Name = "Font: " .. Settings.Font,
            Description = "Change text font",
            Code = "SETTINGS_CHANGE_FONT"
        },
        {
            Name = "Create theme",
            Description = "Create custom color theme",
            Code = "SETTINGS_CREATE_THEME"
        }
    }
end

-- Функция для получения Enum.Font из названия
local function getFontFromName(fontName)
    local fontMap = {
        ["GothamBlack"] = Enum.Font.GothamBlack,
        ["SourceSansBold"] = Enum.Font.SourceSansBold,
        ["Arial"] = Enum.Font.Arial,
        ["Code"] = Enum.Font.Code,
        ["Highway"] = Enum.Font.Highway,
        ["SciFi"] = Enum.Font.SciFi
    }
    return fontMap[fontName] or Enum.Font.GothamBlack
end

-- Функция для создания цветового редактора
local function createColorEditor()
    local ColorEditorGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner")
    local MainShadow = Instance.new("ImageLabel")
    
    local TopBar = Instance.new("Frame")
    local TopBarCorner = Instance.new("UICorner")
    local TopBarGradient = Instance.new("UIGradient")
    
    local Title = Instance.new("TextLabel")
    local CloseButton = Instance.new("TextButton")
    local CloseCorner = Instance.new("UICorner")
    
    local ContentFrame = Instance.new("Frame")
    local ContentCorner = Instance.new("UICorner")
    
    local ScrollFrame = Instance.new("ScrollingFrame")
    local ScrollCorner = Instance.new("UICorner")
    
    local UIListLayout = Instance.new("UIListLayout")
    
    -- Создаем GUI для редактора цветов
    ColorEditorGui.Parent = game.CoreGui
    ColorEditorGui.Name = "ColorEditor"
    ColorEditorGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Тень
    MainShadow.Parent = ColorEditorGui
    MainShadow.Size = UDim2.new(0, 452, 0, 552)
    MainShadow.Position = UDim2.new(0.5, -226, 0.5, -276)
    MainShadow.BackgroundTransparency = 1
    MainShadow.Image = "rbxassetid://5554236805"
    MainShadow.ImageColor3 = Color3.fromRGB(30, 15, 45)
    MainShadow.ImageTransparency = 0.7
    MainShadow.ScaleType = Enum.ScaleType.Slice
    MainShadow.SliceCenter = Rect.new(23, 23, 277, 277)
    MainShadow.ZIndex = 0
    
    -- Основной фрейм
    MainFrame.Parent = ColorEditorGui
    MainFrame.Size = UDim2.new(0, 450, 0, 550)
    MainFrame.Position = UDim2.new(0.5, -225, 0.5, -275)
    MainFrame.BackgroundColor3 = Color3.fromRGB(45, 25, 70)
    MainFrame.BackgroundTransparency = 0.1
    MainFrame.BorderSizePixel = 0
    MainFrame.ZIndex = 1
    
    MainCorner.Parent = MainFrame
    MainCorner.CornerRadius = UDim.new(0, 12)
    
    -- Верхняя панель
    TopBar.Parent = MainFrame
    TopBar.Size = UDim2.new(1, 0, 0, 50)
    TopBar.Position = UDim2.new(0, 0, 0, 0)
    TopBar.BackgroundColor3 = Color3.fromRGB(75, 35, 110)
    TopBar.BackgroundTransparency = 0.1
    TopBar.BorderSizePixel = 0
    
    TopBarCorner.Parent = TopBar
    TopBarCorner.CornerRadius = UDim.new(0, 12)
    
    TopBarGradient.Parent = TopBar
    TopBarGradient.Rotation = 90
    TopBarGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(85, 45, 120)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(120, 70, 180))
    })
    
    -- Заголовок
    Title.Parent = TopBar
    Title.Size = UDim2.new(1, -50, 1, 0)
    Title.Position = UDim2.new(0, 15, 0, 0)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Text = "🎨 Create theme"
    Title.Font = getFontFromName(Settings.Font)
    Title.TextSize = 18
    Title.TextXAlignment = Enum.TextXAlignment.Left
    
    -- Кнопка закрытия
    CloseButton.Parent = TopBar
    CloseButton.Size = UDim2.new(0, 30, 0, 30)
    CloseButton.Position = UDim2.new(1, -35, 0.5, -15)
    CloseButton.BackgroundColor3 = Color3.fromRGB(180, 70, 90)
    CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    CloseButton.Text = "×"
    CloseButton.Font = Enum.Font.GothamBlack
    CloseButton.TextSize = 20
    CloseButton.AutoButtonColor = false
    
    CloseCorner.Parent = CloseButton
    CloseCorner.CornerRadius = UDim.new(0, 8)
    
    -- Контентная область
    ContentFrame.Parent = MainFrame
    ContentFrame.Size = UDim2.new(1, -20, 1, -80)
    ContentFrame.Position = UDim2.new(0, 10, 0, 60)
    ContentFrame.BackgroundColor3 = Color3.fromRGB(55, 35, 85)
    ContentFrame.BackgroundTransparency = 0.1
    ContentFrame.BorderSizePixel = 0
    
    ContentCorner.Parent = ContentFrame
    ContentCorner.CornerRadius = UDim.new(0, 8)
    
    -- Скролл фрейм
    ScrollFrame.Parent = ContentFrame
    ScrollFrame.Size = UDim2.new(1, -10, 1, -10)
    ScrollFrame.Position = UDim2.new(0, 5, 0, 5)
    ScrollFrame.BackgroundTransparency = 1
    ScrollFrame.BorderSizePixel = 0
    ScrollFrame.ScrollBarThickness = 6
    ScrollFrame.ScrollBarImageColor3 = Color3.fromRGB(160, 100, 255)
    ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
    
    ScrollCorner.Parent = ScrollFrame
    ScrollCorner.CornerRadius = UDim.new(0, 6)
    
    UIListLayout.Parent = ScrollFrame
    UIListLayout.Padding = UDim.new(0, 10)
    
    -- Создаем элементы для выбора цветов
    local colorProperties = {
        "MainBackground", "TopBar", "TabBackground", "ContentBackground", 
        "ScrollBackground", "ButtonNormal", "ButtonActive",
        "Accent", "Text", "ButtonText", "CloseButton", "MinimizeButton"
    }
    
    local colorNames = {
        MainBackground = "Main background",
        TopBar = "Top bar", 
        TabBackground = "Tab background",
        ContentBackground = "Content background",
        ScrollBackground = "Scroll background",
        ButtonNormal = "Button (normal)",
        ButtonActive = "Button (active)",
        Accent = "Accent color",
        Text = "Text",
        ButtonText = "Button text",
        CloseButton = "Close button",
        MinimizeButton = "Minimize button"
    }
    
    local colorPickers = {}
    
    for i, prop in ipairs(colorProperties) do
        local ColorCard = Instance.new("Frame")
        local ColorCardCorner = Instance.new("UICorner")
        local ColorCardGradient = Instance.new("UIGradient")
        
        local ColorLabel = Instance.new("TextLabel")
        local ColorPreview = Instance.new("Frame")
        local ColorPreviewCorner = Instance.new("UICorner")
        local ColorButton = Instance.new("TextButton")
        local ColorButtonCorner = Instance.new("UICorner")
        local ColorButtonGradient = Instance.new("UIGradient")
        
        ColorCard.Parent = ScrollFrame
        ColorCard.Size = UDim2.new(1, -10, 0, 40)
        ColorCard.BackgroundColor3 = Color3.fromRGB(65, 45, 95)
        ColorCard.BackgroundTransparency = 0.1
        ColorCard.BorderSizePixel = 0
        
        ColorCardCorner.Parent = ColorCard
        ColorCardCorner.CornerRadius = UDim.new(0, 8)
        
        ColorCardGradient.Parent = ColorCard
        ColorCardGradient.Rotation = 90
        ColorCardGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(75, 55, 105)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(95, 75, 125))
        })
        
        ColorLabel.Parent = ColorCard
        ColorLabel.Size = UDim2.new(0.5, 0, 1, 0)
        ColorLabel.Position = UDim2.new(0, 10, 0, 0)
        ColorLabel.BackgroundTransparency = 1
        ColorLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        ColorLabel.Text = colorNames[prop] or prop
        ColorLabel.Font = getFontFromName(Settings.Font)
        ColorLabel.TextSize = 12
        ColorLabel.TextXAlignment = Enum.TextXAlignment.Left
        
        ColorPreview.Parent = ColorCard
        ColorPreview.Size = UDim2.new(0, 50, 0, 25)
        ColorPreview.Position = UDim2.new(0.5, -60, 0.5, -12)
        ColorPreview.BackgroundColor3 = Themes["Amethyst"][prop]
        ColorPreview.BorderSizePixel = 1
        ColorPreview.BorderColor3 = Color3.fromRGB(255, 255, 255)
        
        ColorPreviewCorner.Parent = ColorPreview
        ColorPreviewCorner.CornerRadius = UDim.new(0, 4)
        
        ColorButton.Parent = ColorCard
        ColorButton.Size = UDim2.new(0, 80, 0, 25)
        ColorButton.Position = UDim2.new(1, -90, 0.5, -12)
        ColorButton.BackgroundColor3 = Color3.fromRGB(100, 70, 150)
        ColorButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        ColorButton.Text = "Choose"
        ColorButton.Font = getFontFromName(Settings.Font)
        ColorButton.TextSize = 11
        ColorButton.AutoButtonColor = false
        
        ColorButtonCorner.Parent = ColorButton
        ColorButtonCorner.CornerRadius = UDim.new(0, 6)
        
        ColorButtonGradient.Parent = ColorButton
        ColorButtonGradient.Rotation = 90
        ColorButtonGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 90, 180)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 120, 220))
        })
        
        colorPickers[prop] = {Preview = ColorPreview, Value = Themes["Amethyst"][prop]}
        
        ColorButton.MouseButton1Click:Connect(function()
            playButtonSound()
            local hue = math.random(250, 320) / 360
            local saturation = math.random(60, 90) / 100
            local value = math.random(60, 90) / 100
            local newColor = Color3.fromHSV(hue, saturation, value)
            
            ColorPreview.BackgroundColor3 = newColor
            colorPickers[prop].Value = newColor
        end)
    end
    
    -- Поле для названия темы
    local NameFrame = Instance.new("Frame")
    local NameFrameCorner = Instance.new("UICorner")
    local NameLabel = Instance.new("TextLabel")
    local ThemeNameBox = Instance.new("TextBox")
    local ThemeNameBoxCorner = Instance.new("UICorner")
    
    NameFrame.Parent = ScrollFrame
    NameFrame.Size = UDim2.new(1, -10, 0, 50)
    NameFrame.BackgroundColor3 = Color3.fromRGB(65, 45, 95)
    NameFrame.BackgroundTransparency = 0.1
    
    NameFrameCorner.Parent = NameFrame
    NameFrameCorner.CornerRadius = UDim.new(0, 8)
    
    NameLabel.Parent = NameFrame
    NameLabel.Size = UDim2.new(1, 0, 0, 25)
    NameLabel.Position = UDim2.new(0, 10, 0, 5)
    NameLabel.BackgroundTransparency = 1
    NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameLabel.Text = "Theme name:"
    NameLabel.Font = getFontFromName(Settings.Font)
    NameLabel.TextSize = 12
    NameLabel.TextXAlignment = Enum.TextXAlignment.Left
    
    ThemeNameBox.Parent = NameFrame
    ThemeNameBox.Size = UDim2.new(1, -20, 0, 25)
    ThemeNameBox.Position = UDim2.new(0, 10, 0, 25)
    ThemeNameBox.BackgroundColor3 = Color3.fromRGB(45, 25, 70)
    ThemeNameBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    ThemeNameBox.PlaceholderText = "Enter theme name..."
    ThemeNameBox.Font = getFontFromName(Settings.Font)
    ThemeNameBox.TextSize = 12
    ThemeNameBox.Text = ""
    
    ThemeNameBoxCorner.Parent = ThemeNameBox
    ThemeNameBoxCorner.CornerRadius = UDim.new(0, 6)
    
    -- Кнопка сохранения
    local SaveButton = Instance.new("TextButton")
    local SaveButtonCorner = Instance.new("UICorner")
    local SaveButtonGradient = Instance.new("UIGradient")
    
    SaveButton.Parent = MainFrame
    SaveButton.Size = UDim2.new(0, 150, 0, 35)
    SaveButton.Position = UDim2.new(0.5, -75, 1, -45)
    SaveButton.BackgroundColor3 = Color3.fromRGB(100, 70, 150)
    SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    SaveButton.Text = "💾 Save theme"
    SaveButton.Font = getFontFromName(Settings.Font)
    SaveButton.TextSize = 14
    SaveButton.AutoButtonColor = false
    
    SaveButtonCorner.Parent = SaveButton
    SaveButtonCorner.CornerRadius = UDim.new(0, 8)
    
    SaveButtonGradient.Parent = SaveButton
    SaveButtonGradient.Rotation = 90
    SaveButtonGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(120, 90, 180)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(160, 120, 220))
    })
    
    -- Обновляем размер канваса
    local function updateScrollSize()
        ScrollFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 20)
    end
    
    UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateScrollSize)
    updateScrollSize()
    
    -- Обработчики событий
    CloseButton.MouseButton1Click:Connect(function()
        playButtonSound()
        ColorEditorGui:Destroy()
    end)
    
    SaveButton.MouseButton1Click:Connect(function()
        playButtonSound()
        local themeName = ThemeNameBox.Text
        if themeName == "" then
            themeName = "Custom " .. os.time()
        end
        
        local newTheme = {}
        for prop, picker in pairs(colorPickers) do
            newTheme[prop] = picker.Value
            newTheme[prop .. "Transparency"] = 0.5
        end
        newTheme.Shadow = Color3.fromRGB(0, 0, 0)
        newTheme.ResizeButton = Color3.fromRGB(160, 100, 255)
        
        Themes[themeName] = newTheme
        Settings.Theme = themeName
        
        showNotification("Theme Editor", "✅ Theme created and applied!", 1)
        
        ColorEditorGui:Destroy()
        
        -- Обновляем GUI с новой темой
        if ScreenGui then
            ScreenGui:Destroy()
            wait(0.1)
            sixlHub:CreateGUI()
        end
    end)
end

-- Переменная для хранения состояния GUI
local ScreenGui = nil
local GuiEnabled = true
local ScriptRunning = true
local isMinimized = false

-- Функция для создания загрузочного экрана
local function createSplashScreen()
    local SplashGui = Instance.new("ScreenGui")
    SplashGui.Name = "6ixlSplash"
    SplashGui.Parent = game.CoreGui
    SplashGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    SplashGui.IgnoreGuiInset = true
    
    -- Затемненный фон
    local Background = Instance.new("Frame")
    Background.Parent = SplashGui
    Background.Size = UDim2.new(1, 0, 1, 0)
    Background.Position = UDim2.new(0, 0, 0, 0)
    Background.BackgroundColor3 = Color3.fromRGB(30, 15, 45)
    Background.BackgroundTransparency = 0.3
    Background.BorderSizePixel = 0
    Background.ZIndex = 10
    
    -- Градиентный слой
    local Gradient = Instance.new("UIGradient")
    Gradient.Parent = Background
    Gradient.Rotation = 90
    Gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 20, 60)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(60, 30, 90))
    })
    
    -- Главный логотип
    local Logo = Instance.new("TextLabel")
    Logo.Parent = SplashGui
    Logo.Size = UDim2.new(0, 600, 0, 120)
    Logo.Position = UDim2.new(0.5, -300, 0.5, -100)
    Logo.BackgroundTransparency = 1
    Logo.TextColor3 = Color3.fromRGB(255, 255, 255)
    Logo.Text = "6IXL HUB"
    Logo.Font = Enum.Font.GothamBlack
    Logo.TextSize = 80
    Logo.TextStrokeTransparency = 0.5
    Logo.TextStrokeColor3 = Color3.fromRGB(160, 100, 255)
    Logo.ZIndex = 11
    
    -- Подпись Loading
    local LoadingText = Instance.new("TextLabel")
    LoadingText.Parent = SplashGui
    LoadingText.Size = UDim2.new(0, 200, 0, 40)
    LoadingText.Position = UDim2.new(0.5, -100, 0.5, 30)
    LoadingText.BackgroundTransparency = 1
    LoadingText.TextColor3 = Color3.fromRGB(200, 180, 255)
    LoadingText.Text = "LOADING"
    LoadingText.Font = Enum.Font.GothamBlack
    LoadingText.TextSize = 30
    LoadingText.ZIndex = 11
    
    -- Контейнер для полоски загрузки
    local BarContainer = Instance.new("Frame")
    BarContainer.Parent = SplashGui
    BarContainer.Size = UDim2.new(0, 400, 0, 10)
    BarContainer.Position = UDim2.new(0.5, -200, 0.5, 80)
    BarContainer.BackgroundColor3 = Color3.fromRGB(80, 50, 120)
    BarContainer.BackgroundTransparency = 0.5
    BarContainer.BorderSizePixel = 0
    BarContainer.ZIndex = 11
    
    local ContainerCorner = Instance.new("UICorner")
    ContainerCorner.Parent = BarContainer
    ContainerCorner.CornerRadius = UDim.new(0, 5)
    
    -- Полоска загрузки
    local ProgressBar = Instance.new("Frame")
    ProgressBar.Parent = BarContainer
    ProgressBar.Size = UDim2.new(0, 0, 1, 0)
    ProgressBar.Position = UDim2.new(0, 0, 0, 0)
    ProgressBar.BackgroundColor3 = Color3.fromRGB(180, 150, 255)
    ProgressBar.BorderSizePixel = 0
    ProgressBar.ZIndex = 12
    
    local ProgressCorner = Instance.new("UICorner")
    ProgressCorner.Parent = ProgressBar
    ProgressCorner.CornerRadius = UDim.new(0, 5)
    
    -- Анимация появления
    Logo.TextTransparency = 1
    LoadingText.TextTransparency = 1
    BarContainer.BackgroundTransparency = 1
    ProgressBar.BackgroundTransparency = 1
    
    -- Плавное появление
    local fadeInTween = game:GetService("TweenService"):Create(Logo, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    })
    fadeInTween:Play()
    
    game:GetService("TweenService"):Create(LoadingText, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        TextTransparency = 0
    }):Play()
    
    game:GetService("TweenService"):Create(BarContainer, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0.5
    }):Play()
    
    game:GetService("TweenService"):Create(ProgressBar, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        BackgroundTransparency = 0
    }):Play()
    
    -- Анимация полоски загрузки
    local loadTween = game:GetService("TweenService"):Create(ProgressBar, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
        Size = UDim2.new(1, 0, 1, 0)
    })
    
    loadTween:Play()
    
    return SplashGui, loadTween, Logo, LoadingText, BarContainer, ProgressBar
end

-- Функция для полного выключения GUI
local function disableGUI()
    if ScreenGui then
        ScreenGui:Destroy()
        ScreenGui = nil
    end
    GuiEnabled = false
    ScriptRunning = false
    
    if ClickSound then
        ClickSound:Stop()
        ClickSound:Destroy()
    end
    if ButtonSound then
        ButtonSound:Stop()
        ButtonSound:Destroy()
    end
end

-- Создание красивого GUI с темами
function sixlHub:CreateGUI()
    ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local MainCorner = Instance.new("UICorner")
    local MainShadow = Instance.new("ImageLabel")
    
    local TopBar = Instance.new("Frame")
    local TopBarCorner = Instance.new("UICorner")
    local TopBarGradient = Instance.new("UIGradient")
    
    local Title = Instance.new("TextLabel")
    local TitleShadow = Instance.new("TextLabel")
    
    local CloseButton = Instance.new("TextButton")
    local CloseCorner = Instance.new("UICorner")
    local CloseGradient = Instance.new("UIGradient")
    
    local MinimizeButton = Instance.new("TextButton")
    local MinimizeCorner = Instance.new("UICorner")
    local MinimizeGradient = Instance.new("UIGradient")
    
    local TabButtonsFrame = Instance.new("Frame")
    local TabButtonsCorner = Instance.new("UICorner")
    local TabButtonsGradient = Instance.new("UIGradient")
    local TabButtonsScroll = Instance.new("ScrollingFrame")
    local TabButtonsLayout = Instance.new("UIListLayout")
    
    local ContentFrame = Instance.new("Frame")
    local ContentCorner = Instance.new("UICorner")
    local ContentGradient = Instance.new("UIGradient")
    
    local ScrollFrame = Instance.new("ScrollingFrame")
    local ScrollCorner = Instance.new("UICorner")
    local ScrollGradient = Instance.new("UIGradient")
    
    local UIListLayout = Instance.new("UIListLayout")
    
    -- Получаем текущую цветовую палитру
    local function getCurrentTheme()
        return Themes[Settings.Theme] or Themes["Amethyst"]
    end
    
    local ColorPalette = getCurrentTheme()
    local currentFont = getFontFromName(Settings.Font)
    
    ScreenGui.Parent = game.CoreGui
    ScreenGui.Name = "6ixlHub"
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    
    -- Тень для основного фрейма
    MainShadow.Parent = ScreenGui
    MainShadow.Size = UDim2.new(0, Settings.CustomSize.Width + 20, 0, Settings.CustomSize.Height + 20)
    MainShadow.Position = UDim2.new(0.5, -(Settings.CustomSize.Width/2 + 10), 0.5, -(Settings.CustomSize.Height/2 + 10))
    MainShadow.BackgroundTransparency = 1
    MainShadow.Image = "rbxassetid://5554236805"
    MainShadow.ImageColor3 = ColorPalette.Shadow
    MainShadow.ImageTransparency = 0.8
    MainShadow.ScaleType = Enum.ScaleType.Slice
    MainShadow.SliceCenter = Rect.new(23, 23, 277, 277)
    MainShadow.ZIndex = 0
    
    -- Основной фрейм
    MainFrame.Parent = ScreenGui
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.BackgroundColor3 = ColorPalette.MainBackground
    MainFrame.BackgroundTransparency = ColorPalette.MainBackgroundTransparency
    MainFrame.BorderSizePixel = 0
    MainFrame.ClipsDescendants = true
    MainFrame.ZIndex = 1
    
    MainCorner.Parent = MainFrame
    MainCorner.CornerRadius = UDim.new(0, 15)
    
    -- Верхняя панель с градиентом
    TopBar.Parent = MainFrame
    TopBar.Size = UDim2.new(1, 0, 0, 60)
    TopBar.Position = UDim2.new(0, 0, 0, 0)
    TopBar.BackgroundColor3 = ColorPalette.TopBar
    TopBar.BackgroundTransparency = ColorPalette.TopBarTransparency
    TopBar.BorderSizePixel = 0
    
    TopBarCorner.Parent = TopBar
    TopBarCorner.CornerRadius = UDim.new(0, 15)
    
    TopBarGradient.Parent = TopBar
    TopBarGradient.Rotation = 90
    TopBarGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, ColorPalette.TopBar),
        ColorSequenceKeypoint.new(1, ColorPalette.Accent)
    })
    
    -- Заголовок с тенью
    TitleShadow.Parent = TopBar
    TitleShadow.Size = UDim2.new(1, 0, 1, 0)
    TitleShadow.Position = UDim2.new(0, 2, 0, 2)
    TitleShadow.BackgroundTransparency = 1
    TitleShadow.TextColor3 = Color3.fromRGB(0, 0, 0)
    TitleShadow.TextTransparency = 0.8
    TitleShadow.Text = "6ixl Hub v" .. sixlHub.Version
    TitleShadow.Font = currentFont
    TitleShadow.TextSize = 20
    TitleShadow.TextXAlignment = Enum.TextXAlignment.Center
    TitleShadow.TextYAlignment = Enum.TextYAlignment.Center
    TitleShadow.ZIndex = 1
    
    Title.Parent = TopBar
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = ColorPalette.Text
    Title.Text = "6ixl Hub v" .. sixlHub.Version
    Title.Font = currentFont
    Title.TextSize = 20
    Title.TextXAlignment = Enum.TextXAlignment.Center
    Title.TextYAlignment = Enum.TextYAlignment.Center
    Title.ZIndex = 2
    
    -- Кнопка свертывания с градиентом
    MinimizeButton.Parent = TopBar
    MinimizeButton.Size = UDim2.new(0, 35, 0, 35)
    MinimizeButton.Position = UDim2.new(1, -80, 0.5, -17)
    MinimizeButton.BackgroundColor3 = ColorPalette.MinimizeButton
    MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    MinimizeButton.Text = "−"
    MinimizeButton.Font = Enum.Font.GothamBlack
    MinimizeButton.TextSize = 22
    MinimizeButton.AutoButtonColor = false
    MinimizeButton.ZIndex = 2
    
    MinimizeCorner.Parent = MinimizeButton
    MinimizeCorner.CornerRadius = UDim.new(0, 10)
    
    MinimizeGradient.Parent = MinimizeButton
    MinimizeGradient.Rotation = 90
    MinimizeGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, ColorPalette.MinimizeButton),
        ColorSequenceKeypoint.new(1, ColorPalette.Accent)
    })
    
    -- Кнопка закрытия с градиентом
    CloseButton.Parent = TopBar
    CloseButton.Size = UDim2.new(0, 35, 0, 35)
    CloseButton.Position = UDim2.new(1, -40, 0.5, -17)
    CloseButton.BackgroundColor3 = ColorPalette.CloseButton
    CloseButton.TextColor3 = ColorPalette.Text
    CloseButton.Text = "×"
    CloseButton.Font = Enum.Font.GothamBlack
    CloseButton.TextSize = 22
    CloseButton.AutoButtonColor = false
    CloseButton.ZIndex = 2
    
    CloseCorner.Parent = CloseButton
    CloseCorner.CornerRadius = UDim.new(0, 10)
    
    CloseGradient.Parent = CloseButton
    CloseGradient.Rotation = 90
    CloseGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, ColorPalette.CloseButton),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 100, 100))
    })
    
    -- Панель табов с прокруткой
    TabButtonsFrame.Parent = MainFrame
    TabButtonsFrame.Size = UDim2.new(1, -20, 0, 60)
    TabButtonsFrame.Position = UDim2.new(0, 10, 0, 70)
    TabButtonsFrame.BackgroundColor3 = ColorPalette.TabBackground
    TabButtonsFrame.BackgroundTransparency = ColorPalette.TabBackgroundTransparency
    TabButtonsFrame.BorderSizePixel = 0
    TabButtonsFrame.ClipsDescendants = true
    
    TabButtonsCorner.Parent = TabButtonsFrame
    TabButtonsCorner.CornerRadius = UDim.new(0, 10)
    
    TabButtonsGradient.Parent = TabButtonsFrame
    TabButtonsGradient.Rotation = 90
    TabButtonsGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, ColorPalette.TabBackground),
        ColorSequenceKeypoint.new(1, ColorPalette.Accent)
    })
    
    TabButtonsScroll.Parent = TabButtonsFrame
    TabButtonsScroll.Size = UDim2.new(1, -10, 1, -10)
    TabButtonsScroll.Position = UDim2.new(0, 5, 0, 5)
    TabButtonsScroll.BackgroundTransparency = 1
    TabButtonsScroll.BorderSizePixel = 0
    TabButtonsScroll.ScrollBarThickness = 6
    TabButtonsScroll.ScrollBarImageColor3 = ColorPalette.Accent
    TabButtonsScroll.CanvasSize = UDim2.new(2, 0, 0, 0)
    
    TabButtonsLayout.Parent = TabButtonsScroll
    TabButtonsLayout.FillDirection = Enum.FillDirection.Horizontal
    TabButtonsLayout.Padding = UDim.new(0, 10)
    TabButtonsLayout.SortOrder = Enum.SortOrder.LayoutOrder
    
    -- Контентная область с градиентом
    ContentFrame.Parent = MainFrame
    ContentFrame.Size = UDim2.new(1, -20, 1, -150)
    ContentFrame.Position = UDim2.new(0, 10, 0, 140)
    ContentFrame.BackgroundColor3 = ColorPalette.ContentBackground
    ContentFrame.BackgroundTransparency = ColorPalette.ContentBackgroundTransparency
    ContentFrame.BorderSizePixel = 0
    
    ContentCorner.Parent = ContentFrame
    ContentCorner.CornerRadius = UDim.new(0, 10)
    
    ContentGradient.Parent = ContentFrame
    ContentGradient.Rotation = 90
    ContentGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, ColorPalette.ContentBackground),
        ColorSequenceKeypoint.new(1, ColorPalette.Accent)
    })
    
    -- Скролл фрейм с градиентом
    ScrollFrame.Parent = ContentFrame
    ScrollFrame.Size = UDim2.new(1, -15, 1, -15)
    ScrollFrame.Position = UDim2.new(0, 8, 0, 8)
    ScrollFrame.BackgroundColor3 = ColorPalette.ScrollBackground
    ScrollFrame.BackgroundTransparency = ColorPalette.ScrollBackgroundTransparency
    ScrollFrame.BorderSizePixel = 0
    ScrollFrame.ScrollBarThickness = 8
    ScrollFrame.ScrollBarImageColor3 = ColorPalette.Accent
    ScrollFrame.ScrollBarImageTransparency = 0.5
    
    ScrollCorner.Parent = ScrollFrame
    ScrollCorner.CornerRadius = UDim.new(0, 8)
    
    ScrollGradient.Parent = ScrollFrame
    ScrollGradient.Rotation = 90
    ScrollGradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, ColorPalette.ScrollBackground),
        ColorSequenceKeypoint.new(1, ColorPalette.Accent)
    })
    
    UIListLayout.Parent = ScrollFrame
    UIListLayout.Padding = UDim.new(0, 15)
    
    -- Анимация открытия
    local openTween = game:GetService("TweenService"):Create(MainFrame, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, Settings.CustomSize.Width, 0, Settings.CustomSize.Height),
        Position = UDim2.new(0.5, -Settings.CustomSize.Width/2, 0.5, -Settings.CustomSize.Height/2)
    })
    openTween:Play()
    
    game:GetService("TweenService"):Create(MainShadow, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, Settings.CustomSize.Width + 20, 0, Settings.CustomSize.Height + 20),
        Position = UDim2.new(0.5, -(Settings.CustomSize.Width/2 + 10), 0.5, -(Settings.CustomSize.Height/2 + 10))
    }):Play()
    
    -- Функция для анимации сворачивания/разворачивания
    local function toggleMinimize()
        if not ScriptRunning then return end
        playButtonSound()
        
        isMinimized = not isMinimized
        
        if isMinimized then
            local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In)
            game:GetService("TweenService"):Create(MainFrame, tweenInfo, {
                Size = UDim2.new(0, 0, 0, 0),
                Position = UDim2.new(0.5, 0, 0.5, 0)
            }):Play()
            
            game:GetService("TweenService"):Create(MainShadow, tweenInfo, {
                Size = UDim2.new(0, 0, 0, 0),
                Position = UDim2.new(0.5, 0, 0.5, 0)
            }):Play()
            
            MinimizeButton.Text = "+"
        else
            local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
            game:GetService("TweenService"):Create(MainFrame, tweenInfo, {
                Size = UDim2.new(0, Settings.CustomSize.Width, 0, Settings.CustomSize.Height),
                Position = UDim2.new(0.5, -Settings.CustomSize.Width/2, 0.5, -Settings.CustomSize.Height/2)
            }):Play()
            
            game:GetService("TweenService"):Create(MainShadow, tweenInfo, {
                Size = UDim2.new(0, Settings.CustomSize.Width + 20, 0, Settings.CustomSize.Height + 20),
                Position = UDim2.new(0.5, -(Settings.CustomSize.Width/2 + 10), 0.5, -(Settings.CustomSize.Height/2 + 10))
            }):Play()
            
            MinimizeButton.Text = "−"
        end
    end
    
    MinimizeButton.MouseButton1Click:Connect(toggleMinimize)
    
    -- Обработка горячей клавиши K
    local UserInputService = game:GetService("UserInputService")
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not ScriptRunning then return end
        if gameProcessed then return end
        
        if input.KeyCode == Settings.ToggleKey then
            playButtonSound()
            toggleMinimize()
        end
    end)
    
    -- Функция для закрытия GUI
    CloseButton.MouseButton1Click:Connect(function()
        if not ScriptRunning then return end
        
        playButtonSound()
        
        ScriptRunning = false
        
        local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In)
        local closeTween = game:GetService("TweenService"):Create(MainFrame, tweenInfo, {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        })
        closeTween:Play()
        
        game:GetService("TweenService"):Create(MainShadow, tweenInfo, {
            Size = UDim2.new(0, 0, 0, 0),
            Position = UDim2.new(0.5, 0, 0.5, 0)
        }):Play()
        
        if ClickSound then
            ClickSound:Stop()
            ClickSound:Destroy()
        end
        if ButtonSound then
            ButtonSound:Stop()
            ButtonSound:Destroy()
        end
        
        closeTween.Completed:Connect(function()
            disableGUI()
        end)
    end)
    
    -- Система перетаскивания окна
    local dragging = false
    local dragStart = nil
    local startPosition = nil
    
    TopBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPosition = MainFrame.Position
        end
    end)
    
    TopBar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local delta = input.Position - dragStart
            MainFrame.Position = UDim2.new(
                startPosition.X.Scale,
                startPosition.X.Offset + delta.X,
                startPosition.Y.Scale,
                startPosition.Y.Offset + delta.Y
            )
            MainShadow.Position = UDim2.new(
                startPosition.X.Scale,
                startPosition.X.Offset + delta.X - 10,
                startPosition.Y.Scale,
                startPosition.Y.Offset + delta.Y - 10
            )
        end
    end)
    
    -- Функция для применения темы
    local function applyTheme()
        ColorPalette = getCurrentTheme()
        currentFont = getFontFromName(Settings.Font)
        
        MainFrame.BackgroundColor3 = ColorPalette.MainBackground
        MainFrame.BackgroundTransparency = ColorPalette.MainBackgroundTransparency
        MainShadow.ImageColor3 = ColorPalette.Shadow
        
        TopBar.BackgroundColor3 = ColorPalette.TopBar
        TopBar.BackgroundTransparency = ColorPalette.TopBarTransparency
        TopBarGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, ColorPalette.TopBar),
            ColorSequenceKeypoint.new(1, ColorPalette.Accent)
        })
        
        TabButtonsFrame.BackgroundColor3 = ColorPalette.TabBackground
        TabButtonsFrame.BackgroundTransparency = ColorPalette.TabBackgroundTransparency
        TabButtonsGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, ColorPalette.TabBackground),
            ColorSequenceKeypoint.new(1, ColorPalette.Accent)
        })
        
        ContentFrame.BackgroundColor3 = ColorPalette.ContentBackground
        ContentFrame.BackgroundTransparency = ColorPalette.ContentBackgroundTransparency
        ContentGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, ColorPalette.ContentBackground),
            ColorSequenceKeypoint.new(1, ColorPalette.Accent)
        })
        
        ScrollFrame.BackgroundColor3 = ColorPalette.ScrollBackground
        ScrollFrame.BackgroundTransparency = ColorPalette.ScrollBackgroundTransparency
        ScrollFrame.ScrollBarImageColor3 = ColorPalette.Accent
        ScrollGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, ColorPalette.ScrollBackground),
            ColorSequenceKeypoint.new(1, ColorPalette.Accent)
        })
        
        CloseButton.BackgroundColor3 = ColorPalette.CloseButton
        CloseGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, ColorPalette.CloseButton),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 100, 100))
        })
        
        MinimizeButton.BackgroundColor3 = ColorPalette.MinimizeButton
        MinimizeGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, ColorPalette.MinimizeButton),
            ColorSequenceKeypoint.new(1, ColorPalette.Accent)
        })
        
        Title.TextColor3 = ColorPalette.Text
        Title.Font = currentFont
        
        TitleShadow.TextColor3 = Color3.fromRGB(0, 0, 0)
        TitleShadow.TextTransparency = 0.8
        TitleShadow.Font = currentFont
        
        -- Обновляем шрифты всех элементов
        for _, child in pairs(ScreenGui:GetDescendants()) do
            if child:IsA("TextLabel") or child:IsA("TextButton") or child:IsA("TextBox") then
                child.Font = currentFont
            end
        end
        
        -- Обновляем список настроек если мы на вкладке Settings
        if currentTab == "Settings" then
            sixlHub:UpdateScriptsList(ScrollFrame, UIListLayout, currentTab)
        end
    end
    
    -- Создание кнопок табов с прокруткой
    local tabs = {"Various", "Evade", "VD", "MM2", "BH", "Settings"}
    local currentTab = "Various"
    
    local function createTabButton(tabName, index)
        local TabButton = Instance.new("TextButton")
        local TabCorner = Instance.new("UICorner")
        local TabGradient = Instance.new("UIGradient")
        
        TabButton.Parent = TabButtonsScroll
        TabButton.Size = UDim2.new(0, 120, 0, 45)
        TabButton.BackgroundColor3 = tabName == currentTab and ColorPalette.ButtonActive or ColorPalette.ButtonNormal
        TabButton.TextColor3 = ColorPalette.ButtonText
        TabButton.Text = tabName
        TabButton.Font = currentFont
        TabButton.TextSize = 13
        TabButton.AutoButtonColor = false
        TabButton.ZIndex = 2
        
        TabCorner.Parent = TabButton
        TabCorner.CornerRadius = UDim.new(0, 8)
        
        TabGradient.Parent = TabButton
        TabGradient.Rotation = 90
        TabGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, tabName == currentTab and ColorPalette.ButtonActive or ColorPalette.ButtonNormal),
            ColorSequenceKeypoint.new(1, ColorPalette.Accent)
        })
        
        -- Анимация при наведении
        TabButton.MouseEnter:Connect(function()
            if tabName ~= currentTab then
                local tween = game:GetService("TweenService"):Create(TabButton, TweenInfo.new(0.2), {
                    Size = UDim2.new(0, 130, 0, 50)
                })
                tween:Play()
            end
        end)
        
        TabButton.MouseLeave:Connect(function()
            if tabName ~= currentTab then
                local tween = game:GetService("TweenService"):Create(TabButton, TweenInfo.new(0.2), {
                    Size = UDim2.new(0, 120, 0, 45)
                })
                tween:Play()
            end
        end)
        
        TabButton.MouseButton1Click:Connect(function()
            if not ScriptRunning then return end
            playButtonSound()
            
            -- Сброс размера предыдущей активной кнопки
            for _, child in pairs(TabButtonsScroll:GetChildren()) do
                if child:IsA("TextButton") and child.Text == currentTab then
                    child.Size = UDim2.new(0, 120, 0, 45)
                    break
                end
            end
            
            -- Плавный переход между вкладками
            local oldTab = currentTab
            currentTab = tabName
            
            -- Обновляем цвета кнопок табов
            for _, child in pairs(TabButtonsScroll:GetChildren()) do
                if child:IsA("TextButton") then
                    if child.Text == currentTab then
                        child.BackgroundColor3 = ColorPalette.ButtonActive
                    else
                        child.BackgroundColor3 = ColorPalette.ButtonNormal
                    end
                end
            end
            
            -- Плавная анимация контента
            game:GetService("TweenService"):Create(ContentFrame, TweenInfo.new(0.2), {
                BackgroundTransparency = 1
            }):Play()
            
            wait(0.1)
            
            -- Обновляем контент
            sixlHub:UpdateScriptsList(ScrollFrame, UIListLayout, currentTab)
            
            game:GetService("TweenService"):Create(ContentFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                BackgroundTransparency = ColorPalette.ContentBackgroundTransparency
            }):Play()
        end)
    end
    
    -- Создание всех кнопок табов
    for i, tabName in ipairs(tabs) do
        createTabButton(tabName, i)
    end
    
    -- Обновляем размер канваса для прокрутки табов
    local function updateTabScrollSize()
        local totalWidth = 0
        for _, child in pairs(TabButtonsScroll:GetChildren()) do
            if child:IsA("TextButton") then
                totalWidth = totalWidth + child.AbsoluteSize.X + 10
            end
        end
        TabButtonsScroll.CanvasSize = UDim2.new(0, totalWidth, 0, 0)
    end
    
    updateTabScrollSize()
    
    -- Функция для обработки настроек
    local function handleSettings(settingCode)
        if not ScriptRunning then return end
        
        if settingCode == "SETTINGS_TOGGLE_SOUND" then
            Settings.SoundEnabled = not Settings.SoundEnabled
            showNotification("Settings", "🔊 Sounds: " .. (Settings.SoundEnabled and "ON" or "OFF"), 1)
            
        elseif settingCode == "SETTINGS_TOGGLE_BUTTON_SOUNDS" then
            Settings.ButtonSoundsEnabled = not Settings.ButtonSoundsEnabled
            showNotification("Settings", "🔘 Button sounds: " .. (Settings.ButtonSoundsEnabled and "ON" or "OFF"), 1)
            
        elseif settingCode == "SETTINGS_TOGGLE_NOTIFICATIONS" then
            Settings.Notifications = not Settings.Notifications
            showNotification("Settings", "🔔 Notifications: " .. (Settings.Notifications and "ON" or "OFF"), 1)
            
        elseif settingCode == "SETTINGS_CHANGE_THEME" then
            local themeNames = {}
            for name, _ in pairs(Themes) do
                table.insert(themeNames, name)
            end
            
            local currentIndex = 1
            for i, name in ipairs(themeNames) do
                if name == Settings.Theme then
                    currentIndex = i
                    break
                end
            end
            
            local nextIndex = (currentIndex % #themeNames) + 1
            Settings.Theme = themeNames[nextIndex]
            
            applyTheme()
            
            showNotification("Settings", "🎨 Theme: " .. Settings.Theme, 1)
            
        elseif settingCode == "SETTINGS_CHANGE_FONT" then
            local currentIndex = 1
            for i, font in ipairs(AvailableFonts) do
                if font == Settings.Font then
                    currentIndex = i
                    break
                end
            end
            
            local nextIndex = (currentIndex % #AvailableFonts) + 1
            Settings.Font = AvailableFonts[nextIndex]
            
            applyTheme()
            
            showNotification("Settings", "📝 Font: " .. Settings.Font, 1)
            
        elseif settingCode == "SETTINGS_CREATE_THEME" then
            createColorEditor()
        end
        
        -- Обновляем списки
        if currentTab == "Settings" then
            sixlHub:UpdateScriptsList(ScrollFrame, UIListLayout, currentTab)
        end
    end
    
    -- Функция для обновления списка скриптов
    function sixlHub:UpdateScriptsList(scrollFrame, layout, tabName)
        for _, child in pairs(scrollFrame:GetChildren()) do
            if child:IsA("Frame") then
                child:Destroy()
            end
        end
        
        local scripts = {}
        if tabName == "Settings" then
            scripts = getSettingsNames()
        else
            scripts = Scripts[tabName == "Various" and "Various" or tabName] or {}
        end
        
        for i, scriptData in pairs(scripts) do
            local ScriptCard = Instance.new("Frame")
            local ScriptCardCorner = Instance.new("UICorner")
            local ScriptGradient = Instance.new("UIGradient")
            
            local ScriptName = Instance.new("TextLabel")
            local ExecuteButton = Instance.new("TextButton")
            local ExecuteCorner = Instance.new("UICorner")
            local ExecuteGradient = Instance.new("UIGradient")
            
            ScriptCard.Parent = scrollFrame
            ScriptCard.Size = UDim2.new(1, -10, 0, tabName == "Settings" and 90 or 60)
            ScriptCard.Position = UDim2.new(0, 5, 0, (i-1) * (tabName == "Settings" and 105 or 75))
            ScriptCard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScriptCard.BorderSizePixel = 0
            ScriptCard.BackgroundTransparency = 0.1
            ScriptCard.ZIndex = 1
            
            ScriptCardCorner.Parent = ScriptCard
            ScriptCardCorner.CornerRadius = UDim.new(0, 12)
            
            ScriptGradient.Parent = ScriptCard
            ScriptGradient.Rotation = 90
            ScriptGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, ColorPalette.ButtonNormal),
                ColorSequenceKeypoint.new(1, ColorPalette.Accent)
            })
            
            ScriptName.Parent = ScriptCard
            ScriptName.Size = UDim2.new(0.7, 0, 0, 30)
            ScriptName.Position = UDim2.new(0, 15, 0, tabName == "Settings" and 10 or 15)
            ScriptName.BackgroundTransparency = 1
            ScriptName.TextColor3 = ColorPalette.Text
            ScriptName.Text = scriptData.Name
            ScriptName.Font = currentFont
            ScriptName.TextSize = 16
            ScriptName.TextXAlignment = Enum.TextXAlignment.Left
            ScriptName.TextStrokeTransparency = 0.8
            ScriptName.ZIndex = 2
            
            -- Показываем описание только для вкладки Settings
            if tabName == "Settings" and scriptData.Description then
                local ScriptDesc = Instance.new("TextLabel")
                ScriptDesc.Parent = ScriptCard
                ScriptDesc.Size = UDim2.new(0.7, 0, 0, 45)
                ScriptDesc.Position = UDim2.new(0, 15, 0, 40)
                ScriptDesc.BackgroundTransparency = 1
                ScriptDesc.TextColor3 = Color3.fromRGB(
                    ColorPalette.Text.R * 0.8,
                    ColorPalette.Text.G * 0.8,
                    ColorPalette.Text.B * 0.8
                )
                ScriptDesc.Text = scriptData.Description
                ScriptDesc.Font = currentFont
                ScriptDesc.TextSize = 12
                ScriptDesc.TextXAlignment = Enum.TextXAlignment.Left
                ScriptDesc.TextWrapped = true
                ScriptDesc.ZIndex = 2
            end
            
            ExecuteButton.Parent = ScriptCard
            ExecuteButton.Size = UDim2.new(0, 100, 0, 35)
            ExecuteButton.Position = UDim2.new(1, -115, 0.5, -17)
            ExecuteButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ExecuteButton.BackgroundTransparency = 0
            ExecuteButton.TextColor3 = ColorPalette.ButtonText
            ExecuteButton.Text = tabName == "Settings" and "Apply" or "Execute"
            ExecuteButton.Font = currentFont
            ExecuteButton.TextSize = 13
            ExecuteButton.AutoButtonColor = false
            ExecuteButton.ZIndex = 2
            
            ExecuteCorner.Parent = ExecuteButton
            ExecuteCorner.CornerRadius = UDim.new(0, 10)
            
            ExecuteGradient.Parent = ExecuteButton
            ExecuteGradient.Rotation = 90
            ExecuteGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, ColorPalette.ButtonNormal),
                ColorSequenceKeypoint.new(1, ColorPalette.Accent)
            })
            
            ExecuteButton.MouseButton1Click:Connect(function()
                if not ScriptRunning then return end
                playButtonSound()
                
                if tabName == "Settings" then
                    handleSettings(scriptData.Code)
                else
                    self:ExecuteScript(scriptData.Code, scriptData.Name, tabName)
                end
            end)
        end
        
        local function updateScrollSize()
            scrollFrame.CanvasSize = UDim2.new(0, 0, 0, layout.AbsoluteContentSize.Y + 20)
        end
        
        layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateScrollSize)
        updateScrollSize()
    end
    
    -- Инициализация первого таба
    wait(0.5)
    sixlHub:UpdateScriptsList(ScrollFrame, UIListLayout, currentTab)
    
    -- Уведомление о успешной загрузке
    showNotification("6ixl Hub v" .. sixlHub.Version, "✅ Hub loaded!", 1)
end

-- Функция для запуска с загрузочным экраном
local function startWithSplash()
    -- Создаем загрузочный экран
    local SplashGui, loadTween, Logo, LoadingText, BarContainer, ProgressBar = createSplashScreen()
    
    -- Ждем завершения анимации загрузки (3 секунды)
    wait(3)
    
    -- Анимация появления текста "6IXL HUB LOADED"
    LoadingText.Text = "6IXL HUB LOADED"
    LoadingText.TextColor3 = Color3.fromRGB(180, 150, 255)
    LoadingText.TextSize = 35
    
    -- Анимация исчезновения полоски
    game:GetService("TweenService"):Create(BarContainer, TweenInfo.new(0.5), {
        BackgroundTransparency = 1
    }):Play()
    
    game:GetService("TweenService"):Create(ProgressBar, TweenInfo.new(0.5), {
        BackgroundTransparency = 1
    }):Play()
    
    -- Небольшая пауза
    wait(0.5)
    
    -- Анимация исчезновения всего загрузочного экрана
    game:GetService("TweenService"):Create(Logo, TweenInfo.new(0.5), {
        TextTransparency = 1
    }):Play()
    
    game:GetService("TweenService"):Create(LoadingText, TweenInfo.new(0.5), {
        TextTransparency = 1
    }):Play()
    
    game:GetService("TweenService"):Create(SplashGui.Frame, TweenInfo.new(0.5), {
        BackgroundTransparency = 1
    }):Play()
    
    wait(0.5)
    
    -- Удаляем загрузочный экран
    SplashGui:Destroy()
    
    -- Запускаем основной GUI
    sixlHub:CreateGUI()
end

-- Запуск с загрузочным экраном
startWithSplash()

return sixlHub
