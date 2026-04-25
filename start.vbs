' Starte Image Stitcher Anwendung
Set objShell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")

' Pfad zum Projektverzeichnis
strPath = fso.GetParentFolderName(WScript.ScriptFullName)

' Starte Backend in separatem Fenster
strBackendCmd = "cmd /k cd /d """ & strPath & "\backend"" && python app.py"
objShell.Run strBackendCmd, 1, False

' Warte 2 Sekunden
WScript.Sleep 2000

' Öffne Frontend im Edge-Browser
strURL = "http://localhost:5000/frontend/index.html"
objShell.Run "msedge.exe """ & strURL & """", 1, False

' Nachricht
MsgBox "Image Stitcher startet...", 64, "Orthographic Top-Down Image Stitcher"
