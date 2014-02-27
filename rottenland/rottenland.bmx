REM
This file was created by the BLIde solution explorer and should not be modified from outside BLIde
EndRem
'------------------------------------------------------------------------------------------------------------------------------------------------------
'#Region &HFF Program Info
'Program: Rottenland
'Version: 0
'Subversion: 0
'Revision: 1
'#EndRegion &HFF



'------------------------------------------------------------------------------------------------------------------------------------------------------
'#Region &H01 Compile Options
SuperStrict
'#EndRegion &H01



'------------------------------------------------------------------------------------------------------------------------------------------------------
'#Region &H0F Framework
Framework brl.math
Import brl.timer
Import brl.system
Import brl.stream
Import brl.standardio
Import brl.retro
Import brl.random
Import brl.pngloader
Import brl.pixmap
Import brl.max2d
Import brl.linkedlist
Import brl.jpgloader
Import brl.glmax2d
Import brl.d3d7max2d
Import brl.bmploader
Import brl.blitz
Import brl.basic
Import brl.d3d9max2d
'#EndRegion &H0F



'------------------------------------------------------------------------------------------------------------------------------------------------------
'#Region &HAF Imports

'#EndRegion &HAF



'------------------------------------------------------------------------------------------------------------------------------------------------------
'#Region &H04 MyNamespace
'GUI
'guid:feea4a48_63a0_4b64_aab7_11b4f29124fe
Private
TYPE z_feea4a48_63a0_4b64_aab7_11b4f29124fe_3_0 abstract  'Resource folder
End Type


TYPE z_blide_bgfeea4a48_63a0_4b64_aab7_11b4f29124fe Abstract
    Const Name:string = "Rottenland" 'This string contains the name of the program
    Const MajorVersion:Int = 0  'This Const contains the major version number of the program
    Const MinorVersion:Int = 0  'This Const contains the minor version number of the program
    Const Revision:Int =  1  'This Const contains the revision number of the current program version
    Const VersionString:String = MajorVersion + "." + MinorVersion + "." + Revision   'This string contains the assembly version in format (MAJOR.MINOR.REVISION)
    Const AssemblyInfo:String = Name + " " + MajorVersion + "." + MinorVersion + "." + Revision   'This string represents the available assembly info.
    ?win32
    Const Platform:String = "Win32" 'This constant contains "Win32", "MacOs" or "Linux" depending on the current running platoform for your game or application.
    ?
    ?MacOs
    Const Platform:String = "MacOs"
    ?
    ?Linux
    Const Platform:String = "Linux"
    ?
    ?PPC
    Const Architecture:String = "PPC" 'This const contains "x86" or "Ppc" depending on the running architecture of the running computer. x64 should return also a x86 value
    ?
    ?x86
    Const Architecture:String = "x86" 
    ?
    ?debug
    Const DebugOn : Int = True    'This const will have the integer value of TRUE if the application was build on debug mode, or false if it was build on release mode
    ?
    ?not debug
    Const DebugOn : Int = False
    ?
EndType


Type z_My_feea4a48_63a0_4b64_aab7_11b4f29124fe Abstract 'This type has all the run-tima binary information of your assembly
    Global Application:z_blide_bgfeea4a48_63a0_4b64_aab7_11b4f29124fe  'This item has all the currently available assembly version information.
    Global Resources:z_feea4a48_63a0_4b64_aab7_11b4f29124fe_3_0  'This item has all the currently available incbined files names and relative location.
End Type


Global My:z_My_feea4a48_63a0_4b64_aab7_11b4f29124fe 'This GLOBAL has all the run-time binary information of your assembly, and embeded resources shortcuts.
Public
'#EndRegion &H04 MyNamespace


'------------------------------------------------------------------------------------------------------------------------------------------------------
'#Region &H03 Includes
Include "inc\func.bmx"
Include "inc\numbers.bmx"
Include "inc\Tbuild.bmx"
Include "inc\Tconstruct.bmx"
Include "inc\Tcontemplate.bmx"
Include "inc\Ttanktemplate.bmx"
Include "inc\boostMax2D.bmx"
Include "main.bmx"
 
'#EndRegion &H03
