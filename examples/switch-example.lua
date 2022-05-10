require("Switch")             -- import the module
local switch = Switch.switch  -- optional but recommended for better code readability

local name = "Peter"

switch(name, {
	-- This function will not be run, as name does not equal 'Judy':
	['Judy'] = function()
		print(name .. " is very nice.")
	end,
	
	-- This function will be run, as name matches 'Peter':
	['Peter'] = function()
		print(name .. " is very polite.")
	end,
	
	-- This function will be run if no matches were found:
	['default'] = function()
		print(name .. " wasn't found :(")
	end
})