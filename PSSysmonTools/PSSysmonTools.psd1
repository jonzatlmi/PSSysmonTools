@{
RootModule = 'PSSysmonTools.psm1'

ModuleVersion = '0.2.2.0'

GUID = '0f91cb8e-56b8-44c2-821c-bab1ad7c369a'

Author = 'Matthew Graeber'

Copyright = 'BSD 3-Clause'

Description = 'A module for working with Sysinternals Sysmon.'

PowerShellVersion = '3.0'

# Functions to export from this module
FunctionsToExport = @(
    'Get-SysmonConfiguration',
    'ConvertFrom-SysmonBinaryConfiguration',
    'Test-SysmonConfiguration',
    'ConvertTo-SysmonXMLConfiguration',
    'Merge-SysmonXMLConfiguration'
)

PrivateData = @{

    PSData = @{
        Tags = @('security', 'DFIR', 'defense')

        LicenseUri = 'https://github.com/mattifestation/PSSysmonTools/blob/master/LICENSE'

        ProjectUri = 'https://github.com/mattifestation/PSSysmonTools'

        ReleaseNotes = @'
0.2.3
-----
Bug fixes:
* Uppercase hash algorithms are supported. Thanks, Carlos Perez!

0.2.2
-----
Enhancements:
* Added Pester tests to test across all supported versions of Sysmon

Bug fixes:
* Fixed version display inconsistency in Get-SysmonConfiguration -MatchExeOutput

0.2.1
-----
Enhancements:
* Updated to support Sysmon v7 and schema version 4.0

0.2.0
-----
Enhancements:
* Added ConvertTo-SysmonXMLConfiguration
* Test-SysmonConfiguration now supports input from the pipeline.
* Added Merge-SysmonXMLConfiguration

0.1.0
-----
Enhancements:
* PSSysmonTools is now a proper PowerShell module.
* Added Get-SysmonConfiguration, ConvertFrom-SysmonBinaryConfiguration, Test-SysmonConfiguration
* Added a Sysmon 3.4 configuration schema in the Schemas directory
* Added a mostly autogenerated 3.4 schema instance to Tests\SampleConfigs\Sysmon_3_40_Autogenerated.xml
'@
    }

}

}
