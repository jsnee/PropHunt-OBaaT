tellraw @s ["","You have selected the ",{"text":"[Campfire]","color":"gold"}," as your prop."]
item replace entity @s armor.head from block 0 0 0 container.4
scoreboard players reset @s snoeyz.prop.campfire
scoreboard players enable @s snoeyz.prop.campfire