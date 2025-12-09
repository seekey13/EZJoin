--[[
EZJoin
Automatically joins party requests.
Copyright (c) 2025 Seekey
https://github.com/seekey13/EZJoin

This addon is designed for Ashita v4.
]]

addon.name      = 'EZJoin';
addon.author    = 'Seekey';
addon.version   = '0.1';
addon.desc      = 'Automatically joins party requests.';
addon.link      = 'https://github.com/seekey13/EZJoin';

require('common');

-- Event: Incoming text (chat messages)
ashita.events.register('text_in', 'text_in_cb', function (e)
    -- Check if the message contains the invisibility block message
    if string.find(e.message, 'You have received a request to join your party from') then
        -- Issue the command to remove invisible buff (buff ID 69)
        AshitaCore:GetChatManager():QueueCommand(1, '/join');
    end
end);