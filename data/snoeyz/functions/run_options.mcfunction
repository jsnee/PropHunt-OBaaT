tellraw @s ["",{"text":"PropHunt Options","bold":true,"underlined":true,"color":"dark_green"}]

# Infection Gamemode
execute if score .lock snoeyz.options.infect_mode matches 1 run tellraw @s ["",{"text":"Gamemode: ","bold":true,"color":"gold"},{"text":"[Infection]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function snoeyz:options/toggle_infection"},"hoverEvent":{"action":"show_text","contents":["Once found, Props join Seekers"]}}]
execute unless score .lock snoeyz.options.infect_mode matches 1 run tellraw @s ["",{"text":"Gamemode: ","bold":true,"color":"gold"},{"text":"[Standard]","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function snoeyz:options/toggle_infection"},"hoverEvent":{"action":"show_text","contents":["Once found, Props become spectators"]}}]

# Prop Selection Time
execute if score .lock snoeyz.options.prop_selection_time matches 120.. run tellraw @s ["",{"text":"Prop Selection Time: ","bold":true,"color":"gold"},{"text":"[+1 sec.]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function snoeyz:options/add_prop_selection_time"},"hoverEvent":{"action":"show_text","contents":["Adds 20 game ticks."]}},{"text":" [","bold":true,"color":"dark_green"},{"score":{"name":".lock","objective":"snoeyz.options.prop_selection_time"},"bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function snoeyz:options/reset_prop_selection_time"},"hoverEvent":{"action":"show_text","contents":["Click to reset to default (30 seconds)."]}},{"text":" ticks] ","bold":true,"color":"dark_green"},{"text":"[-1 sec.]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function snoeyz:options/remove_prop_selection_time"},"hoverEvent":{"action":"show_text","contents":["Removes 20 game ticks."]}}]
execute if score .lock snoeyz.options.prop_selection_time matches ..119 run tellraw @s ["",{"text":"Prop Selection Time: ","bold":true,"color":"gold"},{"text":"[+1 sec.]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function snoeyz:options/add_prop_selection_time"},"hoverEvent":{"action":"show_text","contents":["Adds 20 game ticks."]}},{"text":" [","bold":true,"color":"dark_green"},{"score":{"name":".lock","objective":"snoeyz.options.prop_selection_time"},"bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function snoeyz:options/reset_prop_selection_time"},"hoverEvent":{"action":"show_text","contents":["Click to reset to default (30 seconds)."]}},{"text":" ticks] ","bold":true,"color":"dark_green"},{"text":"[-1 sec.]","bold":true,"strikethrough":true,"color":"gold"}]

# Hiding Time
execute if score .lock snoeyz.options.hiding_time matches 120.. run tellraw @s ["",{"text":"Hiding Time: ","bold":true,"color":"gold"},{"text":"[+1 sec.]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function snoeyz:options/add_hiding_time"},"hoverEvent":{"action":"show_text","contents":["Adds 20 game ticks."]}},{"text":" [","bold":true,"color":"dark_green"},{"score":{"name":".lock","objective":"snoeyz.options.hiding_time"},"bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function snoeyz:options/reset_hiding_time"},"hoverEvent":{"action":"show_text","contents":["Click to reset to default (60 seconds)."]}},{"text":" ticks] ","bold":true,"color":"dark_green"},{"text":"[-1 sec.]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function snoeyz:options/remove_hiding_time"},"hoverEvent":{"action":"show_text","contents":["Removes 20 game ticks."]}}]
execute if score .lock snoeyz.options.hiding_time matches ..119 run tellraw @s ["",{"text":"Hiding Time: ","bold":true,"color":"gold"},{"text":"[+1 sec.]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function snoeyz:options/add_hiding_time"},"hoverEvent":{"action":"show_text","contents":["Adds 20 game ticks."]}},{"text":" [","bold":true,"color":"dark_green"},{"score":{"name":".lock","objective":"snoeyz.options.hiding_time"},"bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function snoeyz:options/reset_hiding_time"},"hoverEvent":{"action":"show_text","contents":["Click to reset to default (60 seconds)."]}},{"text":" ticks] ","bold":true,"color":"dark_green"},{"text":"[-1 sec.]","bold":true,"strikethrough":true,"color":"gold"}]

# Play Time
execute if score .lock snoeyz.options.play_time matches 6000.. run tellraw @s ["",{"text":"Play Time: ","bold":true,"color":"gold"},{"text":"[+1 min.]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function snoeyz:options/add_play_time"},"hoverEvent":{"action":"show_text","contents":["Adds 1200 game ticks."]}},{"text":" [","bold":true,"color":"dark_green"},{"score":{"name":".lock","objective":"snoeyz.options.play_time"},"bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function snoeyz:options/reset_play_time"},"hoverEvent":{"action":"show_text","contents":["Click to reset to default (20 minutes)."]}},{"text":" ticks] ","bold":true,"color":"dark_green"},{"text":"[-1 min.]","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function snoeyz:options/remove_play_time"},"hoverEvent":{"action":"show_text","contents":["Removes 1200 game ticks."]}}]
execute if score .lock snoeyz.options.play_time matches ..5999 run tellraw @s ["",{"text":"Play Time: ","bold":true,"color":"gold"},{"text":"[+1 min.]","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function snoeyz:options/add_play_time"},"hoverEvent":{"action":"show_text","contents":["Adds 1200 game ticks."]}},{"text":" [","bold":true,"color":"dark_green"},{"score":{"name":".lock","objective":"snoeyz.options.play_time"},"bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function snoeyz:options/reset_play_time"},"hoverEvent":{"action":"show_text","contents":["Click to reset to default (20 minutes)."]}},{"text":" ticks] ","bold":true,"color":"dark_green"},{"text":"[-1 min.]","bold":true,"strikethrough":true,"color":"gold"}]