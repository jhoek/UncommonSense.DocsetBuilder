Import-Module (Join-Path -Path $PSScriptRoot -ChildPath UncommonSense.DocSetBuilder.psd1) -Force

Get-Command -Module UncommonSense.DocSetBuilder |
    Convert-HelpToMarkDown `
        -Title 'UncommonSense.DocSetBuilder' `
        -Preface PREFACE.md `
        -Description 'PowerShell module for generating Dash docsets.' |
    Out-File -FilePath (Join-Path -Path $PSScriptRoot -ChildPath README.md) -Encoding utf8