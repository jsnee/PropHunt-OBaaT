tellraw @s ["","You have selected the ",{"text":"[Torch]","color":"gold"}," as your prop."]
item replace entity @s armor.head from block 0 0 0 container.10
scoreboard players reset @s snoeyz.prop.torch
scoreboard players enable @s snoeyz.prop.torch