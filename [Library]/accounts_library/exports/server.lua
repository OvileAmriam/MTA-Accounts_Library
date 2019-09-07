----------------------------------------------------------------
--[[ Resource: Accounts Library
     Script: exports: server.lua
     Server: -
     Author: Tron
     Developer: -
     Last Edit: 07/09/2019 (Tron)
     Desc: Server Sided Exports ]]--
----------------------------------------------------------------


---------------------------------------------
--[[ Functions: Retrieves/Sets User Data ]]--
---------------------------------------------

function getUserData(account_name, data)

    return exports.mysql_library:getRowData(connection.tableName, account_name, connection.keyColumnName, data)

end

function setUserData(account_name, data, value)

    return exports.mysql_library:setRowData(connection.tableName, account_name, connection.keyColumnName, data, value)

end


-------------------------------------------------------
--[[ Functions: Adds/Deletes User To/From Database ]]--
-------------------------------------------------------

function addUserAccount(account_name)

    if not account_name or getUserData(account_name, connection.keyColumnName) then return false end
    return connection.database:exec("INSERT INTO "..connection.tableName.." ("..connection.keyColumnName..") VALUES(?)", account_name)

end

function delUserAccount(account_name)

    if not account_name or not getUserData(account_name, connection.keyColumnName) then return false end
    return connection.database:exec("DELETE FROM "..connection.tableName.." WHERE "..connection.keyColumnName.."='"..account_name.."'")

end