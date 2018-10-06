# What is this project 
This project origins as I was trying to immigrant my key bindings on Mac with Karabiner for PC with Autohotkey. I was very used to the idea of super key brought by [Vonng's Capslock project](https://github.com/Vonng/Capslock) so that I decide to create a simplified mirror in Autohotkey. 
Credits should also go to the [Stackoverflow question](https://stackoverflow.com/questions/40435980/how-to-emulate-hyper-key-in-windows-10-using-autohotkey) that I learned how to map Capslock key to a Hyper key.

# Usage
To use this script is very easy, simply run the SuperKey4WinWithAutoHotKey.awk file with your AutoHotkey.

## Vonng's Mapping (Not all implemented in this project!)
![](https://github.com/Vonng/Capslock/blob/master/images/keyboard.png)

# Manual

With this script, you are able to do the following:

- Exchange Grave(`) key and Escape (ESC) key.
- Batch Navigation
	- Capslock + a -> Home
	- Capslock + e -> End
	- Capslock + s -> Previous Word
	- Capslock + d -> Next Word
- Vim Navigation
	- Capslock + h -> Left
	- Capslock + l -> Right
	- Capslock + k -> Up
	- Capslock + j -> Down
- Page Navigation
	- Capslock + u -> Home
	- Capslock + p -> End
	- Capslock + i -> Page Up
	- Capslock + o -> Page Down
- Delete
	- Capslock + n -> Delete Previous Word
	- Capslock + m -> Delete Previous Character
	- Capslock + , -> Delete Next Character
	- Capslock + . -> Delete Next Word
- Operation
	- Capslock + c -> Copy
	- Capslock + v -> Paste
