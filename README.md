# Select-FromItem
Powershellで対話型のリスト選択をする関数

# インストール
関数部分をコピペするか、Select-FormItem.ps1をCloneします。
Cloneの場合はプログラムを呼び出してから```Select-FormItem```を実行してください

# 使い方
```
$result = Select-FromItem @("Option1", "Option2", "Option3")
Write-Host "選択したのは $result"
Read-Host "Press Enter to continue" | Out-Null
```
# 引数
必ず配列で渡してください。  
Dictionaryなどでは動作しません。  

# 注意点
本ps1はPowershell5とPowershell7両方動作確認していますが、Powershell5 ISEでデバッグ実行した際には挙動が変わります。  
ISEでは```[System.Console]::ReadKey()```が動作しないため```Read-Host```で処理しています。  
そのためISEでは上下キーで選択するのはなく、番号を入力してください。
