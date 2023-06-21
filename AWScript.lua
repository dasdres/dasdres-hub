if game.PlaceId == 8260276694 then

   function hitboxexpand()
      local plyr = game.Players.LocalPlayer     
      local char = plyr.Character
      local Hitbox = char.Hitbox
      
      Hitbox.Size = Vector3.new(20, 20 ,20)
      Hitbox.Transparency = 0.5
      Hitbox.Material = "Water"
   
      end
   
   function hitboxshrink()
      local plyr = game.Players.LocalPlayer     
      local char = plyr.Character
      local Hitbox = char.Hitbox
      
      Hitbox.Size = Vector3.new(1.5, 1.5 ,2)
      Hitbox.Transparency = 1
      Hitbox.Material = "Plastic"
   
      end
      
   
          
   

   
   
   
   
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
         FolderName = nil, -- Create a custom folder for your hub/game
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
      Actions = { -- Notification Buttons
         Ignore = {
            Name = "Okay!",
            Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
   })
   
   local HitboxExpandButton = StuffTab:CreateButton({
      Name = "Expand Hitbox",
      Callback = function()
      hitboxexpand()
      -- The function that takes place when the button is pressed
      end,
   })
   
   local NormalButton = StuffTab:CreateButton({
      Name = "Normal HitBox",
      Callback = function()
      hitboxshrink()
      -- The function that takes place when the button is pressed
      end,
   })
   
   local DNTButton = StuffTab:CreateButton({
      Name = "Destroy Nametag",
      Callback = function()
         destroynametag()
      -- The function that takes place when the button is pressed
      end,
   })
   local WSSlider = StuffTab:CreateSlider({
      Name = "Walkspeed",
      Range = {20, 300},
      Increment = 1,
      Suffix = "Speed",
      CurrentValue = 20,
      Flag = "WS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
       local plyr = game.Players.localPlayer
       plyr.Character.Humanoid.WalkSpeed = Value
   
         -- The function that takes place when the slider changes
      -- The variable (Value) is a number which correlates to the value the slider is currently at
      end,
   })
   
   local JPSlider = StuffTab:CreateSlider({
      Name = "Jump Power",
      Range = {50, 300},
      Increment = 1,
      Suffix = "JP",
      CurrentValue = 50,
      Flag = "JP", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
       
        local plyr = game.Players.localPlayer
       plyr.Character.Humanoid.JumpPower = Value
    
   
   
   
   
         
       
      -- The function that takes place when the slider changes
      -- The variable (Value) is a number which correlates to the value the slider is currently at
      end,
   })
   
   
   local BossTab = Window:CreateTab("Bosses", 4483362458) -- Title, Image
   
   local TreeLordButton = BossTab:CreateButton({
      Name = "Tree Lord HitBox",
      Callback = function()
      game.workspace["Tree Lord"].HumanoidRootPart.Size = Vector3.new(50, 50, 50)
      game.workspace["Tree Lord"].HumanoidRootPart.Transparency = 0.5
      -- The function that takes place when the button is pressed
      end,
   })
   
   local MushroomKingButton = BossTab:CreateButton({
      Name = "Mushroom King Hitbox",
      Callback = function()
       game.workspace["Mushroom King"].HumanoidRootPart.Size = Vector3.new(50, 50, 50)
      game.workspace["Mushroom King"].HumanoidRootPart.Transparency = 0.5
      -- The function that takes place when the button is pressed
      end,
   })
   
   local DogButton = BossTab:CreateButton({
      Name = "Dog Hitbox",
      Callback = function()
         game.workspace.Dog.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
      game.workspace.Dog.HumanoidRootPart.Transparency = 0.5
      -- The function that takes place when the button is pressed
      end,
   })
   
   local CatButton = BossTab:CreateButton({
      Name = "Cat Hitbox",
      Callback = function()
         game.workspace.Cat.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
      game.workspace.Cat.HumanoidRootPart.Transparency = 0.5
      -- The function that takes place when the button is pressed
      end,
   })
   
   local ScareCrowButton = BossTab:CreateButton({
      Name = "Scarecrow Hitbox",
      Callback = function()
         game.workspace.Scarecrow.HumanoidRootPart.Size = Vector3.new(50, 50, 50)
      game.workspace.Scarecrow.HumanoidRootPart.Transparency = 0.5
      -- The function that takes place when the button is pressed
      end,
   })
 

   local AntiTab = Window:CreateTab("Anti", 4483362458) -- Title, Image

   local AntiVoidToggle = AntiTab:CreateToggle({
      Name = "Anti Void",
      CurrentValue = false,
      Flag = "AVT", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         if Value == true then 
            antivoid()
         else game.workspace.AntiVoidPart1:Destroy()
            game.workspace.AntiVoidPart2:Destroy()
            game.workspace.AntiVoidPart3:Destroy()
         end
      -- The function that takes place when the toggle is pressed
      -- The variable (Value) is a boolean on whether the toggle is true or false
      end,
   })


      local AntiCauldronButton = AntiTab:CreateButton({
      Name = "Anti Cauldron",
      Callback = function()
         workspace.Main.Shop.Attic.Alchemy["Alchemist Cauldron"]["Character Kill"].TouchInterest:Destroy()

      -- The function that takes place when the button is pressed
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


        function hitboxexpandTB()
      local plyr = game.Players.LocalPlayer     
      local char = plyr.Character
      local Hitbox = char.Hitbox
      
      Hitbox.Size = Vector3.new(20, 20 ,20)
      Hitbox.Transparency = 0.5
      Hitbox.Material = "Water"
   
      end
   

   function hitboxshrinkTB()
      local plyr = game.Players.LocalPlayer     
      local char = plyr.Character
      local Hitbox = char.Hitbox
      
      Hitbox.Size = Vector3.new(1.5, 1.5 ,2)
      Hitbox.Transparency = 1
      Hitbox.Material = "Plastic"
   
      end

      
function invadeblue()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Blue Island"].C4s["Bomb C4"].CFrame
   wait(20)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Blue Island"].C4s:GetChildren()[1].CFrame
   wait(20)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Blue Island"].C4s:GetChildren()[2].CFrame
   wait(20)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Blue Island"].C4s:GetChildren()[3].CFrame
   end
   function invadered()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Red Island"].C4s["Bomb C4"].CFrame
   wait(20)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Red Island"].C4s:GetChildren()[1].CFrame
   wait(20)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Red Island"].C4s:GetChildren()[2].CFrame
   wait(20)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Red Island"].C4s:GetChildren()[3].CFrame
   end


      local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

      local Window = Rayfield:CreateWindow({
         Name = "dasdres script",
         LoadingTitle = "dasdres script",
         LoadingSubtitle = "by dasdres",
         ConfigurationSaving = {
            Enabled = true,
            FolderName = nil, -- Create a custom folder for your hub/game
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
         Actions = { -- Notification Buttons
            Ignore = {
               Name = "Okay!",
               Callback = function()
               print("The user tapped Okay!")
            end
         },
      },
      })
      
      local HitboxExpandButtonTB = StuffTab:CreateButton({
         Name = "Expand Hitbox",
         Callback = function()
         hitboxexpandTB()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local NormalButtonTB = StuffTab:CreateButton({
         Name = "Normal HitBox",
         Callback = function()
         hitboxshrinkTB()
         -- The function that takes place when the button is pressed
         end,
      })
      
      local DNTButtonTB = StuffTab:CreateButton({
         Name = "Destroy Nametag",
         Callback = function()
            destroynametagTB()
         -- The function that takes place when the button is pressed
         end,
      })
      local WSSliderTB = StuffTab:CreateSlider({
         Name = "Walkspeed",
         Range = {20, 300},
         Increment = 1,
         Suffix = "Speed",
         CurrentValue = 20,
         Flag = "WSTB", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
         Callback = function(Value)
          local plyr = game.Players.localPlayer
          plyr.Character.Humanoid.WalkSpeed = Value
      
            -- The function that takes place when the slider changes
         -- The variable (Value) is a number which correlates to the value the slider is currently at
         end,
      })
      


   local AntiTab = Window:CreateTab("Anti", 4483362458) -- Title, Image

   local AntiVoidToggleTB = AntiTab:CreateToggle({
      Name = "Anti Void",
      CurrentValue = false,
      Flag = "AVTTB", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
         if Value == true then 
            antivoidTB()
         else game.workspace.AntiVoidPart:Destroy()
         end
         
   
      -- The function that takes place when the toggle is pressed
      -- The variable (Value) is a boolean on whether the toggle is true or false
      end,
   })

   local IslandsTab = Window:CreateTab("Islands", 4483362458) -- Title, Image
   

local IRButtonTB = IslandsTab:CreateButton({
         Name = "Invade Red",
         Callback = function()
            invadered()
         -- The function that takes place when the button is pressed
         end,
      })

      local IBButtonTB = IslandsTab:CreateButton({
         Name = "Invade Blue",
         Callback = function()
            invadeblue()
         -- The function that takes place when the button is pressed
         end,
      })


elseif game.PlaceId == 10201596675 then
   function AntiStorm()
      game.workspace.Storm:Destroy()
      game.workspace.StormHitbox:Destroy()
      end

   function hitboxexpandD()
      local plyr = game.Players.LocalPlayer     
      local char = plyr.Character
      local Hitbox = char.Hitbox
      
      Hitbox.Size = Vector3.new(20, 20 ,20)
      Hitbox.Transparency = 0.5
      Hitbox.Material = "Water"
   
      end
   
   function hitboxshrinkD()
      local plyr = game.Players.LocalPlayer     
      local char = plyr.Character
      local Hitbox = char.Hitbox
      
      Hitbox.Size = Vector3.new(1.5, 1.5 ,2)
      Hitbox.Transparency = 1
      Hitbox.Material = "Plastic"
   
      end

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
         FolderName = nil, -- Create a custom folder for your hub/game
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
      Actions = { -- Notification Buttons
         Ignore = {
            Name = "Okay!",
            Callback = function()
            print("The user tapped Okay!")
         end
      },
   },
   })
   
 

   local HitboxExpandButtonD = StuffTab:CreateButton({
      Name = "Expand Hitbox",
      Callback = function()
      hitboxexpandD()
      -- The function that takes place when the button is pressed
      end,
   })
   
   local NormalButtonD = StuffTab:CreateButton({
      Name = "Normal HitBox",
      Callback = function()
      hitboxshrinkD()
      -- The function that takes place when the button is pressed
      end,
   })
   
   local DNTButtonD = StuffTab:CreateButton({
      Name = "Destroy Nametag",
      Callback = function()
         destroynametagD()
      -- The function that takes place when the button is pressed
      end,
   })
   local WSSliderD = StuffTab:CreateSlider({
      Name = "Walkspeed",
      Range = {20, 300},
      Increment = 1,
      Suffix = "Speed",
      CurrentValue = 20,
      Flag = "WSD", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
      Callback = function(Value)
       local plyr = game.Players.localPlayer
       plyr.Character.Humanoid.WalkSpeed = Value
   
         -- The function that takes place when the slider changes
      -- The variable (Value) is a number which correlates to the value the slider is currently at
      end,
   })
   
end
