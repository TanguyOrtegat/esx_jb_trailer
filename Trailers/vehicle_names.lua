function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end
Citizen.CreateThread(function()
-- Tow Truck
AddTextEntry('pjtrailer', 'PJ Trailer')
-- 2011 Ford Crown Victoria
AddTextEntry('10ram', '2010 Dodge Ram')
-- 2016 Dodge Challenger Hellcat
end)


