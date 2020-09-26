  
----------------------------------------------------------------
--[[ Resource: Accounts Library
     Script: utilities: server.lua
     Server: -
     Author: OvileAmriam
     Developer: -
     DOC: 07/09/2019 (OvileAmriam)
     Desc: Server Sided Utilities ]]--
----------------------------------------------------------------


----------------------------------
--[[ Event: On Resource Start ]]--
----------------------------------

addEventHandler("onResourceStart", resource, function()

    Timer(function()
        for i, j in ipairs(Element.getAllByType("player")) do
            local account = j:getAccount()
            if account and not account:isGuest() then
                addUserAccount(account:getName())
            end
        end
    end, 200, 1)
    
end)


--------------------------------
--[[ Event: On Player Login ]]--
--------------------------------

addEventHandler("onPlayerLogin", root, function(_, account)

    if account then
        addUserAccount(account:getName())
    end

end)