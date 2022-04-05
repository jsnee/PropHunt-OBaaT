execute if score .lock snoeyz.gamestate matches 1 run function snoeyz:tick_team_lobby
execute as @p[team=props,predicate=!snoeyz:remaining_prop] if score .lock snoeyz.gamestate matches 2 run function snoeyz:player_found
execute store result score .lock snoeyz.props_remaining run team list props
execute if score .lock snoeyz.gamestate matches 2 if score .lock snoeyz.props_remaining matches 0 run function snoeyz:end_game
execute if score .lock snoeyz.gamestate matches 2 run gamemode spectator @p[team=!props,team=!seekers]
kill @e[type=falling_block,tag=hiding-props]


execute as @p[predicate=snoeyz:hiding-amethyst_cluster] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:amethyst_cluster"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-anvil] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:anvil"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-barrel] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrel"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-composter] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:composter"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-campfire] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:campfire"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-candle] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:red_candle"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-crafting_table] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:crafting_table"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-flowering_azalea] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:flowering_azalea"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-iron_trapdoor] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:iron_trapdoor"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-lantern] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lantern"},Time:1,NoGravity:1b,Tags:["hiding-props"]}
execute as @p[predicate=snoeyz:hiding-torch] at @s run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:torch"},Time:1,NoGravity:1b,Tags:["hiding-props"]}

tag @p[predicate=snoeyz:hiding,tag=!hiding_player] add hiding-player
tag @p[predicate=!snoeyz:hiding,tag=hiding_player] remove hiding-player

execute if score .lock snoeyz.prop_selection_time matches 0 run function snoeyz:start_hiding
execute if score .lock snoeyz.prop_selection_time matches 0.. run scoreboard players remove .lock snoeyz.prop_selection_time 1
execute if score .lock snoeyz.prop_selection_time matches 0.. run scoreboard players operation .lock snoeyz.display_time_seconds = .lock snoeyz.prop_selection_time
execute if score .lock snoeyz.prop_selection_time matches 200 run title @p[team=props] title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"10","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 180 run title @p[team=props] title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"9","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 160 run title @p[team=props] title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"8","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 140 run title @p[team=props] title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"7","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 120 run title @p[team=props] title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"6","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 100 run title @p title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"5","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 80 run title @p title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"4","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 60 run title @p title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"3","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 40 run title @p title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"2","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.prop_selection_time matches 20 run title @p title ["",{"text":"Game Begins In: ","color":"dark_aqua"},{"text":"1","color":"red"},{"text":" Seconds","color":"dark_aqua"}]

execute if score .lock snoeyz.hiding_time matches 0 run function snoeyz:start_seeking
execute if score .lock snoeyz.hiding_time matches 0.. run scoreboard players remove .lock snoeyz.hiding_time 1
execute if score .lock snoeyz.hiding_time matches 0.. run scoreboard players operation .lock snoeyz.display_time_seconds = .lock snoeyz.hiding_time
execute if score .lock snoeyz.hiding_time matches 200 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"10","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 180 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"9","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 160 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"8","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 140 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"7","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 120 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"6","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 100 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"5","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 80 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"4","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 60 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"3","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 40 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"2","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.hiding_time matches 20 run title @p title ["",{"text":"Seekers Start In: ","color":"dark_aqua"},{"text":"1","color":"red"},{"text":" Seconds","color":"dark_aqua"}]

execute if score .lock snoeyz.play_time matches 0.. run scoreboard players remove .lock snoeyz.play_time 1
execute if score .lock snoeyz.play_time matches 0.. run scoreboard players operation .lock snoeyz.display_time_seconds = .lock snoeyz.play_time
execute if score .lock snoeyz.play_time matches 200 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"10","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 180 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"9","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 160 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"8","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 140 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"7","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 120 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"6","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 100 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"5","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 80 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"4","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 60 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"3","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 40 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"2","color":"red"},{"text":" Seconds","color":"dark_aqua"}]
execute if score .lock snoeyz.play_time matches 20 run title @p title ["",{"text":"Time's Up In: ","color":"dark_aqua"},{"text":"1","color":"red"},{"text":" Seconds","color":"dark_aqua"}]

execute if score .lock snoeyz.display_time_seconds matches 1.. run function snoeyz:display_time_remaining

execute as @p[team=seekers,predicate=!snoeyz:holding-snowball,scores={seeker_shot_cooldown=1..}] run scoreboard players remove @s seeker_shot_cooldown 1
execute as @p[team=seekers,predicate=!snoeyz:holding-snowball,scores={seeker_shot_cooldown=0}] run function snoeyz:give_snowball

execute if entity @p[scores={prophunt_new_game=1..}] run function snoeyz:start_new_game

execute if score .lock snoeyz.hiding_time matches 0.. as @p[team=!seekers,predicate=!snoeyz:hand_empty] run item replace entity @s weapon with minecraft:air
execute if score .lock snoeyz.hiding_time matches 0.. as @p[team=seekers,predicate=!snoeyz:holding-snowball] unless entity @s[predicate=snoeyz:hand_empty] run item replace entity @s weapon with minecraft:air
execute if score .lock snoeyz.gamestate matches 1.. as @p[team=!seekers,predicate=!snoeyz:hand_empty] run item replace entity @s weapon with minecraft:air
execute if score .lock snoeyz.gamestate matches 1.. as @p[team=seekers,predicate=!snoeyz:holding-snowball] unless entity @s[predicate=snoeyz:hand_empty] run item replace entity @s weapon with minecraft:air