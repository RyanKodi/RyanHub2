-- Cria a ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Cria o Frame principal
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 200)
mainFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
mainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainFrame.Parent = screenGui

-- Cria o texto da pergunta
local questionLabel = Instance.new("TextLabel")
questionLabel.Size = UDim2.new(1, 0, 0.5, 0)
questionLabel.Position = UDim2.new(0, 0, 0, 0)
questionLabel.Text = "O Palmeiras Tem Mundial?"
questionLabel.TextScaled = true
questionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
questionLabel.Parent = mainFrame

-- Cria o botão "Sim"
local yesButton = Instance.new("TextButton")
yesButton.Size = UDim2.new(0.4, 0, 0.3, 0)
yesButton.Position = UDim2.new(0.1, 0, 0.6, 0)
yesButton.Text = "Sim"
yesButton.TextScaled = true
yesButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
yesButton.Parent = mainFrame

-- Cria o botão "Não"
local noButton = Instance.new("TextButton")
noButton.Size = UDim2.new(0.4, 0, 0.3, 0)
noButton.Position = UDim2.new(0.5, 0, 0.6, 0)
noButton.Text = "Não"
noButton.TextScaled = true
noButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
noButton.Parent = mainFrame

-- Função para criar a resposta
local function createResponse(text)
    local responseFrame = Instance.new("Frame")
    responseFrame.Size = UDim2.new(0, 300, 0, 200)
    responseFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
    responseFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    responseFrame.Parent = screenGui

    local responseLabel = Instance.new("TextLabel")
    responseLabel.Size = UDim2.new(1, 0, 1, 0)
    responseLabel.Position = UDim2.new(0, 0, 0, 0)
    responseLabel.Text = text
    responseLabel.TextScaled = true
    responseLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    responseLabel.Parent = responseFrame
end

-- Conecta os botões às funções
yesButton.MouseButton1Click:Connect(function()
    createResponse("Você acertou!")
end)

noButton.MouseButton1Click:Connect(function()
    createResponse("Você errou!")
end)
