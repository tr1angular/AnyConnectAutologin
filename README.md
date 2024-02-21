# AnyConnect Autologin
This is a simple AutoHotKey script that automates the login process for Cisco AnyConnect on Cisco Secure Mobility Client 5.

Cisco AnyConnect doesn't have the ability to store passwords for its VPN connections, so this script just launches the UI and pastes the password there and then kills itself.

Works only on single profile. It doesn't paste the username because after successful login it will remember it.

## Requirements
1. [AutoHotKey v2](https://www.autohotkey.com)
2. [Cisco Secure Client UI 5](https://www.cisco.com/c/en/us/support/security/anyconnect-secure-mobility-client/series.html)
3. Cisco AnyConnect VPN 5 (comes with Secure Client)
