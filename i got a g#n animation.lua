local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local Workspace = workspace
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local Backpack = Player:WaitForChild("Backpack")
local Character = Player.Character or Player.CharacterAdded:Wait()
local EffectBisual = Instance.new("Model",Character) EffectBisual.Name = "EffectBisual"
local TerrainEff = Instance.new("Model",game.Workspace) TerrainEff.Name = "TerrainEff"
local MainAsset = game:GetObjects("rbxassetid://118505503315622")[1]
local HammerScript = MainAsset:FindFirstChild("HammerScript")
local Mjolnir = HammerScript and HammerScript:FindFirstChild("Mjolnir")
local LocalScriptObject = Mjolnir and Mjolnir:FindFirstChild("LocalScript")
local Tool = Mjolnir
local modelSettings = {
	DestroyAnchored = false,
	MaxMass = 0
}
local function ANCHORD6EIDY7777767SHV(part, velocity, angularVelocity, duration)
	if not part or not part.Parent then return end part.Anchored = false
   local PARTU = part:Clone() part:Destroy() PARTU.Parent = Character:WaitForChild("EffectBisual")
	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	bodyVelocity.Velocity = velocity
	bodyVelocity.Parent = PARTU
	local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
	bodyAngularVelocity.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
	bodyAngularVelocity.AngularVelocity = angularVelocity
	bodyAngularVelocity.Parent = PARTU
	Debris:AddItem(bodyVelocity, duration or 0.1)
	Debris:AddItem(bodyAngularVelocity, duration or 0.1)
   wait(0.67)
 --- EffectBisual.Parent = TerrainEff
  for i,v in pairs(EffectBisual:GetChildren()) do
      v.Parent = TerrainEff
  end
 ---  g=EffectBisual:Clone()
 ---  g.Parent = Character
end
--[=[
local function Swing()
	Using=true
	Holding=false
	Sound(2235655773,.275,random(.8,.9,100),HE,50,5).TimePosition=.35
	PlayAnimSingle(unpack(Anims.Swing[2]))
	wait(Anims.Swing.Waits[2])
	for i,v in pairs(workspace:GetDescendants()) do
		if (v:IsA("Accessory") or v:IsA("Hat")) and not v:IsDescendantOf(char) then
			table.insert(Ignore,v)
		end
	end
	local Hit,Pos,NID=Raycast(t.Position,Mouse.Hit.Position-t.Position,Ignore,6,true)
	if Hit then
		if getgenv().RemoteFuncs['CrossClient'] then getgenv().RemoteFuncs['CrossClient']("Event","ToggleTTM",false) end
		local P=ins("Part",{Anchored=true,CanCollide=false,Transparency=1,Size=v3(),CFrame=cf(Pos),Parent=Effects})
		local DPE=Dust:Clone() DPE.Parent=P DPE.Color=cs(Hit.Color)
		local Size=v3(1,1,1)*random(15,25,30)
		local H=Hit.Parent and Hit.Parent:FindFirstChildOfClass("Humanoid")
		if H then
			LastHitTick,BloodTrans=tick(),0
			DPE.Color=cs(bc("Crimson").Color) DPE.Lifetime=nr(.75,1.65)
			if Hit.Name=="Head" and random(0,1,3)==1 then Sound(4164190231,.75,random(.9,1.1,100),HE,100,5) Sound(({3848987400,4086174260})[random(1,2)],.5,random(.9,1.1,100),HE,65,5) end
			if H.Health>0 then Sound(4516612539,1.5,random(.9,1.1,100),HE,65,5) end
			Sound(({3784888301,3784889529})[random(1,2)],.5,random(.9,1.1,100),HE,75,6)
			Sound(4306991691,.2,random(.9,1.1,100),HE,65,6)
			Ragdoll:Ragdollify(H.Parent,true)
			for i,v in pairs({"Top","Bottom","Front","Back","Right","Left"}) do
				ins("Texture",{Texture="rbxassetid://2887707",Transparency=random(.35,.75,100),OffsetStudsU=random(-.75,.75,100),OffsetStudsV=random(-.75,.75,100),StudsPerTileU=random(.5,1.5,10),StudsPerTileV=random(.5,1.5,10),Face=v,Parent=Hit})
			end
			for i=1,random(15,40) do
				Blood.new(cf(Pos),v3(random(-7.5,7.5,100),random(-1.25,10,100),random(-7.5,7.5,100)),random(.35,1.5,100),H.Parent)
			end
			for i,v in pairs(Hit:GetTouchingParts()) do
				if v:IsDescendantOf(H.Parent) then
					Instance.Remove(ins("BodyVelocity",{Velocity=cf(HE.Position,Pos).LookVector*random(40,80,10),Parent=v}),.15)
				end
			end
		end
		PlayAnimSingle(unpack(Anims.Hit))
		Sound(3417831369,.25,random(.9,1.1,100),HE,50,6.5)
		if HitSounds[Hit.Material.Name] and not H then local SID=HitSounds[Hit.Material.Name] if type(SID)=="table" then SID=SID[random(1,#SID)] end Sound(SID,.75,random(.75,.9,100),HE,50,6.5) end
		DPE:Emit(random(25,60))
		local shock = Instance.new("Part")
		shock.Anchored = true
		shock.CanCollide = false
		shock.Shape = Enum.PartType.Ball
		shock.Material = Enum.Material.Neon
		shock.Color = Hit.Color
		shock.Transparency = 0.5
		shock.Size = Vector3.new(1,1,1)
		shock.CFrame = CFrame.new(Pos)
		shock.Parent = Effects
		task.spawn(function()
			for i = 1,10 do
				shock.Size += Vector3.new(3,3,3)
				shock.Transparency += 0.05
				task.wait(0.02)
			end
		end)
local function explodewithvosle(cf)
local pos = cf.Position
local explosion = Instance.new("Explosion")
explosion.Position = pos
explosion.BlastRadius = 10
explosion.BlastPressure = 0
explosion.DestroyJointRadiusPercent = 0
explosion.Parent = workspace
workspace.Terrain:FillBall(pos, 8, Enum.Material.Air)
end
explodewithvosle(shock.CFrame)
		game:GetService("Debris"):AddItem(shock,0.3)
		for i,Hit in pairs(workspace:FindPartsInRegion3WithIgnoreList(Region3.new(Pos-Size/2,Pos+Size/2),Ignore,35)) do
			local P_,PA,IM=BN(Hit,Hit.CFrame:ToObjectSpace(cf(Pos)),Size,Hit.Parent)
			Instance.Remove(P,3)
			if i~=1 then continue end
			for i=1,random(15,35) do
				if H then
					local P=ins("Part",{Anchored=false,CanCollide=true,Size=(v3(random(.2,.5,100),random(.2,.5,100),random(.2,.5,100))*random(.75,1.25,100))/2,Locked=true,Material="Granite",Color=bc("Really red").Color,TopSurface=Hit.TopSurface,BottomSurface=Hit.BottomSurface,RightSurface=Hit.RightSurface,FrontSurface=Hit.FrontSurface,LeftSurface=Hit.LeftSurface,BackSurface=Hit.BackSurface,Transparency=Hit.Transparency,CFrame=cf(Pos)*angles(random(-180,180,10),random(-180,180,10),random(-180,180,10),true),Parent=PA})
					ins("SpecialMesh",{MeshType="Sphere",Scale=v3(2,2,2),Parent=P})
					Instance.Remove({ins("BodyVelocity",{Velocity=v3(random(-50,50,100),random(-50,50,100),random(-50,50,100)),Parent=P}),ins("BodyAngularVelocity",{AngularVelocity=v3(random(-50,50,100),random(-50,50,100),random(-50,50,100)),Parent=P})},.1)
					Instance.Remove(P,3.5)
					table.insert(Ignore,P)
					if random(0,1)==1 and Hit.Name=="Head" then
						local P=ins("WedgePart",{Anchored=false,CanCollide=true,Size=v3(random(.05,.125,1000),random(.15,.45,100),random(.25,.65,100))*random(.85,1.5,100),Locked=true,Material="Slate",Color=bc("White").Color,TopSurface=Hit.TopSurface,BottomSurface=Hit.BottomSurface,RightSurface=Hit.RightSurface,FrontSurface=Hit.FrontSurface,LeftSurface=Hit.LeftSurface,BackSurface=Hit.BackSurface,Transparency=Hit.Transparency,CFrame=cf(Pos)*angles(random(-180,180,10),random(-180,180,10),random(-180,180,10),true),Parent=PA})
						Instance.Remove({ins("BodyVelocity",{Velocity=v3(random(-50,50,100),random(-50,50,100),random(-50,50,100)),Parent=P}),ins("BodyAngularVelocity",{AngularVelocity=v3(random(-50,50,100),random(-50,50,100),random(-50,50,100)),Parent=P})},.1)
						Instance.Remove(P,3.5)
						table.insert(Ignore,P)
						for i,v in pairs(IM) do
							local C=v:Clone() C.Transparency=C.Transparency+.275 C.Parent=P
						end
					elseif random(0,1)==1 and (Hit.Name=="Torso" or Hit.Name=="UpperTorso") then
						for i=1,random(2,5) do
							local P=ins("Part",{Anchored=false,CanCollide=true,Size=(v3(random(.2,.65,100),random(.2,.65,100),random(.35,.85,100))*random(.75,1.25,100))/2,Locked=true,Material=({"Pebble","Granite"})[random(1,2)],Color=({bc("Dusty Rose").Color,bc("Br. yellowish orange").Color,bc("Sunrise").Color})[random(1,3)],TopSurface=Hit.TopSurface,BottomSurface=Hit.BottomSurface,RightSurface=Hit.RightSurface,FrontSurface=Hit.FrontSurface,LeftSurface=Hit.LeftSurface,BackSurface=Hit.BackSurface,Transparency=Hit.Transparency,CFrame=cf(Pos)*angles(random(-180,180,10),random(-180,180,10),random(-180,180,10),true),Parent=PA})
							ins("SpecialMesh",{MeshType="Sphere",Scale=v3(2,2,2),Parent=P})
							Instance.Remove({ins("BodyVelocity",{Velocity=v3(random(-50,50,100),random(-50,50,100),random(-50,50,100)),Parent=P}),ins("BodyAngularVelocity",{AngularVelocity=v3(random(-50,50,100),random(-50,50,100),random(-50,50,100)),Parent=P})},.1)
							Instance.Remove(P,3.5)
							table.insert(Ignore,P)
							for i,v in pairs({"Top","Bottom","Front","Back","Right","Left"}) do
								ins("Texture",{Texture="rbxassetid://1882220622",Transparency=random(.25,.65,100),OffsetStudsU=random(-.75,.75,100),OffsetStudsV=random(-.75,.75,100),StudsPerTileU=random(.5,1.5,10),StudsPerTileV=random(.5,1.5,10),Face=v,Parent=P})
							end
						end
					end
				else
					local P=ins("WedgePart",{Anchored=false,CanCollide=true,Size=v3(random(.05,.125,1000),random(.1,.3,100),random(.5,1,100))*random(1,2.5,100),Locked=true,Material=Hit.Material,Color=Hit.Color,TopSurface=Hit.TopSurface,BottomSurface=Hit.BottomSurface,RightSurface=Hit.RightSurface,FrontSurface=Hit.FrontSurface,LeftSurface=Hit.LeftSurface,BackSurface=Hit.BackSurface,Transparency=Hit.Transparency,CFrame=cf(Pos)*angles(random(-180,180,10),random(-180,180,10),random(-180,180,10),true),Parent=PA})
					Instance.Remove({ins("BodyVelocity",{Velocity=v3(random(-50,50,100),random(-50,50,100),random(-50,50,100)),Parent=P}),ins("BodyAngularVelocity",{AngularVelocity=v3(random(-50,50,100),random(-50,50,100),random(-50,50,100)),Parent=P})},.1)
					Instance.Remove(P,3.5)
					table.insert(Ignore,P)
					for i,v in pairs(IM) do
						v:Clone().Parent=P
					end
				end
			end
		end
		wait(.3)
	else
		if getgenv().RemoteFuncs['CrossClient'] then getgenv().RemoteFuncs['CrossClient']("Event","ToggleTTM",false) end
		PlayAnimSingle(unpack(Anims.NoHit))
		wait(.15)
	end
	Using=false
end
]=]
Tool:SetAttribute("PlayerName", Player.Name)
local gui = LocalScriptObject:FindFirstChild("MjolnirGui")
	local frame = gui:FindFirstChild("Frame")
	local buttonTemplate = gui:FindFirstChild("ButtonTemplate")
	local textBoxTemplate = gui:FindFirstChild("TextBoxTemplate")
	if frame and buttonTemplate and textBoxTemplate then
		local initSize = 25
		local buttonSize = 30
		local textBoxSize = 50
		local nextPosition = initSize
		local function setTitle(text)
			local title = frame:FindFirstChild("Title")
			if title then
				title.Text = text
			end
		end
		local function newButton(text, clickFunc)
			local newButtonGui = buttonTemplate:Clone()
			newButtonGui.Position = UDim2.new(0, 5, 0, nextPosition)
			nextPosition = nextPosition + buttonSize
			newButtonGui.Text = text
			newButtonGui.Visible = true
			if clickFunc then
				newButtonGui.MouseButton1Click:Connect(clickFunc)
			end
			frame.Size = UDim2.new(0, 150, 0, nextPosition)
			newButtonGui.Parent = frame
			return newButtonGui
		end

		local function newTextBox(label, defaultText, changedFunc)
			local newFrame = textBoxTemplate:Clone()
			newFrame.Position = UDim2.new(0, 0, 0, nextPosition)
			nextPosition = nextPosition + textBoxSize
			local textLabel = newFrame:FindFirstChild("TextLabel")
			local box = newFrame:FindFirstChild("Box")
			if textLabel then
				textLabel.Text = label
			end
			if box then
				box.Text = defaultText or ""
				if changedFunc then
					box.FocusLost:Connect(function()
						changedFunc(box.Text)
					end)
				end
			end
			newFrame.Visible = true
			frame.Size = UDim2.new(0, 150, 0, nextPosition)
			newFrame.Parent = frame
			return newFrame
		end

		local mouse = Player:GetMouse()
		frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				local releaseEvent
				local mouseEvent
				local initX = frame.AbsolutePosition.X
				local initY = frame.AbsolutePosition.Y
				local offX = mouse.X - initX
				local offY = mouse.Y - initY
				releaseEvent = UserInputService.InputEnded:Connect(function(inputEnded)
					if inputEnded.UserInputType == Enum.UserInputType.MouseButton1 then
						if releaseEvent then
							releaseEvent:Disconnect()
						end
						if mouseEvent then
							mouseEvent:Disconnect()
						end
					end
				end)

				mouseEvent = UserInputService.InputChanged:Connect(function(inputChanged)
					if inputChanged.UserInputType == Enum.UserInputType.MouseMovement then
						local inputX = inputChanged.Position.X
						local inputY = inputChanged.Position.Y
						local posX = inputX - offX
						local posY = inputY - offY
						frame.Position = UDim2.new(0, posX, 0, posY)
					end
				end)
			end
		end)
		gui.ResetOnSpawn = true
		gui.Parent = PlayerGui
		local remoteF = Instance.new("BindableFunction")
		remoteF.Name = "RemoteF"
		remoteF.Parent = Tool
		remoteF.OnInvoke = function(cmd, ...)
			local args = {...}
			if cmd == "GetSettings" then
				return modelSettings
			end
			return nil
		end
		local anchoredButton
		local massBox
		local function updateButtons()
			if anchoredButton then
				anchoredButton.Text =
					modelSettings.DestroyAnchored
					and "Destroy Anchored: On"
					or "Destroy Anchored: Off"
			end
			if massBox then
				local box = massBox:FindFirstChild("Box")
				if box then
					box.Text = tostring(modelSettings.MaxMass)
				end
			end
		end
		local remoteE = Instance.new("BindableEvent")
		remoteE.Name = "RemoteE"
		remoteE.Parent = Tool
		remoteE.Event:Connect(function(cmd, ...)
			local args = {...}
			if cmd == "SetSetting" then
				local settingName = args[1]
				local settingValue = args[2]
				if modelSettings[settingName] ~= nil then
					modelSettings[settingName] = settingValue
				end
				updateButtons()
			elseif cmd == "UpdateSettings" then
				if typeof(args[1]) == "table" then
					modelSettings = args[1]
					updateButtons()
				end
			end
		end)
		local function getLocalPlayer() return Player end
		local function fireUpdateSettingsOnPlayer()
			local localPlayer = getLocalPlayer()
			if localPlayer then
				remoteE:Fire("UpdateSettings", modelSettings)
			end
		end
		local function newShockRing()
			local shockRing = Instance.new("Part")
			shockRing.Size = Vector3.new(1, 0.4, 1)
			shockRing.Anchored = true
			shockRing.Locked = true
			shockRing.CanCollide = false
			shockRing.Archivable = false
			shockRing.Transparency = 1
			shockRing.TopSurface = Enum.SurfaceType.Smooth
			shockRing.BottomSurface = Enum.SurfaceType.Smooth
			local decal = Instance.new("Decal")
			decal.Face = Enum.NormalId.Top
			decal.Texture = "rbxassetid://1280730"
			decal.Parent = shockRing
			local bottomDecal = decal:Clone()
			bottomDecal.Face = Enum.NormalId.Bottom
			bottomDecal.Parent = shockRing
			return shockRing
		end

		local function tagHumanoid(humanoid, player)
			local creatorTag = Instance.new("ObjectValue")
			creatorTag.Name = "creator"
			creatorTag.Value = player
			creatorTag.Parent = humanoid
			Debris:AddItem(creatorTag, 1)
		end

		local function untagHumanoid(humanoid)
			if not humanoid then return end
			for _, object in ipairs(humanoid:GetChildren()) do
				if object:IsA("ObjectValue") and object.Name == "creator" then
					object:Destroy()
				end
			end
		end
		local function doDamage(hit)
			if not hit then return end
			local parent = hit.Parent
			if not parent then return end
			local humanoid = parent:FindFirstChildOfClass("Humanoid")
			local vCharacter = Tool.Parent
			local vPlayer = Players:GetPlayerFromCharacter(vCharacter)
			local ownHumanoid = vCharacter:FindFirstChildOfClass("Humanoid")
			if humanoid and humanoid ~= ownHumanoid and ownHumanoid then
				tagHumanoid(humanoid, vPlayer)
				humanoid:TakeDamage(humanoid.MaxHealth)
				task.delay(1, function()
					untagHumanoid(humanoid)
				end)
			else

				local oldCFrame = hit.CFrame

				hit:BreakJoints()

				hit.CFrame = CFrame.new(hit.Position)

				hit.CFrame = oldCFrame
			end
		end

		local function isAnchorProtected(obj)
			if not obj.Anchored then
				return false
			end

			return not modelSettings.DestroyAnchored
				or obj:GetMass() > modelSettings.MaxMass
		end
local function blow(root, pos)
	local player = getLocalPlayer()
	local char = player and player.Character
	if not char then return end
	for _, obj in ipairs(root:GetDescendants()) do
		if obj:IsA("BasePart")
			and not obj:IsDescendantOf(char)
			and not isAnchorProtected(obj) then
			local horizontalDistance = ((pos - obj.Position) * Vector3.new(1, 0, 1)).Magnitude
			local verticalDistance = math.abs(pos.Y - obj.Position.Y)
			if horizontalDistance < 96 and verticalDistance <= 8 then
				obj.Anchored = false
				task.delay(horizontalDistance / 96, function()
					if not obj or not obj.Parent then return end
					doDamage(obj)
					local direction = obj.Position - pos
					if direction.Magnitude > 0 then
						direction = direction.Unit
					else
						direction = Vector3.zero
					end
					local angularDirection = Vector3.new(obj.Position.Z - pos.Z, 0, pos.X - obj.Position.X)
					if angularDirection.Magnitude > 0 then
						angularDirection = angularDirection.Unit
					else
						angularDirection = Vector3.zero
					end
					ANCHORD6EIDY7777767SHV(obj, direction * 96 + Vector3.new(0, 48, 0), angularDirection * 40, 0.1)
				end)
			end
		end
	end
end
		local function attack()
			local anim = Instance.new("StringValue")
			anim.Name = "toolanim"
			anim.Value = "Slash"
			anim.Parent = Tool
			Debris:AddItem(anim, 1)
			task.wait(0.2)
			local hammer = Tool:FindFirstChild("Handle")
			if not hammer then warn("Handle tidak ditemukan") return		end
			local mesh = hammer:FindFirstChildOfClass("SpecialMesh")
			local offset = Vector3.new(0, 1.4, 0)
			if mesh then
				offset = offset * mesh.Scale
			end
			local pos = hammer.CFrame * offset
			blow(Workspace, pos)
			local shockRing = newShockRing()
			shockRing.CFrame = CFrame.new(pos)
			shockRing.Parent = Tool
			for x = 1, 29 do
				task.delay(x / 30, function()
					if shockRing and shockRing.Parent then
						shockRing.Size =
							Vector3.new(6.4 * x, 0.4, 6.4 * x)
					end
				end)
			end
			Debris:AddItem(shockRing, 1)
		end
		Tool.Enabled = true
		local function onActivated()
			if not Tool.Enabled then return end
			Tool.Enabled = false
			local character = Tool.Parent
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if not humanoid then Tool.Enabled = true return end
			local hammer = Tool:FindFirstChild("Handle")
			if hammer then
				local boom = hammer:FindFirstChild("Boom")
				if boom and boom:IsA("Sound") then
					local newBoom = boom:Clone()
					newBoom.Parent = hammer
					newBoom:Play()
					Debris:AddItem(newBoom, 6)
				end
			end
			attack()
			task.wait(0.5)
			Tool.Enabled = true
		end
		Tool.Activated:Connect(onActivated)
		if LocalScriptObject and LocalScriptObject:IsA("LocalScript") then
			LocalScriptObject.Enabled = true
		end
		Tool.Parent = Backpack
		setTitle("Mjolnir")
		anchoredButton = newButton("Anchored", function() remoteE:Fire("SetSetting", "DestroyAnchored", not modelSettings.DestroyAnchored ) end)
		massBox = newTextBox("Max Anchored Mass", "", function(str)
				remoteE:Fire("SetSetting", "MaxMass", tonumber(str) or 0) end)
      		updateButtons()
	end

local enabled = true
local function onButton1Down(mouse)
	if not enabled then return end
	enabled = false
	mouse.Icon = "rbxasset://textures/GunWaitCursor.png"
	task.wait(0.5)
	mouse.Icon = "rbxasset://textures/GunCursor.png"
	enabled = true
end
local function onEquippedLocal(mouse)
	if not mouse then return	end
	mouse.Icon = "rbxasset://textures/GunCursor.png"
	mouse.Button1Down:Connect(function()		onButton1Down(mouse)	end)
end

Tool.Equipped:Connect(onEquippedLocal)
