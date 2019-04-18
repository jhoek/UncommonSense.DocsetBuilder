using namespace System.Text

function New-DashDocsetPList
{
    param
    (
        [Parameter(Mandatory, Position = 0)]
        [ValidateScript( { Test-Path -Path $_ })]
        [string]$DocsetPath,

        [Parameter(Mandatory)]
        [string]$CFBundleIdentifier,

        [Parameter(Mandatory)]
        [string]$CFBundleName,

        [Parameter(Mandatory)]
        [string]$DocSetPlatformFamily,

        [string]$IndexFilePath
    )

    $PListPath = Join-Path -Path $DocsetPath -ChildPath Contents -AdditionalChildPath Info.plist

    $XmlWriter = New-Object -TypeName System.Xml.XmlTextWriter -ArgumentList $PListPath, $null
    $XmlWriter.Formatting = 'Indented'

    $XmlWriter.WriteStartDocument()
    $XmlWriter.WriteDocType('plist', '-//Apple//DTD PLIST 1.0//EN', 'http://www.apple.com/DTDs/PropertyList-1.0.dtd', $null)
    $XmlWriter.WriteStartElement("plist")
    $XmlWriter.WriteAttributeString('version', '1.0')
    $XmlWriter.WriteStartElement('dict')
    $XmlWriter.WriteElementString('key', 'CFBundleIdentifier')
    $XmlWriter.WriteElementString('string', $CFBundleIdentifier)
    $XmlWriter.WriteElementString('key', 'CFBundleName')
    $XmlWriter.WriteElementString('string', $CFBundleName)
    $XmlWriter.WriteElementString('key', 'DocSetPlatformFamily')
    $XmlWriter.WriteElementString('string', $DocSetPlatformFamily)
    $XmlWriter.WriteElementString('key', 'isDashDocset')
    $XmlWriter.WriteElementString('true', $null)
    if ($IndexFilePath)
    {
        $XmlWriter.WriteElementString('key', 'dashIndexFilePath')
        $XmlWriter.WriteElementString('string', $IndexFilePath)
    }
    $XmlWriter.WriteEndElement() # dict
    $XmlWriter.WriteEndElement() # plist
    $XmlWriter.WriteEndDocument()

    $XmlWriter.Close()

    # XmlTextWriter (and related classes) write square brackets for an empty doctype subset.
    # Dash considers these invalid, so we'll remove them below. :(

    $OldContent = Get-Content -Path $PListPath -Encoding utf8
    $NewContent = $OldContent -replace '^\<!DOCTYPE (.*)\[\]\>$', '<!DOCTYPE $1>'
    $NewContent | Set-Content -Path $PListPath -Encoding utf8
}