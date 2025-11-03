Set shell = CreateObject("Shell.Application")
Set WshShell = WScript.CreateObject("WScript.Shell")

found = False
For Each window In shell.Windows
    On Error Resume Next
    title = window.LocationName
    On Error GoTo 0
    If Not IsEmpty(title) Then
        If InStr(1, title, "CMC Markets", vbTextCompare) > 0 Then
            window.Activate
            found = True
            Exit For
        End If
    End If
Next

If Not found Then
    WshShell.Run """C:\cmc.lnk"""
End If