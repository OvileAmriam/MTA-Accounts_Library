***
# Resource Name: Accounts Library
## Developer(s): Tron
***

### Keypoints:
> An account management library inorder to maintain account datas. Requires mysql_library to work out

- ### Exports:
  - **Function:** _getUserData(account_name, data)_ **| Type:** _server_ **| Returns:** _data; else false bool_
  - **Function:** _setUserData(account_name, data, value)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _addUserAccount(account_name)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _delUserAccount(account_name)_ **| Type:** _server_ **| Returns:** _bool_
  - **Function:** _getAllUserAccounts()_ **| Type:** _server_ **| Returns:** _data; else false bool_