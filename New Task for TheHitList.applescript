-- Adds new tasks to the The Hit List Inbox via text-input mode

-- Take the following code, paste it into Script Editor and save to as an Apple Script to ~/Library È Application Support È Quicksilver È Actions
-- Create the directory if it is missing

-- I named it "Task Entry for TheHitList.scpt"

-- Relaunch Quicksilver (Command-Control-Q) to reload the

-- Open text input mode (launch with hot key of your choice, and press period), then input the task description press tab, enter "hit" or any text identifying your script by its name and press return

using terms from application "Quicksilver"
	on process text theText
		tell application "The Hit List"
			tell inbox to make new task with properties {title:theText as Unicode text}
		end tell
	end process text
end using terms from