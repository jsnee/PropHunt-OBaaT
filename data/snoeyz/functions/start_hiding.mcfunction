tp @p[team=props] -42 67.2 -34
scoreboard players operation .lock snoeyz.hiding_time = .lock snoeyz.options.hiding_time

fill -20 200 -20 20 210 0 minecraft:black_concrete hollow

execute if score .lock snoeyz.prop_selection_time matches 0 run title @p[team=props] title ["",{"text":"GO HIDE!!!","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 0 run title @p[team=seekers] title ["",{"text":"Wait While The Props Hide...","color":"dark_aqua"}]