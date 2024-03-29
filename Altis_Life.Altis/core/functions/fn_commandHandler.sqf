/** 
 * Copyright© Benjamin Kyd 2019
 *     fn_commandHandler.sqf
 *
 *  Handles command input from keyHandler and calls the registered
 * command if it exists
 */

systemChat "Chat Key pressed";

// If the key pressed in the chat bar was not enter, move on
if ((_this select 1) != 28) exitWith {false};
systemChat "Enter Pressed";

private _chatmsg = ctrlText (finddisplay 24 displayctrl 101);

if ("/" != (_chatmsg select [0,1])) exitWith { false; };

systemChat _chatmsg;

(finddisplay 24 displayctrl 101) ctrlSetText "";

private _command = (_chatmsg splitString "/");
private _args = (_command splitString " ");

systemChat _command select 0;
hint format ["%1", _args];

(findDisplay 24) displayRemoveEventHandler ["KeyDown", chatCommandEventH];

true;
