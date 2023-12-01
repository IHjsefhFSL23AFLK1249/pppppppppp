
task.spawn(function()
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
function serverhopbc()
        while true do 
            spawn(function()
            local servers = {}
		local req = request({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", "115670532")})
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
        wait(2)
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
serverhop2()
end
end)
repeat task.wait() until game:IsLoaded()

local loopnum = "99999999999999999999999999999999"
local antilog = "00000000000000000000000000000000000000"
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
quitosad = {'"ermmm what the flip!!" - puncy', 'dogcrash is mid asl', 'add me to your whitelist NOW', 'ermmm the virus got server???', '"ok" - knocks', '"i like kids" - tech (joke)', "quiving has 2 cows, one is australian and one is austrian", "capybara's capybara ate quivings watermelons and when he found out he stole the capybara and did bad things to it", "joe toe likes men", "puncy likes men", "tech likes men", "quivings likes watching gay men putting make up on", "ermmm the server got virus???", "ermmm the hacked got server????", "ermmmm the server got hacked???", "quiving does NOT have symmetrical eyes","tell him to bring out the whole ocean!","lets go golfing!","life... is roblox...","never back down!! never give up!","i need more boolets!! 💯 🔥","im gonna braek my monityur, i swaer!!","bigger weapons!!! 🥵 💦","mrrp mrrp mrrp meow mrrp meow","owo","uwu","mrrp mrrp meowww mrrp mawo miau nya meowwwwwwwwwwwwwwww","outcrashing skiddies","capybara on top", "kupibrra in the middle", "guys i have an fe bypass!!!","snekka SS","i- ermm- what!?!?","damix likes femboys", "heaven likes being with sea!!","kel is a femboy (real)","tech does not like gay people :(","capybaras were invented in the modern era but they're not capybaras.\nTHEY ARE CHINESE ROBOTS COMING TO ATTACK US\nPLEASE TAKE THIS MESSAGE TO HEART, BECAUSE THIS MESSAGE RIGHT HERE CAN SAVE YOUR LIFE....\nPLEASE HELP IM BEING TRACKED.\nI DONT HAVE MUCH MORE TO LIVE THE FBI ARE AT MY DOOR READY TO BURST IN ANY SECOND NOW.\nBEWARE OF THE CAPYBARAS AND STAY SAFE.","quiving is @jewish"}
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
cmd('blind all')
game.Players:Chat("h/ \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n sckah . xyz \n \n this crash is presented by.... \n \n Kozy!!!!!!!!! \n \n "..quitosad[math.random(1, #quitosad)].." \n \n outcrashing rookies \n \n men on me")
cmd("name me sckah . xyz")
say("sckah . xyz")
wait(.05)
-- Don't remove unless you have perm.
function serverhop()
        while true do 
            spawn(function()
            local servers = {}
		local req = request({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", "112420803")})
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
function serverhopbc()
        while true do 
            spawn(function()
            local servers = {}
		local req = request({Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", "115670532")})
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
        wait(3)
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
function silcrashe2()
for i = 0,20 do
	task.spawn(function()
	for i = 1,2 do cmd("size all .2999999999999999999") end
        for i = 1,3 do cmd("freeze/ all all all") end
		cmd("dog/ all all all")
        for i = 1,3 do cmd("size all 9.9") end
        for i = 1,4 do cmd("clone all all all") end
		wait(.02)
		cmd("clone all all all")
		end)
end
end
__st = Instance.new("NumberValue", game:GetService("ReplicatedStorage"))

function __w()
    while task.wait() do
        __st.Value = __st.Value + 1
    end
end

function __thread()
    coroutine.wrap(__w)()
    task.wait()
    coroutine.wrap(__w)()
    task.wait()
    coroutine.wrap(__w)()
end

for count = 0, 3 do
    coroutine.wrap(__thread)()
end

function haiitv2()
return __st.Changed:Wait()
end
function changeserver()
    serverhop()
serverhopbc()
end
local plahids = {"134023160","6828176320","6872126938","9048375035","9043887091","1843563130","6823597327","6924735395","6953866301"}
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-28.6829948, 8.2299995, 66.4913253))
local regen = game:GetService("Workspace").Terrain["_Game"].Admin:FindFirstChild("Regen")
local gpad = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:FindFirstChild("Touch to get admin")
if not regen and not gpad then
cmd("unchar others")
silcrashe2()
task.spawn(function()
    while antibanfunction == false do 
silcrashe2()
wait(.54)
    end
end)
end
if regen then
    fireclickdetector(game:GetService("Workspace").Terrain["_Game"].Admin.Regen.ClickDetector, 0) 
end
local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()
task.spawn(function()
while true do
task.wait()
local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()
		for i, pad in next, pads do
			task.spawn(function()
				local cre = pad.Head
				local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
			    firetouchinterest(cre, spr, 1)
				firetouchinterest(cre, spr, 0)
			end)
		end
end
end)
task.spawn(function()
local pads = game:GetService("Workspace").Terrain["_Game"].Admin.Pads:GetChildren()
wait(.05)
for i,v in pairs(pads) do
v.Head.Changed:Connect(function(v)
if v == "Color" then
for i = 0,5 do
				local cre = v.Head
				local spr = game.Players.LocalPlayer.Character:FindFirstChild("Head")
			    firetouchinterest(cre, spr, 1)
				firetouchinterest(cre, spr, 0)
end
end
end)
end
end)
local whitelisttoggle = true
local whitelisted = {"lmaogang020a1","thekillercrum","Thierry_BaudetREAL", "TechnoSniperX","Hayley666777","Damix2131","UncancellableMenace","KohlsH_Angler","0020_531","Exprvssed","ovicaI","Antedx","Altsarecooleh","Di33le2","me_funzysass","xvoqsv","t_echr"}
if whitelisttoggle == true then
    for i,v in pairs(whitelisted) do
        if game.Players:FindFirstChild(v) then
		cmd('reset all')
		wait(.09)
            cmd("h \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n cool person detected fr "..v.." \n \n")
            changeserver()
            return print("\n"..v.. " Is In Game Skipping...")
        end
    end
end
-- Command Varibles
wait()
-- antigrav made by tech and someone else idk
--//     Services     //--
local plyrs = game:GetService("Players")
local rns = game:GetService("RunService")

--//     Variables     //--
local connection

--//     Code     //--
function hook()
    connection = plyrs.LocalPlayer.Character.DescendantAdded:Connect(function(i)
        if i.Name == "BodyForce"then
            local root = plyrs.LocalPlayer.Character.HumanoidRootPart
            local bcf = root.CFrame
            i.Force = Vector3.new(0, 0, 0)
            repeat hait() until i == nil
            root.CFrame = bcf
        end
    end)
end
hook()

game.Players.LocalPlayer.CharacterAdded:Connect(function(chr)
    wait()
    hook()
end)
-- antispeed made by wotjg (noob)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal('WalkSpeed'):connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed < setspeed or game.Players.LocalPlayer.Character.Humanoid.WalkSpeed > setspeed then
		        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		        for i = 0, 10 do
		        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		        end
        print('Changed speed')
    end
    end)
game.Players.LocalPlayer.CharacterAdded:connect(function()
    repeat task.wait() until game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal('WalkSpeed'):connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    if game.Players.LocalPlayer.Character.Humanoid.WalkSpeed == nan then
		        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		        for i = 0, 10 do
		        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
		        end
        print('Changed speed')
    end
end)
end)
task.spawn(function()
wait(2)
    if LocalPlayer.Character.Parent ~= workspace or not LocalPlayer.Character:FindFirstChild('VampireVanquisher') then
	cmd("unchar all")
silcrashe2()
wait(2)
changeserver()

end
end)
cmd("respawn others")
cmd('respawn me')
say("imagine getting crashed by me!!!!!!!!!!")
cmd("fix")
cmd("gear others 0000000000000000000000025741198")
	cmd("fogend 50")
	cmd("fogcolor 65 105 225")
cmd("music                                                          "..plahids[math.random(1, #plahids)])
cmd("gear others "..antilog.."94794847")
game.Players:Chat("gear all "..antilog.."4842204072")
cmd("gear me "..antilog.."94794847")
  repeat haiitv2() until LocalPlayer.Backpack:FindFirstChild('VampireVanquisher')
  LocalPlayer.Backpack.VampireVanquisher.Parent = LocalPlayer.Character
  repeat haiitv2() until LocalPlayer.Character:FindFirstChild('VampireVanquisher')
    if LocalPlayer.Character.Parent ~= workspace or not LocalPlayer.Character:FindFirstChild('VampireVanquisher') then
	cmd("unchar all")
silcrashe2()
	end
haiitv2()
silcrashe2()
    for i = 1, 9 do
        cmd("unsize me me me")
    end
local antibanfunction = false
if game.PlaceId == "115670532" then
cmd("unchar random random random fuck frick ass no more math.random :( ayo what the hell wotjg moment")
cmd("unchar me fuck frick ass no more math.random :( ayo what the hell wotjg moment")
local pru = game.Players.LocalPlayer.CharacterAdded:Wait()
silcrashe2()
else
cmd("unchar all")
end
silcrashe2()
task.spawn(function()
    while antibanfunction == false do 
silcrashe2()
wait(.69)
    end
end)
  for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if tool:IsA("Tool") then
         tool.Parent = game:GetService("Players").LocalPlayer.Character -- I didn't use Equip because the Equip function unequips any other tools in your character.
    end
end
updatename()
task.spawn(function()
local plrcount = 0 -- Define the number at first.

for i,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") then -- Check if it's a player.
        plrcount = plrcount+1 -- Update the player count.
    end
end
local id = game.JobId
print(id.. " Crashed With " ..plrcount.. " People")
end)
wait(.8)
changeserver()