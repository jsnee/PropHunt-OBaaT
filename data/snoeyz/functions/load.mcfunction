setblock 0 0 0 minecraft:air
setblock 0 0 0 minecraft:shulker_box{Items:[{Slot:0b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:0b}},{Slot:1b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:1b}},{Slot:2b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:2b}},{Slot:3b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:3b}},{Slot:4b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:4b}},{Slot:5b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:5b}},{Slot:6b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:6b}},{Slot:7b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:7b}},{Slot:8b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:8b}},{Slot:9b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:9b}},{Slot:10b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:10b}},{Slot:11b,id:"minecraft:barrel",Count:1b,tag:{ProphuntDisguise:11b}}]}

scoreboard objectives add snoeyz.gamestate dummy "Prop Hunt: Game State"
scoreboard players set .lock snoeyz.gamestate 0
scoreboard objectives add snoeyz.prop_selection_time dummy "Prop Hunt: Prop Selection Time"
scoreboard players set .lock snoeyz.prop_selection_time -1
scoreboard objectives add snoeyz.display_time_minutes dummy "Prop Hunt: Display Time Minutes"
scoreboard players set .lock snoeyz.display_time_minutes -1
scoreboard objectives add snoeyz.display_time_seconds dummy "Prop Hunt: Display Time Seconds"
scoreboard players set .lock snoeyz.display_time_seconds -1
scoreboard objectives add snoeyz.hiding_time dummy "Prop Hunt: Hiding Time"
scoreboard players set .lock snoeyz.hiding_time -1
scoreboard objectives add snoeyz.play_time dummy "Prop Hunt: Play Time"
scoreboard players set .lock snoeyz.play_time -1
scoreboard objectives add snoeyz.props_remaining dummy "Prop Hunt: Props Remaining"
scoreboard players set .lock snoeyz.props_remaining 0
scoreboard objectives add seeker_shot_cooldown dummy "Prop Hunt: Seeker Shot Cooldown"
setworldspawn 0 201 0
function snoeyz:create_teams

gamerule doMobSpawning false


scoreboard objectives add snoeyz.ticks_per_second dummy "Prop Hunt: Ticks Per Second"
scoreboard objectives add snoeyz.seconds_per_minute dummy "Prop Hunt: Seconds Per Minute"
scoreboard players set .lock snoeyz.ticks_per_second 20
scoreboard players set .lock snoeyz.seconds_per_minute 60

scoreboard objectives remove prophunt_new_game
scoreboard objectives add prophunt_new_game trigger "Prop Hunt: Trigger New Game"
scoreboard players enable @a prophunt_new_game

scoreboard objectives add snoeyz.options.prop_selection_time dummy "Prop Hunt Options: Prop Selection Time"
scoreboard players set .lock snoeyz.options.prop_selection_time 600
scoreboard objectives add snoeyz.options.hiding_time dummy "Prop Hunt Options: Hiding Time"
scoreboard players set .lock snoeyz.options.hiding_time 1200
scoreboard objectives add snoeyz.options.play_time dummy "Prop Hunt Options: Play Time"
scoreboard players set .lock snoeyz.options.play_time 24000
scoreboard objectives add snoeyz.options.infect_mode dummy "Prop Hunt Options: Infect mode"
scoreboard players set .lock snoeyz.options.infect_mode 1

team empty props
team empty seekers