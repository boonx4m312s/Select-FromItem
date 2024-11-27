# Select-FromItem
Powershellで対話型のリスト選択をする関数

# インストール
関数部分をコピペするか、Select-FormItem.ps1をCloneします。
Cloneの場合はプログラムを呼び出してから```Select-FormItem```を実行してください

# 使い方
```
$result = Select-FromItem @("選択肢1", "選択肢2", "選択肢3")
Write-Host "選択したのは $result"
Read-Host "Press Enter to continue" | Out-Null
```

# 注意点
本ps1はPowershell5とPowershell7両方動作確認していますが、Powershell5 ISEでデバッグ実行した際には挙動が変わります。  
