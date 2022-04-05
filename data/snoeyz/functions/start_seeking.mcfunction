title @p title ["",{"text":"SEEKERS ARE ON THE LOOSE!","color":"dark_aqua"}]
tp @p[team=seekers] -42 67.2 -34

fill -20 200 -20 20 210 20 minecraft:air

give @p[team=seekers] minecraft:snowball

scoreboard players set .lock snoeyz.gamestate 2
scoreboard players operation .lock snoeyz.play_time = .lock snoeyz.options.play_time