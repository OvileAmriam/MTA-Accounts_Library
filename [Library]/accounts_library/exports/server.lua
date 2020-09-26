----------------------------------------------------------------
--[[ Resource: Accounts Library
     Script: exports: server.lua
     Server: -
     Author: OvileAmriam
     Developer: -
     DOC: 07/09/2019 (OvileAmriam)
     Desc: Server Sided Exports ]]--
----------------------------------------------------------------


----------------------------------------
--[[ Functions: Retrieves All Users ]]--
----------------------------------------

function getAllUserAccounts()

    local query = connection.database:query("SELECT * FROM `??`", connection.tableName)
    if not query then return false end
    local result = query:poll(-1)
    if query then
        query:free()
    end
    return result

end


-----------------------------------------------
--[[ Functions: Retrieves/Sets User's Data ]]--
-----------------------------------------------

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

    return connection.database:exec("INSERT INTO `??` (`??`) VALUES(?)", connection.tableName, connection.keyColumnName, account_name)

end

function delUserAccount(account_name)

    if not account_name or not getUserData(account_name, connection.keyColumnName) then return false end

    return connection.database:exec("DELETE FROM `??` WHERE `??`=?", connection.tableName, connection.keyColumnName, account_name)

end