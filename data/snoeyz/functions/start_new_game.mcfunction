scoreboard players reset @a prophunt_new_game
execute as @p[scores={prophunt_new_game=1..}] run scoreboard players set @s prophunt_new_game 0

fill -20 200 -20 20 210 20 minecraft:barrier hollow

fill -20 200 -20 20 200 -5 minecraft:red_concrete
fill -20 200 20 20 200 5 minecraft:cyan_concrete

tp @p 0 201 0

setblock 19 202 0 spruce_sign[rotation=4]
data merge block 19 202 0 {Text2:"{\"text\":\"Begin Game\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:start_prop_lobby\"}}",GlowingText:1b}
setblock -19 202 0 spruce_sign[rotation=12]
data merge block -19 202 0 {Text2:"{\"text\":\"Options\",\"color\":\"dark_aqua\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:run_options\"}}",GlowingText:1b}

execute as @p run clear
scoreboard players set .lock snoeyz.gamestate 1
gamemode adventure @p
function snoeyz:clear_map