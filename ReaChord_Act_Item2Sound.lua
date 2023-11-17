--[[
 * ReaScript Name: ReaChord_Act_Item2Sound
 * Author: author xupeng
 * Licence: GPL v3
 * REAPER: 7.0
 * Extensions: None
 * Version: 1.0
--]]
 
--[[
 * Changelog:
 * v1.0 (2016-01-29)
 	+ Initial Release
--]]
-- @description ReaChord Item2Sound
-- @author xupeng
-- @version 1.0.11
-- @changelog
--  Update
-- @provides
--   *


local r = reaper
print = r.ShowConsoleMsg
dofile(r.GetResourcePath() .. '/Scripts/ReaChord/ReaChord_Reaper.lua')

local function item2sound()
    local chord, meta, notes, beats = R_SelectChordItem()
    if chord == "" then
      return
    else
        local oct = StringSplit(meta, "/")[3]
        local note_midi_index
        _, note_midi_index = T_NotePitched(notes)
        R_StopPlay()
        local midi_notes={}
        for _, midi_index in ipairs(note_midi_index) do
          table.insert(midi_notes, midi_index+36+oct*12)
        end
        R_Play(midi_notes)
    end
  end
  
  r.defer(item2sound)
