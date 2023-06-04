set userInput to text returned of (display dialog "Enter the text you want to paste" default answer "" with title "github.com/alphabmjy")

set repeatCount to text returned of (display dialog "How often should it be sent?" default answer "1" with title "Made by Bene")

set repeatCount to (repeatCount as integer)

set confirmationText to "The message \"" & userInput & "\" is going to be sent " & repeatCount & " times, 5 seconds after you press confirm. There is a delay of 0.5 seconds after every sent message."

display dialog confirmationText buttons {"Cancel", "Confirm"} default button "Confirm" cancel button "Cancel" with title "How it works - Confirmation"

if button returned of result is "Confirm" then
	delay 5
	
	repeat with i from 1 to repeatCount
		tell application "System Events"
			keystroke userInput
			key code 36
			delay 0.5
		end tell
		
		delay 0.3
	end repeat
	
	display dialog "Text pasted" with title "Message Sent"
end if
