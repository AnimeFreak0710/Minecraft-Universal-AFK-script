﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.


; Do you also hate getting kicked to the hub while afk'ing?
; Then this script is for you! 
; It automatically sends the /joinqueue command every minute to make sure you can afk all night long without getting kicked for long.
; Just use one of the commands (kingdomafk, westernafk, utopiaafk, mysticafk, jurassicafk or blizzardafk) to start the script.
; I commented on the kingdomafk script to show you what does what so you can edit it yourself, just make sure that you don't make the wait time too short or you might get kicked/banned for spamming commands.
; For now it doesn't allow use on multiple windows, only 1 minecraft can be open at once. I might add multiaccount support later if I feel like it.
; Enjoy the script! - AnimeFreak0710 (IGN: Luke_van_R)


Scriptlooptime = 60000 ; 		Defines a time in ms to wait until the script restarts (default = 60 seconds)

::kingdomafk:: ;			Type this while ingame to start the script
loop ; 					Starts a loop
{
send t ; 				Opens the chat
sleep 1000 ; 				Waits 1 second to make sure the chat gets opened
send /joinqueue kingdom ; 		Types the command to join the server
send {enter} ; 				Sends the command
sleep %Scriptlooptime% ;		Waits for the defined time and then starts over
}
return ; 				Closes the loop

::spaceafk::
loop
{
send t
sleep 1000
send /joinqueue space
send {enter}
sleep %Scriptlooptime%
}
return

::westernafk::
loop
{
send t
sleep 1000
send /joinqueue western
send {enter}
sleep %Scriptlooptime%
}
return

::utopiaafk::
loop
{
send t
sleep 1000
send /joinqueue utopia
send {enter}
sleep %Scriptlooptime%
}
return

::mysticafk::
loop
{
send t
sleep 1000
send /joinqueue mystic
send {enter}
sleep %Scriptlooptime%
}
return

::jurassicafk::
loop
{
send t
sleep 1000
send /joinqueue jurassic
send {enter}
sleep %Scriptlooptime%
}
return

::blizzardafk::
loop
{
send t
sleep 1000
send /joinqueue blizzard
send {enter}
sleep %Scriptlooptime%
}
return


::stopafk:: 
reload ; reloads the script to stop all ongoing loops
return

::exitapp::
exitapp ; terminates the script
return