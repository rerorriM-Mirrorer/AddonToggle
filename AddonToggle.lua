_addon.name = 'AddonToggle'
_addon.author = 'Max'
_addon.version = '1.0'
_addon.command = 'at'

local hidden = false

windower.register_event('addon command', function()
    if not hidden then
        windower.send_command('lua unload barfiller; wait 0.2; lua unload equipviewer')
        hidden = true
        windower.add_to_chat(207, '[AddonToggle] UI hidden')
    else
        windower.send_command('lua load barfiller; wait 0.2; lua load equipviewer')
        hidden = false
        windower.add_to_chat(207, '[AddonToggle] UI restored')
    end
end)