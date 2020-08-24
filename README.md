***
# Resource Name: Accounts Library
## Developer(s): Tron
***

### Keypoints:
> An account management library inorder to maintain account datas.
### Dependencies:
  - **mysql_library [https://github.com/OvileAmriam/MTA-Mysql_Library]**
- ### Exports:
  - **Function:** _getUserData(account_name, data)_ **| Type:** _server_ **| Returns:** _data; else false bool_
  - **Function:** _setUserData(account_name, data, value)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _addUserAccount(account_name)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _delUserAccount(account_name)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _getAllUserAccounts()_ **| Type:** _server_ **| Returns:** _table; else false bool_
