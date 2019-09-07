  
----------------------------------------------------------------
--[[ Resource: Accounts Library
     Script: settings: server.lua
     Server: -
     Author: Tron
     Developer: -
     Last Edit: 07/09/2019 (Tron)
     Desc: Server Sided Settings ]]--
----------------------------------------------------------------


------------------
--[[ Settings ]]--
------------------

connection = {

    database = exports.mysql_library:getDatabase(),
    tableName = "AccountData",
    keyColumnName = "name"

}

connection.database:exec("CREATE TABLE IF NOT EXISTS "..connection.tableName.." ("..connection.keyColumnName.." VARCHAR(50) PRIMARY KEY)")