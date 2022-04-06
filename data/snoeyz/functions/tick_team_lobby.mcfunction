execute as @a[predicate=snoeyz:stepping_on_cyan_concrete,team=!props] run function snoeyz:add_prop
execute as @a[predicate=snoeyz:stepping_on_red_concrete,team=!seekers] run function snoeyz:add_seeker

execute if block 5 202 0 minecraft:lever[powered=true] unless entity @a[team=!props,team=!seekers] if score .lock snoeyz.team_lobby_countdown matches 0 run function snoeyz:setup_prop_lobby
execute if block 5 202 0 minecraft:lever[powered=true] unless entity @a[team=!props,team=!seekers] if score .lock snoeyz.team_lobby_countdown matches -1 run scoreboard players set .lock snoeyz.team_lobby_countdown 100
execute if block 5 202 0 minecraft:lever[powered=true] if entity @a[team=!props,team=!seekers] run tellraw @a [{"text":"Not everyone has joined a team yet!","color":"gold"}]
execute if block 5 202 0 minecraft:lever[powered=true] if entity @a[team=!props,team=!seekers] run setblock 5 202 0 minecraft:lever[face=floor,facing=north,powered=false]
execute if block 5 202 0 minecraft:lever[powered=false] unless score .lock snoeyz.team_lobby_countdown matches -1 run tellraw @a [{"text":"Cancelled game start.","color":"red"}]
execute if block 5 202 0 minecraft:lever[powered=false] unless score .lock snoeyz.team_lobby_countdown matches -1 run scoreboard players set .lock snoeyz.team_lobby_countdown -1