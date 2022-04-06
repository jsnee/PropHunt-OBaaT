tp @a[team=props] -42 67.2 -34
scoreboard players operation .lock snoeyz.hiding_time = .lock snoeyz.options.hiding_time

fill -20 200 -20 20 210 0 minecraft:black_concrete hollow

scoreboard players reset @a snoeyz.prop.amethyst_cluster
scoreboard players reset @a snoeyz.prop.anvil
scoreboard players reset @a snoeyz.prop.barrel
scoreboard players reset @a snoeyz.prop.campfire
scoreboard players reset @a snoeyz.prop.candle
scoreboard players reset @a snoeyz.prop.composter
scoreboard players reset @a snoeyz.prop.crafting_table
scoreboard players reset @a snoeyz.prop.flowering_azaleas
scoreboard players reset @a snoeyz.prop.iron_trapdoor
scoreboard players reset @a snoeyz.prop.lantern
scoreboard players reset @a snoeyz.prop.torch

execute if score .lock snoeyz.prop_selection_time matches 0 run title @a[team=props] title ["",{"text":"GO HIDE!!!","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 0 run title @a[team=seekers] title ["",{"text":"Wait While The Props Hide...","color":"dark_aqua"}]