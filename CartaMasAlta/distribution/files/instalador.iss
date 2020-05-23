; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Carta Mas Alta FSB"
#define MyAppVersion "1.0"
#define MyAppPublisher "FSB Company"
#define MyAppURL "https://cartamasaltafsb.zyrosite.com/"
#define MyAppExeName "CartaMasAltaFSB.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{F9995AEC-8577-4C87-873A-5BE36CB3CE49}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\CartaMasAltaFSB
DefaultGroupName=CartaMasAltaFSB
AllowNoIcons=yes
LicenseFile=C:\Users\34639\Desktop\FPS-DAM\ENTORNOS DE DESARROLLO\UT 6\EDP601-PRACTICA_DOCUMENTAR_DISTRIBUIR\CartaMasAlta\distribution\files\licencia.txt
InfoBeforeFile=C:\Users\34639\Desktop\FPS-DAM\ENTORNOS DE DESARROLLO\UT 6\EDP601-PRACTICA_DOCUMENTAR_DISTRIBUIR\CartaMasAlta\distribution\files\leeme.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\34639\Desktop\FPS-DAM\ENTORNOS DE DESARROLLO\UT 6\EDP601-PRACTICA_DOCUMENTAR_DISTRIBUIR\CartaMasAlta\distribution\files
OutputBaseFilename=setup-cartamasaltafsb-1.0
SetupIconFile=C:\Users\34639\Desktop\FPS-DAM\ENTORNOS DE DESARROLLO\UT 6\EDP601-PRACTICA_DOCUMENTAR_DISTRIBUIR\CartaMasAlta\distribution\icono.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\34639\Desktop\FPS-DAM\ENTORNOS DE DESARROLLO\UT 6\EDP601-PRACTICA_DOCUMENTAR_DISTRIBUIR\CartaMasAlta\distribution\files\CartaMasAltaFSB.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
