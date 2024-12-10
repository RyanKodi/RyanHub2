local player = game.Players.LocalPlayer

-- Função para criar um item e posicioná-lo perto do jogador
function createItem(itemName)
    local itemModel = game.Workspace:FindFirstChild(itemName)
    if itemModel then
        local itemClone = itemModel:Clone()
        itemClone.Parent = game.Workspace
        itemClone.Handle.Position = player.Character.HumanoidRootPart.Position + Vector3.new(math.random(-10, 10), 5, math.random(-10, 10)) -- Posição perto do jogador
    else
        print(itemName .. " não encontrado no Workspace")
    end
end

-- Função para fazer chover itens
function rainItems()
    local items = {"Leopard", "Dragon", "Dough"}
    for i = 1, 10 do -- Número de itens a serem criados
        local itemName = items[math.random(1, #items)]
        createItem(itemName)
        wait(1) -- Intervalo entre a criação dos itens
    end
end

-- Função para criar a tela inicial
function createInitialScreen()
    local ScreenGui = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local RainButton = Instance.new("TextButton")

    ScreenGui.Parent = player:WaitForChild("PlayerGui")
    Frame.Parent = ScreenGui
    Frame.BackgroundColor3 = Color3.new(0, 0, 1) -- Cor azul
    Frame.Size = UDim2.new(0, 300, 0, 200)
    Frame.Position = UDim2.new(0.5, -150, 0.5, -100)

    TextLabel.Parent = Frame
    TextLabel.Text = "Ryan Hub"
    TextLabel.Size = UDim2.new(1, 0, 0.3, 0)
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.TextSize = 24

    RainButton.Parent = Frame
    RainButton.Text = "Chover Itens"
    RainButton.Size = UDim2.new(0.8, 0, 0.2, 0)
    RainButton.Position = UDim2.new(0.1, 0, 0.4, 0)
    RainButton.BackgroundColor3 = Color3.new(0.2, 0.8, 0.2)
    RainButton.TextColor3 = Color3.new(1, 1, 1)
    RainButton.Font = Enum.Font.SourceSans
    RainButton.TextSize = 18

    -- Conectar função ao botão
    RainButton.MouseButton1Click:Connect(function()
        rainItems()
    end)
end

-- Chama a função para criar a tela inicial
createInitialScreen()
