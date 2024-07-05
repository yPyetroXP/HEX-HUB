local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("HEX Hub | Uh Ah, lawzera.app", "DarkTheme")

-- Cria um ImageButton
local gui = Instance.new("ImageButton")
gui.Size = UDim2.new(0, 100, 0, 50)  -- Define o tamanho do botão
gui.Position = UDim2.new(0.5, -50, 0.5, -25)  -- Define a posição do botão (centrado)
gui.Image = "rbxassetid://17591781966"  -- Substitua pelo ID da imagem desejada

-- Função para alternar a UI
local function ExibirUI()
    Library:ToggleUI()
    print("ToggleUI function called")
end

-- Conecta o evento de clique do botão à função ToggleUI
gui.MouseButton1Click:Connect(ToggleUI)

-- Adiciona o ImageButton ao jogador
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local MainTab = Window:NewTab("Main")
local MainSection = Tab:NewSection("Main Section")

MainSection:NewButton("Créditos", "Créditos do hub", function()
    game.StarterGui:SetCore("SendNotification", {Title="HEX Hub", Text="Made by @lawzera.app (Discord contact)", Duration=5})
end)
