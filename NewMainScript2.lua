local isfile = isfile or function(file)
    local success, filecontents = pcall(function() return readfile(file) end)
    return success and type(filecontents) == 'string'
end 

if shared == nil then
	getgenv().shared = {} 
end

if isfile('vape/NewMainScript.lua') then 
	loadfile('vape/NewMainScript.lua')()
else 
	local mainscript = game:HttpGet('https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua') 
	task.spawn(function() loadstring(mainscript)() end)
	writefile('vape/NewMainScript.lua', mainscript)
end
