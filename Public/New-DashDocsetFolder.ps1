using namespace System.IO

function New-DashDocsetFolder
{
    param
    (
        [ValidateScript( { Test-Path -Path $_ } )]
        [Parameter(Mandatory, Position = 0)]
        [string]$Path,

        [ValidateScript( { ($_).IndexOfAny([Path]::GetInvalidFileNameChars()) -eq -1 } )]
        [Parameter(Mandatory, Position = 1)]
        [string]$Name
    )

    $DocsetFolderPath = Join-Path -Path $Path -ChildPath $Name

    if (Test-Path -Path $DocsetFolderPath)
    {
        throw "Docset folder $DocsetFolderPath already exists."
    }

    $DocumentsFolderPath = Join-Path -Path $DocsetFolderPath -ChildPath Contents -AdditionalChildPath Resources, Documents

    New-Item -Path $DocumentsFolderPath -ItemType Directory
}