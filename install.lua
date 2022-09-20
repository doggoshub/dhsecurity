local content = [[local dh = {}
local activated = true
function dh:deactivate()
    activated = false
end
function dh:activate()
    activated = true
end
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    if activated == true then
        local of = game:GetService('HttpService'):JSONDecode(game:HttpGet('https://raw.githubusercontent.com/doggoshub/dhsecurity/main/offenses.json'))
        for _, v in pairs(of.offenses) do
            if msg:find(v) then
                game.Players.LocalPlayer:Kick('Hopefully we made it in time...\n\nDoggos Hub Security\n\nhttps://dsc.gg/doggos-hub')
            end
        end
    end
end)
return dh]]
writefile('dhsecurity.lua', content)
