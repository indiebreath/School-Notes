#!/usr/bin/pwsh

$directory = Read-Host "Enter a directory "
$filetype = Read-Host "Enter a filetype "

Get-ChildItem -Path $directory* -Filter *$filetype | Select-Object Name,Directory | Format-Table -AutoSize *
