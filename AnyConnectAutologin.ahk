
#SingleInstance force

; Default path to Cisco Secure Mobility Client's UI
SecureClientExecutable := "C:\Program Files (x86)\Cisco\Cisco Secure Client\UI\csc_ui.exe"
UserPassword := "<Paste your password here>"

MainWindowTitle := "Cisco Secure Client"
LoginWindowTitle := "Cisco Secure Client | "  ; after | you can specify profile's name

; Press Alt+A to activate.
!a::
{
    Run SecureClientExecutable
    WinWait MainWindowTitle
    if WinExist(MainWindowTitle)
        WinActivate "Cisco Secure Client"
        Send "{Enter}"

        WinWait LoginWindowTitle

        Send "{LWin}{Esc}"
        WinActivate LoginWindowTitle
        Send "{Enter}"

        WinActivate LoginWindowTitle
        SendText UserPassword
        Send "{Enter}"

    Sleep 5000
    ProcessClose "AutoHotkey 64-bit"
    ExitApp
    Return
}
