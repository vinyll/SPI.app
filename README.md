# SPI.app malware

## Disclaimer

I am NOT the author of this malware and do not install this software.
You should not in any case install this software on you computer or anyone else
as it actually sniffs http and https packets from a computers and sends them to http://www.searchawesome.net.

I won't be responsible for any use of this software.

Unfortunately it seems that I had deleted the file that was running a local server
on port 8080 and pushing the HTTPS traffic data to the remote server when discovering
what was going on.

I publish this as I've been a victim of this malware.

It also injects ads and listen to events.

This is copyrighted by searchpage.com. Some "Julien" has authored this partially or totally.

More information can be found on the [Malwarebytes blog](https://blog.malwarebytes.com/threat-analysis/2018/10/mac-malware-intercepts-encrypted-web-traffic-for-ad-injection/).


## Check if it installed on your computer

Just check if an app called "SPI" or "SPI.app" is in your Applications folder.
If it is proceed to the _uninstall_ section below.


## Uninstall this

If you've also been a victim of this malware, follow these instructions to uninstall:

1. `sudo pkill -9 SPI.app`
2. `rm -fr $HOME/Library/SPI`
3. `sudo rm -fr /Applications/SPI.app`

Do it in this order as removing SPI.app without first deleting your $HOME/Library/SPI
would reinstall it automatically…

If you don't know where to type these line and are not familiar with command lines,
the [Malwarebytes](https://www.malwarebytes.com/) application should also be able
to help you getting rid of this (even the free basic version).
