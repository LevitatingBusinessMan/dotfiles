local open = io.open

local function read_file(path)
    local file = open(path, "rb") -- r read mode and b binary mode
    if not file then return nil end
    local content = file:read "*a" -- *a or *all reads the whole file
    file:close()
    return content
end

local apikey = read_file(configDir .. "/plugins/wakatime/apikey");


function onViewOpen(view)
	path = view.Buf.AbsPath
	if apikey ~= nil then
		output = RunShellCommand("wakatime --entitiy " .. path .. " --key " .. apikey)
	end
end

function foo(arg)
    if arg == nil then
    	messenger:Message("wakatime --entitiy " .. path .. "--key " .. apikey)
    end
end

MakeCommand("wakatime", "wakatime.foo")