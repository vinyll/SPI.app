#!/bin/sh

#  uninstallwatcher.sh
#  spi
#
#  Created by julien on 8/2/17.
#  Copyright © 2017 searchpage. All rights reserved.


if ! [ -d "/Applications/spi.app" ]; then
    networksetup -setwebproxystate "Wi-Fi" off
    networksetup -setsecurewebproxystate "Wi-Fi" off
    networksetup -setwebproxystate "Ethernet" off
    networksetup -setsecurewebproxystate "Ethernet" off

    VERSION=$(defaults read com.searchpage.spi version)
    AID=$(defaults read com.searchpage.spi aid)
    UNIQUE_ID=$(defaults read com.searchpage.spi unique_id)

    curl "http://www.searchawesome.net/uninstall.php?un=1&v=$VERSION&reason=&unique_id=$UNIQUE_ID&aid=$AID"

    defaults delete com.searchpage.spi
    defaults delete com.searchpage.spiinstall

    rm ~/Library/LaunchAgents/spid-uninstall.plist
    rm ~/Library/LaunchAgents/spid.plist
fi
