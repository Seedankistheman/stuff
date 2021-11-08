local char = game.Players.LocalPlayer.Character
local Model = Instance.new("Model")
Model.WorldPivot = CFrame.new(9.1899309158325, 15.481007575989, -9.5850105285645, 1, 0, 0, 0, 0, 1, 0, -1, 0)

local Big = Instance.new("MeshPart")
Big.Name = "Big"
Big.CanCollide = false
Big.Massless = true
Big.Material = Enum.Material.Neon
Big.Size = Vector3.new(13.077736854553, 13.077736854553, 1.3077737092972)
Big.Locked = true
Big.CFrame = CFrame.new(9.1899309158325, 10.817123413086, -9.7188339233398, 1, 0, 0, 0, 0, 1, 0, -1, 0)
Big.CastShadow = false
Big.Parent = Model

local Left = Instance.new("Weld")
Left.Name = "Left"
Left.C0 = CFrame.new(-4.3294978141785, 6.9525012969971, 6.2295570373535, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Left.Parent = Big

local Right = Instance.new("Weld")
Right.Name = "Right"
Right.C0 = CFrame.new(-4.3294978141785, -7.2201476097107, 6.2295570373535, 0, 0, 1, 0, 1, 0, -1, 0, 0)
Right.Parent = Big

local Left1 = Instance.new("MeshPart")
Left1.Name = "Left"
Left1.CanCollide = false
Left1.Massless = true
Left1.Material = Enum.Material.Neon
Left1.Size = Vector3.new(7.5041966438293, 7.5041966438293, 0.75041967630386)
Left1.Locked = true
Left1.CFrame = CFrame.new(4.8604331016541, 17.046680450439, -16.671335220337, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Left1.CastShadow = false
Left1.Parent = Model

local Right1 = Instance.new("MeshPart")
Right1.Name = "Right"
Right1.CanCollide = false
Right1.Massless = true
Right1.Material = Enum.Material.Neon
Right1.Size = Vector3.new(7.5041966438293, 7.5041966438293, 0.75041967630386)
Right1.Locked = true
Right1.CFrame = CFrame.new(4.8604331016541, 17.046680450439, -2.4986863136292, 0, 0, 1, -1, 0, 0, 0, -1, 0)
Right1.CastShadow = false
Right1.Parent = Model

Left.Part1 = Left1
Left.Part0 = Big

Right.Part1 = Right1
Right.Part0 = Big

Model.Parent = char
local root = Instance.new("Part")
root.Name = "root"
root.Parent = char
root.Anchored = false
root.CanCollide = false
root.Transparency = 0.6
root.Massless = true
root.Size = Vector3.new(5,5,5)

local rootweld = Instance.new("Weld")
rootweld.Parent = char.HumanoidRootPart
rootweld.Part0 = char.HumanoidRootPart
rootweld.Part1 = root
rootweld.Name = "rootweld"
rootweld.C0 = CFrame.new(0,-3,0)*CFrame.Angles(math.rad(90),0,0)

local weld1 = Instance.new("Weld")
weld1.Parent = char.HumanoidRootPart
weld1.Part0 = root
weld1.Part1 = Big
weld1.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(180),0,math.rad(90))
weld1.Name = "weld1"
