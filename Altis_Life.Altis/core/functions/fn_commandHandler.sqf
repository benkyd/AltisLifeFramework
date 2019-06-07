
// Messy and mostly stolen code
systemChat "Chat Key pressed";

// If the key pressed in the chat bar was not enter, move on
if ((_this select 1) != 28) exitWith {false};
systemChat "Enter Pressed";

private _chatmsg = ctrlText (finddisplay 24 displayctrl 101);

if ("/" != (_chatmsg select [0,1])) exitWith { };
systemChat _chatmsg;

(finddisplay 24 displayctrl 101) ctrlSetText "";
// closeDialog 0;
// (findDisplay 24) closeDisplay 1;

private _command = (_chatmsg splitString "/");
private _args = (_command splitString " ");

systemChat _command select 0;
hint format ["%1", _args];

(findDisplay 24) displayRemoveEventHandler ["KeyDown", chatCommandEventH];
