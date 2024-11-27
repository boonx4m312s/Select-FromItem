function Select-FromItem() {
    param(
        $options
    )
        
    $selectedIndex = 0
    $CurrentIndex = $options.Count - 1
    # Display and selection of options
    :loopLabel do {
        if ($selectedIndex -ne $CurrentIndex) {
            # Clear Console
            Clear-Host
            # View List
            for ($i = 0; $i -lt $options.Length; $i++) {
                if ($i -eq $selectedIndex) {
                    # Selected items are highlighted
                    Write-Host ">> $($options[$i])" -ForegroundColor Cyan
                }
                else {
                    Write-Host "   $($options[$i])"
                }
            }
        }
        $CurrentIndex = $selectedIndex 
        
        # Running ISE 
        if ($psISE) {
            $inputStr = Read-Host 'Press Select Number Key...(ISE Mode)'
            $selectedIndex = ([int]$inputStr) - 1
            break
        }
        else {
            $key = $key = [System.Console]::ReadKey()
            # Move up and down with the arrow keys
            switch ($key.Key) {
                'UpArrow' {
                    $selectedIndex = ($selectedIndex - 1 + $options.Length) % $options.Length
                }
                'DownArrow' {
                    $selectedIndex = ($selectedIndex + 1) % $options.Length
                }
                'Enter' {
                    # Set the selection
                    break loopLabel
                }
            }
        }
    } while ($true)
    return $options[$selectedIndex]
}

# 選択結果の表示
Write-Host $(Select-FromItem @("選択肢1", "選択肢2", "選択肢3"))
Read-Host "Press Enter to continue" | Out-Null
