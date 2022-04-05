scoreboard players operation .lock snoeyz.display_time_seconds /= .lock snoeyz.ticks_per_second
scoreboard players add .lock snoeyz.display_time_seconds 1
scoreboard players operation .lock snoeyz.display_time_minutes = .lock snoeyz.display_time_seconds
scoreboard players operation .lock snoeyz.display_time_seconds %= .lock snoeyz.seconds_per_minute
scoreboard players operation .lock snoeyz.display_time_minutes /= .lock snoeyz.seconds_per_minute
execute if score .lock snoeyz.display_time_seconds matches 0..9 if score .lock snoeyz.prop_selection_time matches 0.. run title @p[team=props] actionbar ["","Prop Selection Time Remaining - ",{"score":{"name":".lock","objective":"snoeyz.display_time_minutes"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":".lock","objective":"snoeyz.display_time_seconds"},"color":"gold"}]
execute if score .lock snoeyz.display_time_seconds matches 0..9 if score .lock snoeyz.hiding_time matches 0.. run title @a actionbar ["","Prop Hiding Time Remaining - ",{"score":{"name":".lock","objective":"snoeyz.display_time_minutes"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":".lock","objective":"snoeyz.display_time_seconds"},"color":"gold"}]
execute if score .lock snoeyz.display_time_seconds matches 0..9 if score .lock snoeyz.play_time matches 0.. run title @a actionbar ["","Time Remaining - ",{"score":{"name":".lock","objective":"snoeyz.display_time_minutes"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":".lock","objective":"snoeyz.display_time_seconds"},"color":"gold"}]
execute if score .lock snoeyz.display_time_seconds matches 10.. if score .lock snoeyz.prop_selection_time matches 0.. run title @p[team=props] actionbar ["","Prop Selection Time Remaining - ",{"score":{"name":".lock","objective":"snoeyz.display_time_minutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":".lock","objective":"snoeyz.display_time_seconds"},"color":"gold"}]
execute if score .lock snoeyz.display_time_seconds matches 10.. if score .lock snoeyz.hiding_time matches 0.. run title @a actionbar ["","Prop Hiding Time Remaining - ",{"score":{"name":".lock","objective":"snoeyz.display_time_minutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":".lock","objective":"snoeyz.display_time_seconds"},"color":"gold"}]
execute if score .lock snoeyz.display_time_seconds matches 10.. if score .lock snoeyz.play_time matches 0.. run title @a actionbar ["","Time Remaining - ",{"score":{"name":".lock","objective":"snoeyz.display_time_minutes"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":".lock","objective":"snoeyz.display_time_seconds"},"color":"gold"}]