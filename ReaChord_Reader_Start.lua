--[[
 * ReaScript Name: ReaChord Reader Start
 * Author: author xupeng
 * Licence: GPL v3
 * REAPER: 7.0
 * Extensions: None
 * Version: 1.0
--]]
 
--[[
 * Changelog:
* v1.0 (2023-11-17)
 	+ Initial Release
--]]


local r = reaper
print = r.ShowConsoleMsg

-- ReaChord Reader
cmd_id = r.NamedCommandLookup('_RSad9c0796b8fa7aa904e091a76bc2d78b3cf6dfe3')
cmd_state = r.GetToggleCommandStateEx(0, cmd_id)
if cmd_state ~= 1 then
   r.Main_OnCommand(cmd_id, 0)
end
