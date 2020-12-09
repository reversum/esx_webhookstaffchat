# esx_webhookstaffchat

## Description

An ingame staff chat script, which automatically sends the text to its own discord. Perfect for team chats etc.

## Requirements

ESX.
A Discord Webhook.

## 🔧 Setup

Add the following things to your server.cfg:

start esx_webhookstaffchat

## ❓ How do I add custom groups?

Just go to main.lua copy the code after line 25 here an example:

```
				if xPlayer.getGroup() == 'yourrankhere' then
					xPlayer.showNotification("~r~STAFF-CHAT ~g~RANK ~s~(".. GetPlayerName(source).. "): " .. nachricht)
					sendToDiscord("(RANK) " .. name, nachricht)
				end

```

Edit Line 17:
```
if xPlayer.getGroup() == 'mod' or xPlayer.getGroup() == 'admin' or xPlayer.getGroup() == 'yourrank'  then

````

Have fun!
