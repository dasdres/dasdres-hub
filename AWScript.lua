if game.PlaceId == 8260276694 then

   function antivoid()
      local AVPart = Instance.new("Part", workspace)
      AVPart.Name = "AntiVoidPart1"
      AVPart.CFrame = game:GetService("Workspace").Main["Map Base"].Ground.Dirt.CFrame
      AVPart.Anchored = true
      AVPart.Size = Vector3.new(2048, 30, 2048)
      AVPart.Transparency = 1
      local AVPart2 = Instance.new("Part", workspace)
      AVPart2.Name = "AntiVoidPart2"
      AVPart2.CFrame = workspace["Spleef Arena"].Snow:GetChildren()[20].CFrame
      AVPart2.Anchored = true
      AVPart2.Size = Vector3.new(2048, 2, 2048)
      AVPart2.Transparency = 1
      local AVPart3 = Instance.new("Part", workspace)
      AVPart3.Name = "AntiVoidPart3"
      AVPart3.CFrame = workspace["Tournament Arena"].Spawn.CFrame
      AVPart3.Anchored = true
      AVPart3.Size = Vector3.new(2048, 3, 2048)
      AVPart3.Transparency = 1
      AVPart3.Rotation = Vector3.new(0, 0, 0)
   end
   
   function destroynametag()
      local LocalPlayer = game.Players.LocalPlayer
      
      
      LocalPlayer.Character.Head["Name Tag"]:Destroy()
      end
   

   
   local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
   
   local Window = Rayfield:CreateWindow({
      Name = "dasdres script",
      LoadingTitle = "dasdres script",
      LoadingSubtitle = "by dasdres",
      ConfigurationSaving = {
         Enabled = true,
         FolderName = nil, 
         FileName = "dasdres script"
      },
      Discord = {
         Enabled = true,
         Invite = "DEpvdN3fnp", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
         RememberJoins = false -- Set this to false to make them join the discord every time they load it up
      },
      KeySystem = false, -- Set this to true to use our key system
      KeySettings = {
         Title = "Untitled",
         Subtitle = "Key System",
         Note = "No method of obtaining the key is provided",
         FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
         SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
         GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
         Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
      }
   })
   
   
   local StuffTab = Window:CreateTab("Stuff", 4483362458) -- Title, Image
   
   Rayfield:Notify({
      Title = "NOTE",
      Content = "The script is still under development so dont expect anything to be perfect lol",
      Duration = 6.5,
      Image = 4483362458,
      Actions = { 
         Ignore = {
            Name = "Okay!",
            Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
   })
   
   local HitboxToggle = StuffTab:CreateToggle({
      Name = "Expand Hitboxes",
      CurrentValue = false,
      Flag = "HBT", 
      Callback = function(Value)
         getgenv().HitboxExpand = Value


         while HitboxExpand == true do
            task.wait(0.1)
        for i, Player in pairs(game.Players:GetPlayers()) do
            local allplyrschar = Player.Character or Player.CharacterAdded or game.workspace[Player.Name]
            local HumanoidRootPart = allplyrschar:GetChildren("HumanoidRootPart")
   
                if allplyrschar and Player ~= game.Players.LocalPlayer and HumanoidRootPart then
                   allplyrschar:WaitForChild("HumanoidRootPart").Size = Vector3.new(20, 20, 20)
                   allplyrschar:WaitForChild("HumanoidRootPart").Transparency = 0.5
                end 
   
               end
                task.wait()
            end
            
        
   
        if HitboxExpand == false then
           for i, Player in pairs(game.Players:GetPlayers()) do
               local allplyrschar = Player.Character or Player.CharacterAdded or game.workspace[Player.Name]
                   if allplyrschar and Player ~= game.Players.LocalPlayer and game.workspace[Player.Name].HumanoidRootPart then
                      allplyrschar.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                      allplyrschar.HumanoidRootPart.Transparency = 1
                   end 
                   
               end
           end
      end,
   })

   local DNTButton = StuffTab:CreateButton({
      Name = "Destroy Nametag",
      Callback = function()
         destroynametag()
      
      end,
   })
   local WSSlider = StuffTab:CreateSlider({
      Name = "Walkspeed",
      Range = {20, 300},
      Increment = 1,
      Suffix = "Speed",
      CurrentValue = 20,
      Flag = "WS", 
      Callback = function(Value)
       local plyr = game.Players.localPlayer
       plyr.Character.Humanoid.WalkSpeed = Value
   

      end,
   })
   
   local JPSlider = StuffTab:CreateSlider({
      Name = "Jump Power",
      Range = {50, 300},
      Increment = 1,
      Suffix = "JP",
      CurrentValue = 50,
      Flag = "JP", 
      Callback = function(Value)
       
        local plyr = game.Players.localPlayer
       plyr.Character.Humanoid.JumpPower = Value
    
   
   
   
   
         
       
     
      end,
   })
   
   
   local BossTab = Window:CreateTab("Bosses", 4483362458) -- Title, Image
   
   local TreeLordToggle = BossTab:CreateToggle({
      Name = "Tree Lord Hitbox",
      CurrentValue = false,
      Flag = "TLHT", 
      Callback = function(Value)
          getgenv().TreeLordHitbox = Value
          while TreeLordHitbox == true do
          for i, v in pairs(game.workspace:GetChildren()) do
          if v.Name == "Tree Lord" and v:FindFirstChild("HumanoidRootPart") then
           game.workspace["Tree Lord"].HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           game.workspace["Tree Lord"].HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end
  if TreeLordHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Tree Lord" and v:FindFirstChild("HumanoidRootPart") then
         game.workspace["Tree Lord"].HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         game.workspace["Tree Lord"].HumanoidRootPart.Transparency = 1
        end
    end
   end


      end,
   })
   local MushroomKingToggle = BossTab:CreateToggle({
      Name = "Mushroom King Hitbox",
      CurrentValue = false,
      Flag = "MKHT", 
      Callback = function(Value)
          getgenv().MushKingHitbox = Value
          while MushroomKingHitbox == true do
          for i, v in pairs(game.workspace:GetChildren()) do
          if v.Name == "Mushroom King" and v.HumanoidRootPart then
           game.workspace["Mushroom King"].HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           game.workspace["Mushroom King"].HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end
  if MushroomKingHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Mushroom King" and v:FindFirstChild("HumanoidRootPart") then
         game.workspace["Mushroom King"].HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         game.workspace["Mushroom King"].HumanoidRootPart.Transparency = 1
        end
    end
   end

      end,
   })
   local CatToggle = BossTab:CreateToggle({
      Name = "Cat Hitbox",
      CurrentValue = false,
      Flag = "CHT", 
      Callback = function(Value)
          getgenv().CatHitbox = Value
          while CatHitbox == true do
          for i, v in pairs(game.workspace:GetChildren()) do
          if v.Name == "Cat" and v:FindFirstChild("HumanoidRootPart") then
           game.workspace.Cat.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           game.workspace.Cat.HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end
  if CatHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Cat" and v:FindFirstChild("HumanoidRootPart") then
         game.workspace.Cat.HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         game.workspace.Cat.HumanoidRootPart.Transparency = 1
        end
    end
   end


      end,
   })
   local DogToggle = BossTab:CreateToggle({
      Name = "Dog Hitbox",
      CurrentValue = false,
      Flag = "DHT", 
      Callback = function(Value)

          getgenv().DogHitbox = Value
          while DogHitbox == true do
          for i, v in pairs(game.workspace:GetChildren()) do
          if v.Name == "Dog" and v:FindFirstChild("HumanoidRootPart") then
           game.workspace.Dog.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           game.workspace.Dog.HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end

  if DogHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Dog" and v:FindFirstChild("HumanoidRootPart") then
         game.workspace.Dog.HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         game.workspace.Dog.HumanoidRootPart.Transparency = 1
        end
    end
   end


      end,
   })
   local SCToggle = BossTab:CreateToggle({
      Name = "Scarecrow Hitbox",
      CurrentValue = false,
      Flag = "SHT", 
      Callback = function(Value)
          getgenv().ScarecrowHitbox = Value
          while ScarecrowHitbox == true do
          for i, v in pairs(game.workspace:GetChildren()) do
          if v.Name == "Scarecrow" and v:FindFirstChild("HumanoidRootPart") then
           game.workspace.Scarecrow.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           game.workspace.Scarecrow.HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end

  if ScarecrowHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Scarecrow" and v:FindFirstChild("HumanoidRootPart") then
         game.workspace.Scarecrow.HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         game.workspace.Scarecrow.HumanoidRootPart.Transparency = 1
        end
    end
   end

      end,
   })


   local AntiTab = Window:CreateTab("Anti", 4483362458) -- Title, Image

   local AntiVoidToggle = AntiTab:CreateToggle({
      Name = "Anti Void",
      CurrentValue = false,
      Flag = "AVT", 
      Callback = function(Value)
         if Value == true then 
            antivoid()
         else 
            game.workspace.AntiVoidPart1:Destroy()
            game.workspace.AntiVoidPart2:Destroy()
            game.workspace.AntiVoidPart3:Destroy()
         end

      end,
   })


      local AntiCauldronButton = AntiTab:CreateButton({
      Name = "Anti Cauldron",
      Callback = function()
         workspace.Main.Shop.Attic.Alchemy["Alchemist Cauldron"]["Character Kill"].TouchInterest:Destroy()

      
      end,
   })


elseif game.PlaceId == 10626447503 then
   function antivoidTB()
      local AVTB = Instance.new("Part", workspace)
      AVTB.Name = "AntiVoidPart"
      AVTB.Size = Vector3.new(2048, 20, 2048)
      AVTB.Transparency = 1
      AVTB.CFrame = game.workspace.Islands:GetChildren()[10].Baseplate.CFrame
      AVTB.Anchored = true
      end


      function destroynametagTB()
         local LocalPlayer = game.Players.LocalPlayer
         
         
         LocalPlayer.Character.Head["Name Tag"]:Destroy()
         end


 

      
function invadeblue()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Blue Island"].C4s["Bomb C4"].CFrame
   task.wait(25)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Blue Island"].C4s:GetChildren()[1].CFrame
   task.wait(25)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Blue Island"].C4s:GetChildren()[2].CFrame
   task.wait(25)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Blue Island"].C4s:GetChildren()[3].CFrame
   end
   function invadered()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Red Island"].C4s["Bomb C4"].CFrame
   task.wait(25)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Red Island"].C4s:GetChildren()[1].CFrame
   task.wait(25)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Red Island"].C4s:GetChildren()[2].CFrame
   task.wait(25)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Red Island"].C4s:GetChildren()[3].CFrame
   end


      local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

      local Window = Rayfield:CreateWindow({
         Name = "dasdres script",
         LoadingTitle = "dasdres script",
         LoadingSubtitle = "by dasdres",
         ConfigurationSaving = {
            Enabled = true,
            FolderName = nil, 
            FileName = "dasdres script"
         },
         Discord = {
            Enabled = true,
            Invite = "DEpvdN3fnp", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
            RememberJoins = false -- Set this to false to make them join the discord every time they load it up
         },
         KeySystem = false, -- Set this to true to use our key system
         KeySettings = {
            Title = "Untitled",
            Subtitle = "Key System",
            Note = "No method of obtaining the key is provided",
            FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
            SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
            GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
            Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
         }
      })

      local StuffTab = Window:CreateTab("Stuff", 4483362458) -- Title, Image


      Rayfield:Notify({
         Title = "NOTE",
         Content = "The script is still under development so dont expect anything to be perfect lol",
         Duration = 6.5,
         Image = 4483362458,
         Actions = { 
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })
      
      local HitboxToggleTB = StuffTab:CreateToggle({
         Name = "Expand Hitboxes",
         CurrentValue = false,
         Flag = "HBTTB", 
         Callback = function(Value)
            getgenv().HitboxExpand = Value
   
   
            while HitboxExpand == true do
               task.wait(0.1)
           for i, Player in pairs(game.Players:GetPlayers()) do
               local allplyrschar = Player.Character or Player.CharacterAdded or game.workspace[Player.Name]
               local HumanoidRootPart = allplyrschar:GetChildren("HumanoidRootPart")
      
                   if allplyrschar and Player ~= game.Players.LocalPlayer and HumanoidRootPart then
                      allplyrschar:WaitForChild("HumanoidRootPart").Size = Vector3.new(20, 20, 20)
                      allplyrschar:WaitForChild("HumanoidRootPart").Transparency = 0.5
                   end 
      
                  end
                   task.wait()
               end
               
           
      
           if HitboxExpand == false then
              for i, Player in pairs(game.Players:GetPlayers()) do
                  local allplyrschar = Player.Character or Player.CharacterAdded or game.workspace[Player.Name]
                      if allplyrschar and Player ~= game.Players.LocalPlayer and game.workspace[Player.Name].HumanoidRootPart then
                         allplyrschar.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                         allplyrschar.HumanoidRootPart.Transparency = 1
                      end 
                      
                  end
              end
         end,
      })
      
      local DNTButtonTB = StuffTab:CreateButton({
         Name = "Destroy Nametag",
         Callback = function()
            destroynametagTB()
         
         end,
      })
      local WSSliderTB = StuffTab:CreateSlider({
         Name = "Walkspeed",
         Range = {20, 300},
         Increment = 1,
         Suffix = "Speed",
         CurrentValue = 20,
         Flag = "WSTB", 
         Callback = function(Value)
          local plyr = game.Players.localPlayer
          plyr.Character.Humanoid.WalkSpeed = Value
      
          
         end,
      })
      


   local AntiTab = Window:CreateTab("Anti", 4483362458) -- Title, Image

   local AntiVoidToggleTB = AntiTab:CreateToggle({
      Name = "Anti Void",
      CurrentValue = false,
      Flag = "AVTTB", 
      Callback = function(Value)
         if Value == true then 
            antivoidTB()
         else game.workspace.AntiVoidPart:Destroy()
         end
         
   

      end,
   })

   local IslandsTab = Window:CreateTab("Islands", 4483362458) -- Title, Image
   

local IRButtonTB = IslandsTab:CreateButton({
         Name = "Invade Red",
         Callback = function()
            invadered()
         
         end,
      })

      local IBButtonTB = IslandsTab:CreateButton({
         Name = "Invade Blue",
         Callback = function()
            invadeblue()
         
         end,
      })


elseif game.PlaceId == 10201596675 then


      function destroynametagD()
         local LocalPlayer = game.Players.LocalPlayer
         
         
         LocalPlayer.Character.Head["Name Tag"]:Destroy()
         end


   local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
   
   local Window = Rayfield:CreateWindow({
      Name = "dasdres script",
      LoadingTitle = "dasdres script",
      LoadingSubtitle = "by dasdres",
      ConfigurationSaving = {
         Enabled = true,
         FolderName = nil, 
         FileName = "dasdres script"
      },
      Discord = {
         Enabled = true,
         Invite = "DEpvdN3fnp", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
         RememberJoins = false -- Set this to false to make them join the discord every time they load it up
      },
      KeySystem = false, -- Set this to true to use our key system
      KeySettings = {
         Title = "Untitled",
         Subtitle = "Key System",
         Note = "No method of obtaining the key is provided",
         FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
         SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
         GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
         Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
      }
   })
   
   local StuffTab = Window:CreateTab("Stuff", 4483362458) -- Title, Image
   
   Rayfield:Notify({
      Title = "NOTE",
      Content = "The script is still under development so dont expect anything to be perfect lol",
      Duration = 6.5,
      Image = 4483362458,
      Actions = { 
         Ignore = {
            Name = "Okay!",
            Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
   })
   
   local HitboxToggleD = StuffTab:CreateToggle({
      Name = "Expand Hitboxes",
      CurrentValue = false,
      Flag = "HBTD", 
      Callback = function(Value)
         getgenv().HitboxExpand = Value


         while HitboxExpand == true do
            task.wait(0.1)
        for i, Player in pairs(game.Players:GetPlayers()) do
            local allplyrschar = Player.Character or Player.CharacterAdded or game.workspace[Player.Name]
            local HumanoidRootPart = allplyrschar:GetChildren("HumanoidRootPart")
   
                if allplyrschar and Player ~= game.Players.LocalPlayer and HumanoidRootPart then
                   allplyrschar:WaitForChild("HumanoidRootPart").Size = Vector3.new(20, 20, 20)
                   allplyrschar:WaitForChild("HumanoidRootPart").Transparency = 0.5
                end 
   
               end
                task.wait()
            end
            
        
   
        if HitboxExpand == false then
           for i, Player in pairs(game.Players:GetPlayers()) do
               local allplyrschar = Player.Character or Player.CharacterAdded or game.workspace[Player.Name]
                   if allplyrschar and Player ~= game.Players.LocalPlayer and game.workspace[Player.Name].HumanoidRootPart then
                      allplyrschar.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                      allplyrschar.HumanoidRootPart.Transparency = 1
                   end 
                   
               end
           end
      end,
   })


   
   local DNTButtonD = StuffTab:CreateButton({
      Name = "Destroy Nametag",
      Callback = function()
         destroynametagD()
      
      end,
   })
   local WSSliderD = StuffTab:CreateSlider({
      Name = "Walkspeed",
      Range = {20, 300},
      Increment = 1,
      Suffix = "Speed",
      CurrentValue = 20,
      Flag = "WSD", 
      Callback = function(Value)
       local plyr = game.Players.localPlayer
       plyr.Character.Humanoid.WalkSpeed = Value
   
        
      end,
   })
   
end
