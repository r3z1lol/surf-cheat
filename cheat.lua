local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

if game.PlaceId == 5315066937 then
    if _G.surf then
        for _,v in next, workspace.Model[_G.surfMap]:GetDescendants() do
            if v:IsA("BasePart") then
                v.RobloxLocked = true
            end
        end
    end
end

if game.PlaceId == 252877716 then
    if _G.bhop then
        for _,v in next, workspace.Model[_G.bhopMap]:GetDescendants() do
            if v:IsA("BasePart") then
                v.RobloxLocked = true
            end
        end
    end
end

Mouse.Button1Down:connect(function()
	if Mouse.Target ~= nil and not Mouse.Target ~= Player.Character then
        local tp = Mouse.Target
        tp:Destroy()
    end
end)
