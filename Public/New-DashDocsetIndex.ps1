function New-DashDocsetIndex
{
    param
    (
        [Parameter(Mandatory, Position = 0)]
        [ValidateScript( { Test-Path -Path $_ })]
        [string]$DocsetPath
    )

    $DatabasePath = Join-Path -Path $DocsetPath -ChildPath Contents -AdditionalChildPath Resources, docSet.dsidx

    if (Test-Path -Path $DatabasePath)
    {
        throw "Docset index $DatabasePath already exists."
    }

    sqlite3 $DatabasePath 'CREATE TABLE searchIndex(id INTEGER PRIMARY KEY, name TEXT, type TEXT, path TEXT);'
    sqlite3 $DatabasePath 'CREATE UNIQUE INDEX anchor ON searchIndex (name, type, path);'
}