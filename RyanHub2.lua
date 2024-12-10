local player = game.Players.LocalPlayer

-- Função para criar a GUI de seleção de idioma
function createLanguageSelectionGUI()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TitleLabel = Instance.new("TextLabel")
    local EnglishButton = Instance.new("TextButton")
    local SpanishButton = Instance.new("TextButton")

    ScreenGui.Parent = player:WaitForChild("PlayerGui")
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1) -- Cor de fundo semelhante ao Blox Fruits
    Frame.Size = UDim2.new(0, 400, 0, 300)
    Frame.Position = UDim2.new(0.5, -200, 0.5, -150)
    Frame.BorderSizePixel = 0
    Frame.BackgroundTransparency = 0.5

    TitleLabel.Parent = Frame
    TitleLabel.Text = "English or Spanish?"
    TitleLabel.Size = UDim2.new(1, 0, 0.3, 0)
    TitleLabel.Position = UDim2.new(0, 0, 0.1, 0)
    TitleLabel.TextColor3 = Color3.new(1, 1, 1)
    TitleLabel.BackgroundTransparency = 1
    TitleLabel.Font = Enum.Font.SourceSansBold
    TitleLabel.TextSize = 28

    EnglishButton.Parent = Frame
    EnglishButton.Text = "English"
    EnglishButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    EnglishButton.Position = UDim2.new(0.1, 0, 0.5, 0)
    EnglishButton.BackgroundColor3 = Color3.new(0.2, 0.8, 0.2)
    EnglishButton.TextColor3 = Color3.new(1, 1, 1)
    EnglishButton.Font = Enum.Font.SourceSansBold
    EnglishButton.TextSize = 24
    EnglishButton.BorderSizePixel = 0

    SpanishButton.Parent = Frame
    SpanishButton.Text = "Spanish"
    SpanishButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    SpanishButton.Position = UDim2.new(0.1, 0, 0.75, 0)
    SpanishButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.8)
    SpanishButton.TextColor3 = Color3.new(1, 1, 1)
    SpanishButton.Font = Enum.Font.SourceSansBold
    SpanishButton.TextSize = 24
    SpanishButton.BorderSizePixel = 0

    -- Conectar funções aos botões
    EnglishButton.MouseButton1Click:Connect(function()
        print("English selected")
        -- Aqui você pode adicionar a lógica para iniciar a missão em inglês
    end)

    SpanishButton.MouseButton1Click:Connect(function()
        print("Spanish selected")
        -- Aqui você pode adicionar a lógica para iniciar a missão em espanhol
    end)
end

-- Chama a função para criar a GUI de seleção de idioma
createLanguageSelectionGUI()
