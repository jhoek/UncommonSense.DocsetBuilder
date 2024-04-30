# UncommonSense.DocSetBuilder

PowerShell module for generating Dash docsets.

## Requirements
Requires sqlite3.

## Index

| Command | Synopsis |
| ------- | -------- |
| [Add-DashDocsetIndexEntry](#Add-DashDocsetIndexEntry) | Add-DashDocsetIndexEntry [-DocsetPath] <string> [-Name] <string> [-Type] <string> [-Path] <string> [<CommonParameters>] |
| [New-DashDocsetFolder](#New-DashDocsetFolder) | New-DashDocsetFolder [-Path] <string> [-Name] <string> [<CommonParameters>] |
| [New-DashDocsetIndex](#New-DashDocsetIndex) | New-DashDocsetIndex [-DocsetPath] <string> [<CommonParameters>] |
| [New-DashDocsetPList](#New-DashDocsetPList) | New-DashDocsetPList [-DocsetPath] <string> -CFBundleIdentifier <string> -CFBundleName <string> -DocSetPlatformFamily <string> [-IndexFilePath <string>] [<CommonParameters>] |

<a name="Add-DashDocsetIndexEntry"></a>
## Add-DashDocsetIndexEntry
### Synopsis
Add-DashDocsetIndexEntry [-DocsetPath] <string> [-Name] <string> [-Type] <string> [-Path] <string> [<CommonParameters>]
### Syntax
```powershell
Add-DashDocsetIndexEntry [-DocsetPath] <string> [-Name] <string> [-Type] <string> [-Path] <string> [<CommonParameters>]
```
### Parameters
#### DocsetPath &lt;string&gt;
    
    Required?                    true
    Position?                    0
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### Name &lt;string&gt;
    
    Required?                    true
    Position?                    1
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### Path &lt;string&gt;
    
    Required?                    true
    Position?                    3
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### Type &lt;string&gt;
    
    Required?                    true
    Position?                    2
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
<a name="New-DashDocsetFolder"></a>
## New-DashDocsetFolder
### Synopsis
New-DashDocsetFolder [-Path] <string> [-Name] <string> [<CommonParameters>]
### Syntax
```powershell
New-DashDocsetFolder [-Path] <string> [-Name] <string> [<CommonParameters>]
```
### Parameters
#### Name &lt;string&gt;
    
    Required?                    true
    Position?                    1
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### Path &lt;string&gt;
    
    Required?                    true
    Position?                    0
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
<a name="New-DashDocsetIndex"></a>
## New-DashDocsetIndex
### Synopsis
New-DashDocsetIndex [-DocsetPath] <string> [<CommonParameters>]
### Syntax
```powershell
New-DashDocsetIndex [-DocsetPath] <string> [<CommonParameters>]
```
### Parameters
#### DocsetPath &lt;string&gt;
    
    Required?                    true
    Position?                    0
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
<a name="New-DashDocsetPList"></a>
## New-DashDocsetPList
### Synopsis
New-DashDocsetPList [-DocsetPath] <string> -CFBundleIdentifier <string> -CFBundleName <string> -DocSetPlatformFamily <string> [-IndexFilePath <string>] [<CommonParameters>]
### Syntax
```powershell
New-DashDocsetPList [-DocsetPath] <string> -CFBundleIdentifier <string> -CFBundleName <string> -DocSetPlatformFamily <string> [-IndexFilePath <string>] [<CommonParameters>]
```
### Parameters
#### CFBundleIdentifier &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### CFBundleName &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### DocSetPlatformFamily &lt;string&gt;
    
    Required?                    true
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### DocsetPath &lt;string&gt;
    
    Required?                    true
    Position?                    0
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
#### IndexFilePath &lt;string&gt;
    
    Required?                    false
    Position?                    Named
    Accept pipeline input?       false
    Parameter set name           (All)
    Aliases                      None
    Dynamic?                     false
    Accept wildcard characters?  false
<div style='font-size:small; color: #ccc'>Generated 30-04-2024 15:56</div>
