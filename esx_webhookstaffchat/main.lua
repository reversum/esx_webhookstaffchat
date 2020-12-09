
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


function sendToDiscord(name, message)
    if message == nil or message == '' then return FALSE end
    PerformHttpRequest('-- Your Webhook HERE --', function(err, text, headers) end, 'POST', json.encode({username = name, content = message}), { ['Content-Type'] = 'application/json' })
end


RegisterCommand("staffchat", function(source, args, rawCommand)
		local args = table.concat(args, " ")
		local name = GetPlayerName(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		if xPlayer.getGroup() == 'mod' or xPlayer.getGroup() == 'admin' then
			local xPlayers = ESX.GetPlayers()
			for i=1, #xPlayers, 1 do
				local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
				
				if xPlayer.getGroup() == 'mod' then
					xPlayer.showNotification("~r~STAFF-CHAT ~g~Moderator ~s~(".. GetPlayerName(source).. "): " .. nachricht)
					sendToDiscord("(MODERATOR) " .. name, nachricht)
				end
				if xPlayer.getGroup() == 'admin' then
					xPlayer.showNotification("~r~STAFF-CHAT ~r~~h~Admin~h~ ~s~(".. GetPlayerName(source).. "): " .. nachricht)
					sendToDiscord("(ADMIN) " .. name, nachricht)

				end
			end
		end
end)


sendToDiscord("STAFF-CHAT", "Script started")
