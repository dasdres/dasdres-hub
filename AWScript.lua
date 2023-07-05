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
   
   
   local StuffTab = Window:CreateTab("Stuff", 4483362458) 
   
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
             
   
                if allplyrschar and Player ~= game.Players.LocalPlayer then
                  if Player.Character:FindFirstChild("HumanoidRootPart") then
                   Player.Character:WaitForChild("HumanoidRootPart").Size = Vector3.new(20, 20, 20)
                   Player.Character:WaitForChild("HumanoidRootPart").Transparency = 0.5
                  end
                end 
               if Player:WaitForChild("leaderstats"):WaitForChild("Ability").Value == "Mech" and allplyrschar and Player ~= game.Players.LocalPlayer then
                  if Player.Character:FindFirstChild("HumanoidRootPart") then
                  Player.Character:WaitForChild("HumanoidRootPart").Size = Vector3.new(30, 30, 30)
                  Player.Character:WaitForChild("HumanoidRootPart").Transparency = 0.5
                  end
                end
               end
                task.wait()
            end
            while HitboxExpand == true do
               for i, v in pairs(game.workspace:GetChildren()) do
                  if v.Name == "Alien" and v:FindFirstChild("HumanoidRootPart") then
                     v.HumanoidRootPart.Size = Vector3.new(20, 20, 20)
                     v.HumanoidRootPart.Transparency = 0.5
                  end
               end
               task.wait()
            end
            if HitboxExpand == false then
               for i, v in pairs(game.workspace:GetChildren()) do
                  if v.Name == "Alien" and v:FindFirstChild("HumanoidRootPart") then
                     v.HumanoidRootPart.Size = Vector3.new(2, 2, 1)
                     v.HumanoidRootPart.Transparency = 1
                  end
               end
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

   local DestroyNameTagToggle = StuffTab:CreateToggle({
      Name = "Auto Destroy Nametag",
      CurrentValue = false,
      Flag = "DNT", 
      Callback = function(Value)
         getgenv().NametagDestoy = Value
      while NametagDestoy == true do
    local charac = game.Players.LocalPlayer.Character or game.Players.LocalPlayers.CharacterAdded
    if charac and game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("Name Tag") then
        game.Players.LocalPlayer.Character:FindFirstChild("Head")["Name Tag"]:Destroy()
    end
    task.wait()
    end
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
       local plyr = game.Players.LocalPlayer
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
       
        local plyr = game.Players.LocalPlayer
       plyr.Character.Humanoid.JumpPower = Value
    
   
      end,
   })
   
   
   local BossTab = Window:CreateTab("Bosses", 4483362458) 
   
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
         v.HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         v.HumanoidRootPart.Transparency = 1
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
           v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           v.HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end
  if MushroomKingHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Mushroom King" and v:FindFirstChild("HumanoidRootPart") then
         v.HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         v.HumanoidRootPart.Transparency = 1
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
           v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           v.HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end
  if CatHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Cat" and v:FindFirstChild("HumanoidRootPart") then
         v.HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         v.HumanoidRootPart.Transparency = 1
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
           v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           v.HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end

  if DogHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Dog" and v:FindFirstChild("HumanoidRootPart") then
         v.HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         v.HumanoidRootPart.Transparency = 1
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
           v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
           v.HumanoidRootPart.Transparency = 0.5
          end
      end
      wait()
  end

  if ScarecrowHitbox == false then
   for i, v in pairs(game.workspace:GetChildren()) do 
      if v.Name == "Scarecrow" and v:FindFirstChild("HumanoidRootPart") then
         v.HumanoidRootPart.Size = Vector3.new(10.8166, 10.8166, 5.40831)
         v.HumanoidRootPart.Transparency = 1
        end
    end
   end

      end,
   })


   local AntiTab = Window:CreateTab("Anti", 4483362458) 

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


   local CardToggle = AntiTab:CreateToggle({
      Name = "Anti Cards",
      CurrentValue = false,
      Flag = "ACT", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         getgenv().AntiCards = Value

         while AntiCards == true do
            for i, v in pairs(game.workspace:GetChildren()) do
               local cards = v.Name == "1" or v.Name == "2" or v.Name == "3" or v.Name == "4" or v.Name == "5" or v.Name == "6" or v.Name == "7" or v.Name == "8" or v.Name == "9" or v.Name == "10" or v.Name == "30"
               if cards and v:FindFirstChild("Decal") and v:FindFirstChild("TouchInterest") then
                     v.TouchInterest:Destroy() 
               end
            end
            task.wait()
         end
      end,
   })

      local AntiCauldronButton = AntiTab:CreateButton({
      Name = "Anti Cauldron",
      Callback = function()
         workspace.Main.Shop.Attic.Alchemy["Alchemist Cauldron"]["Character Kill"].TouchInterest:Destroy()
      end,
   })
   local TPTab = Window:CreateTab("Teleport", 4483362458) 

   local TPLobbyButton = TPTab:CreateButton({
      Name = "TP to Lobby",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.4604406, 250.799988, 2.90667725, 0, 0, -1, 0, 1, 0, 1, 0, 0)
      end,
   })

   local TPALobbyButton = TPTab:CreateButton({
      Name = "TP above Lobby",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(60.1661339, 281.692932, -2.39607096, -0.19936882, -0.0447050631, -0.978904247, -6.0798806e-09, 0.998958826, -0.045620922, 0.9799245, -0.00909538381, -0.199161246) 
      end,
   })

   local TPArenaButton = TPTab:CreateButton({
      Name = "TP to Arena",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2.16012311, 19.0389709, 17.0836773, 0.379294187, 4.30496385e-08, -0.92527616, -2.43067166e-08, 1, 3.65623194e-08, 0.92527616, 8.62255067e-09, 0.379294187)
      end,
   })
   
   local TPShopButton = TPTab:CreateButton({
      Name = "TP to Shop",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17.6881104, 20.0389862, 108.902466, -0.99960494, 8.96899479e-08, 0.0281065442, 9.09523052e-08, 1, 4.3634941e-08, -0.0281065442, 4.61740548e-08, -0.99960494)
      end,
   })
   
   local TPCaveButton = TPTab:CreateButton({
      Name = "TP to Cave",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-91.5903625, 20.0389862, -99.5526962, 0.998134136, -4.43841905e-08, 0.0610591844, 4.00994935e-08, 1, 7.13981905e-08, -0.0610591844, -6.88165329e-08, 0.998134136)

      end,
   })
   
   local TPMysticCaveButton = TPTab:CreateButton({
      Name = "TP to Mystic Cave",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Main.Mountain.Mystic.Altar.Stone:GetChildren()[25].CFrame
      end,
   })
   
   local TPSLobbyButton = TPTab:CreateButton({
      Name = "TP to Spleef Lobby",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19110.7129, -7.96139765, 89.0617447, 0.991487682, 4.11808943e-09, -0.13020058, -1.46434855e-08, 1, -7.98824829e-08, 0.13020058, 8.11090857e-08, 0.991487682)
      end,
   })
   
   local TPSArenaButton = TPTab:CreateButton({
      Name = "TP to Spleef Arena",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-19103.2734, -7.96139765, -24.4411335, 0.0598865412, 3.78605343e-08, 0.998205185, 6.83758685e-08, 1, -4.20307664e-08, -0.998205185, 7.0770227e-08, 0.0598865412)
      end,
   })
   
   local TPTLobbyButton = TPTab:CreateButton({
      Name = "TP to Tournament Lobby",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21737.8242, 7.75048685, 88.4439468, 0.962687671, -5.73028878e-08, 0.270615011, 5.87473288e-08, 1, 2.76244561e-09, -0.270615011, 1.32385365e-08, 0.962687671)
      end,
   })
   
   local TPALobbyButton = TPTab:CreateButton({
      Name = "TP to Tournament Arena",
      Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21752.3945, -2.99902344, 1.08387566, -0.915879786, -2.097718e-09, -0.401452571, 4.51478632e-09, 1, -1.55254192e-08, 0.401452571, -1.60318905e-08, -0.915879786)
      end,
   })
   
   local BadgeTab = Window:CreateTab("Badges", 4483362458)

   local BackroomsButton = BadgeTab:CreateButton({
      Name = "Get Backrooms Badge",
      Callback = function()
      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Main.Secrets["Cave Teleport"].CFrame
      wait(2)
      game:GetService("ReplicatedStorage"):WaitForChild("Remote Events"):WaitForChild("Respawn"):FireServer()
      end,
   })
   local CakeButton = BadgeTab:CreateButton({
      Name = "Get Cake Badge",
      Callback = function()
      if game.workspace["Map Items"]:FindFirstChild("Cake") then
      firetouchinterest(game.Players.LocalPlayer.Character.Head, workspace["Map Items"].Cake, 0)
      task.wait(0.01)
      firetouchinterest(game.Players.LocalPlayer.Character.Head, workspace["Map Items"].Cake, 1)
      end
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

      local StuffTab = Window:CreateTab("Stuff", 4483362458) 


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
      
                   if allplyrschar and Player ~= game.Players.LocalPlayer then
                     if HumanoidRootPart then
                      allplyrschar:WaitForChild("HumanoidRootPart").Size = Vector3.new(20, 20, 20)
                      allplyrschar:WaitForChild("HumanoidRootPart").Transparency = 0.5
                     end
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
      
      local DestroyNameTagToggleTB = StuffTab:CreateToggle({
         Name = "Auto Destroy Nametag",
         CurrentValue = false,
         Flag = "DNTTB", 
         Callback = function(Value)
            getgenv().NametagDestoy = Value
         while NametagDestoy == true do
       local charac = game.Players.LocalPlayer.Character or game.Players.LocalPlayers.CharacterAdded
       if charac and game.Players.LocalPlayer.Character:FindFirstChild("Head") and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("Name Tag") then
           game.Players.LocalPlayer.Character:FindFirstChild("Head")["Name Tag"]:Destroy()
       end
       task.wait()
       end
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
          local plyr = game.Players.LocalPlayer
          plyr.Character.Humanoid.WalkSpeed = Value
      
          
         end,
      })
      


   local AntiTab = Window:CreateTab("Anti", 4483362458) 

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

local IslandsTab = Window:CreateTab("Islands", 4483362458) 
   

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
   
   local StuffTab = Window:CreateTab("Stuff", 4483362458) 
   
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
       local plyr = game.Players.LocalPlayer
       plyr.Character.Humanoid.WalkSpeed = Value
   
        
      end,
   })
   
end
