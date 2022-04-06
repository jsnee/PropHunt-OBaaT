tellraw @s ["","You have selected the ",{"text":"[Flowering Azalea]","color":"gold"}," as your prop."]
item replace entity @s armor.head from block 0 0 0 container.7
scoreboard players reset @s snoeyz.prop.flowering_azaleas
scoreboard players enable @s snoeyz.prop.flowering_azaleas