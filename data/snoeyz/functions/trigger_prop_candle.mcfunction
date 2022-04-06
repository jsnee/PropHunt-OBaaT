tellraw @s ["","You have selected the ",{"text":"[Candle]","color":"gold"}," as your prop."]
item replace entity @s armor.head from block 0 0 0 container.5
scoreboard players reset @s snoeyz.prop.candle
scoreboard players enable @s snoeyz.prop.candle