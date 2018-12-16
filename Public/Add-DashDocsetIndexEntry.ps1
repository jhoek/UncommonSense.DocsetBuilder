function Add-DashDocsetIndexEntry
{
    param
    (
        [Parameter(Mandatory, Position = 0)]
        [ValidateScript( { Test-Path -Path $_ })]
        [string]$DocsetPath,

        [Parameter(Mandatory, Position = 1)]
        [string]$Name,

        [Parameter(Mandatory, Position = 2)]
        [ValidateSet('Annotation', 'Attribute', 'Binding', 'Builtin', 'Callback', 'Category', 'Class', 'Command', 'Component', 'Constant', 'Constructor', 'Define', 'Delegate', 'Diagram', 'Directive', 'Element', 'Entry', 'Enum', 'Environment', 'Error', 'Event', 'Exception', 'Extension', 'Field', 'File', 'Filter', 'Framework', 'Function', 'Global', 'Guide', 'Hook', 'Instance', 'Instruction', 'Interface', 'Keyword', 'Library', 'Literal', 'Macro', 'Method', 'Mixin', 'Modifier', 'Module', 'Namespace', 'Notation', 'Object', 'Operator', 'Option', 'Package', 'Parameter', 'Plugin', 'Procedure', 'Property', 'Protocol', 'Provider', 'Provisioner', 'Query', 'Record', 'Resource', 'Sample', 'Section', 'Service', 'Setting', 'Shortcut', 'Statement', 'Struct', 'Style', 'Subroutine', 'Tag', 'Test', 'Trait', 'Type', 'Union', 'Value', 'Variable', 'Word')]
        [string]$Type,

        [Parameter(Mandatory, Position = 3)]
        [string]$Path
    )

    $DatabasePath = Join-Path -Path $DocsetPath -ChildPath Contents -AdditionalChildPath Resources, docSet.dsidx

    sqlite3 $DatabasePath "INSERT OR IGNORE INTO searchIndex(name, type, path) VALUES ('$Name', '$Type', '$Path');"
}