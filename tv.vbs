Set WshShell = WScript.CreateObject("WScript.Shell")
If WshShell.AppActivate("TradingView") Then
    ' Window exists, it’s now activated
Else
    WshShell.Run """C:\tv.lnk"""
End If