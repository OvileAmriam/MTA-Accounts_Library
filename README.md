***
## Resource: Accounts Library
## Developer(s): OvileAmriam
***

### Keypoints:
  :heavy_check_mark: **Eases out Account management.**

  :heavy_check_mark: **Easy to understand & integrate APIs.**

  :heavy_check_mark: **Syncs Default Account w/ MySQL.**

  :heavy_check_mark: **Syncs Account's Datas w/ MySQL.**

  :heavy_check_mark: **Alternative to native setAccountData/getAccountData.**

  :warning: **Sync version** [Don't overuse it frequently; Instead cache your datas]

### Dependencies:
  - **[Mysql Library](https://github.com/OvileAmriam/MTA-Mysql_Library)**

### Exports:
  - **Function:** _getUserData(account_name, data)_ **| Type:** _server_ **| Returns:** _data; else false bool_
  - **Function:** _setUserData(account_name, data, value)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _addUserAccount(account_name)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _delUserAccount(account_name)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _getAllUserAccounts()_ **| Type:** _server_ **| Returns:** _data; else false bool_
