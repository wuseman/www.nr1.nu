# urpmi

##### Apply all pending updates to Mandriva Linux system (2008.0 and newer).

   urpmi  auto-update force    # apply all pending updates (Mandriva Linux)

##### reset Mageia urpmi media sources to network only

   urpmi .removemedia -a && urpmi.addmedia distrib mirrorlist

##### Define Google Talk plugin urpmi media source for Mandriva/Mageia (works for both 32-bit and 64-bit systems)

   urpmi .addmedia update google-talkplugin http://dl.google.com/linux/talkplugin/rpm/stable/$(uname -m | sed -e "s/i.86/i386/")

##### reset Mageia urpmi media sources to network only

   urpmi .removemedia -a && urpmi.addmedia distrib mirrorlist
