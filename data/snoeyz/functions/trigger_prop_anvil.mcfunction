tellraw @s ["","You have selected the ",{"text":"[Anvil]","color":"gold"}," as your prop."]
item replace entity @s armor.head from block 0 0 0 container.1
scoreboard players reset @s snoeyz.prop.anvil
scoreboard players enable @s snoeyz.prop.anvil