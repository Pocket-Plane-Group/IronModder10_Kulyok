This is my entry for Iron Modder 10: The Oldest Trick In The Book.

9-10 December, 2007(9pm-1am). No pre-created content.

Tested on: Windows XP, SoA+ToB, clean patched(26498) install, Weidu 199.

This mod is an expansion of Dili's story - a girl the player meets in Chapter 4.

If you do not want to be spoiled, just play as you normally do.

(Hint: if you talked to Dili in Spellhold, go to the Docks District in
Chapter 6 or 7, and go down to the ships.)

If you don't mind spoilers, please, read further.



SPOILERS START HERE

1) In Chapter 3, go to the Docks District.

CLUAConsole:MoveToArea("AR0300")
CLUAConsole:SetGlobal("Chapter","GLOBAL",3)

Mia will approach you. Talk to her, see what happens. Talk to her afterwards.

3) Talk to Dili in Spellhold, before the main Chapter 4 storyline progresses.

For example: go to Desharik's estate
CLUAConsole:SetGlobal("AsylumPlot","GLOBAL",10)
CLUAConsole:SetGlobal("PirateOpen","GLOBAL",1)
CLUAConsole:MoveToArea("AR1601")
and either have Yoshimo with you(or Minsc), or have a high charisma
CLUAConsole:CreateCreature("Yoshi10")

4) Go to the Docks District again in Chapter 6(to the very south, downstairs,
the place where you met Mook if you worked for Aran Linvail), 
and watch the finale.

CLUAConsole:MoveToArea("AR0300")
CLUAConsole:SetGlobal("Chapter","GLOBAL",6)

SPOILERS END HERE 



Enjoy,
Olga Silaeva aka Kulyok.


Oh, and 

Thanks to the makers and contributors of DLTCEP, Infinity Explorer, 
Near Infinity, WeiDU, IEDSP, Baldur's Gate series and Iron Modder competition.

This mod is not developed, supported, or endorsed by BioWare, Black
Isle Studios, Interplay Entertainment Corp., or the Wizards of the Coast.

All redistribution rights belong to Pocket Plane Group.

All Iron Mods can be found at http://www.pocketplane.net/ironmod


Versions History
================

Version 1.1
-----------

Version 1.0
-----------
- Initial release.