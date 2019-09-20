  
----------------------------------------------------------------
--[[ Resource: Accounts Library
     Script: utilities: server.lua
     Server: -
     Author: Tron
     Developer: -
     DOC: 07/09/2019 (Tron)
     Desc: Server Sided Utilities ]]--
----------------------------------------------------------------


-------------------------------------------------
--[[ Function: Verifies Player's Login State ]]--
-------------------------------------------------

function isPlayerGuest(player)

    if isGuestAccount(getPlayerAccount(player)) then
        return true
    else
        return false
    end
    
end


----------------------------------
--[[ Event: On Resource Start ]]--
----------------------------------

addEventHandler("onResourceStart", resource, function()

    setTimer(function()
        for i, j in ipairs(getElementsByType("player")) do
            if not isPlayerGuest(j) then
                local account = getPlayerAccount(j)
                if account then
                    local account_name = getAccountName(account)
                    if account_name then
                        addUserAccount(account_name)
                    end
                end
            end
        end	
    end, 200, 1)
    
end)


--------------------------------
--[[ Event: On Player Login ]]--
--------------------------------

addEventHandler("onPlayerLogin", getRootElement(), function(_, theCurrentAccount)

    if theCurrentAccount then
        local account_name = getAccountName(theCurrentAccount)
        if account_name then
            addUserAccount(account_name)
        end
    end

end)