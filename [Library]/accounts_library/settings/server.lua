  
----------------------------------------------------------------
--[[ Resource: Accounts Library
     Script: settings: server.lua
     Server: -
     Author: OvileAmriam
     Developer: -
     DOC: 07/09/2019 (OvileAmriam)
     Desc: Server Sided Settings ]]--
----------------------------------------------------------------


------------------
--[[ Settings ]]--
------------------

connection = {

    database = exports.mysql_library:getDatabase(),
    tableName = "accountdata",
    keyColumnName = "name"

}

connection.database:exec("CREATE TABLE IF NOT EXISTS `??` (`??` VARCHAR(50) PRIMARY KEY)", connection.tableName, connection.keyColumnName)