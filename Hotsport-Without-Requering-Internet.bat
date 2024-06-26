@echo off
netsh wlan set hostednetwork mode=allow ssid=NoInternetHotspot key=12345678
netsh wlan start hostednetwork

echo To share your internet, enable Internet Connection Sharing (ICS): Right-click your main internet adapter (e.g., Ethernet or Wi-Fi), select Properties, go to the Sharing tab, check Allow other network users to connect through this computer's Internet connection, and select the hosted network adapter (e.g., "Local Area Connection* X") from the dropdown.

echo.
echo Once you have shared your internet and connected your devices to the hotspot, press any key to close the hosted network.

pause >nul

:: Closing the hosted network when any key is pressed
netsh wlan stop hostednetwork