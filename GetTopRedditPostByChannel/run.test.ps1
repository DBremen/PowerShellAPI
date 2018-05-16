$here = Split-Path -Parent $MyInvocation.MyCommand.Path

Describe -Tags "Example" "GetTopRedditPostByChannel" {
    $res = "$env:temp\test.txt"
    $count = 5
    $channel = 'powershell'
    It "Generates an output file at $res" {
        . "$here\run.ps1" powershell 5 $res
        Test-Path $res | Should Be  $true
    }
    It "Contains $count objects" {
        . "$here\run.ps1" powershell 5 $res
        (Get-Content $res | ConvertFrom-Json).Count | Should Be 5
    }


}

