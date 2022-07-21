# defaults

##### Set default "New Page" as HTML in TextMate

   defaults  write com.macromates.textmate OakDefaultLanguage 17994EC8-6B1D-11D9-AC3A-000D93589AF6

##### Remap "New Folder" to Command+N, "New Finder Window" to Cmd+Shift+N in Mac OS X

   defaults  write com.apple.finder NSUserKeyEquivalents -dict 'New Finder Window' '@$N' 'New Folder' '@N'; killall Finder

##### Make the Mac OS X Dock 2D once more (10.5 and above only)

   defaults  write com.apple.Dock no-glass -boolean YES; killall Dock

##### Turns hidden applications transparent in the Mac OS X dock.

   defaults  write com.apple.Dock showhidden -bool YES

##### use the short username by default for network authentication

   defaults  write /Library/Preferences/com.apple.NetworkAuthorization UseShortName -bool YES

##### Stop Mac OSX from creating .DS_Store files when interacting with a remote file server with the Finder

   defaults  write com.apple.desktopservices DSDontWriteNetworkStores true

##### Show hidden files

   defaults  write com.apple.finder AppleShowAllFiles TRUE

##### Drag A Dashboard Widget Onto OS X Desktop

   defaults  write com.apple.dashboard devmode YES

##### Change Mac OS X Login Picture

   defaults  write /Library/Preferences/com.apple.loginwindow DesktopPicture "/System/Library/CoreServices/Finder.app/Contents/Resources/vortex.png"

##### Show hidden files in OS X

   defaults  write com.apple.Finder AppleShowAllFiles TRUE

##### Disable Mac OS X Dashboard

   defaults  write com.apple.dashboard mcx-disabled -boolean YES; killall Dock

##### Make keyboard keys repeat properly

   defaults  write -g ApplePressAndHoldEnabled -bool false

##### Add spacer to left side of Dock

   defaults  write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'; killall Dock

##### Add spacer to right side of Dock

   defaults  write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'; killall Dock

##### Terminal window focus on mouseover (mimicking X11 behavior) in Mac OS X

   defaults  write com.apple.terminal FocusFollowsMouse -string YES

##### Make the Mac OS X Dock 2D once more (10.5 and above only)

   defaults  write com.apple.Dock no-glass -boolean YES; killall Dock

##### Turns hidden applications transparent in the Mac OS X dock.

   defaults  write com.apple.Dock showhidden -bool YES

##### use the short username by default for network authentication

   defaults  write /Library/Preferences/com.apple.NetworkAuthorization UseShortName -bool YES

##### Stop Mac OSX from creating .DS_Store files when interacting with a remote file server with the Finder

   defaults  write com.apple.desktopservices DSDontWriteNetworkStores true

##### Show hidden files

   defaults  write com.apple.finder AppleShowAllFiles TRUE

##### Drag A Dashboard Widget Onto OS X Desktop

   defaults  write com.apple.dashboard devmode YES

##### Change Mac OS X Login Picture

   defaults  write /Library/Preferences/com.apple.loginwindow DesktopPicture "/System/Library/CoreServices/Finder.app/Contents/Resources/vortex.png"

##### Show hidden files in OS X

   defaults  write com.apple.Finder AppleShowAllFiles TRUE

##### Disable Mac OS X Dashboard

   defaults  write com.apple.dashboard mcx-disabled -boolean YES; killall Dock

##### Make keyboard keys repeat properly

   defaults  write -g ApplePressAndHoldEnabled -bool false
