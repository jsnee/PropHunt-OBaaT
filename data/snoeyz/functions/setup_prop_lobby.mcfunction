fill -20 200 -20 20 210 20 minecraft:barrier hollow

setblock 5 202 1 spruce_sign
setblock 4 202 1 spruce_sign
setblock 3 202 1 spruce_sign
setblock 2 202 1 spruce_sign
setblock 1 202 1 spruce_sign
setblock 0 202 1 spruce_sign
setblock -1 202 1 spruce_sign
setblock -2 202 1 spruce_sign
setblock -3 202 1 spruce_sign
setblock -4 202 1 spruce_sign
setblock -5 202 1 spruce_sign

data merge block 5 202 1 {Text2:"{\"text\":\"Amethyst Cluster\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger snoeyz.prop.amethyst_cluster\"}}",GlowingText:1b}
data merge block 4 202 1 {Text2:"{\"text\":\"Anvil\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_anvil\"}}",GlowingText:1b}
data merge block 3 202 1 {Text2:"{\"text\":\"Barrel\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_barrel\"}}",GlowingText:1b}
data merge block 2 202 1 {Text2:"{\"text\":\"Composter\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_composter\"}}",GlowingText:1b}
data merge block 1 202 1 {Text2:"{\"text\":\"Campfire\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_campfire\"}}",GlowingText:1b}
data merge block 0 202 1 {Text2:"{\"text\":\"Candle\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_candle\"}}",GlowingText:1b}
data merge block -1 202 1 {Text2:"{\"text\":\"Crafting Table\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_crafting_table\"}}",GlowingText:1b}
data merge block -2 202 1 {Text2:"{\"text\":\"Flowering Azalea\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_flowering_azalea\"}}",GlowingText:1b}
data merge block -3 202 1 {Text2:"{\"text\":\"Iron Trapdoor\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_iron_trapdoor\"}}",GlowingText:1b}
data merge block -4 202 1 {Text2:"{\"text\":\"Lantern\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_lantern\"}}",GlowingText:1b}
data merge block -5 202 1 {Text2:"{\"text\":\"Torch\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function snoeyz:trigger_prop_torch\"}}",GlowingText:1b}

tp @a[team=props] 0 201 10 0 0

#setup seeker waiting room
fill -20 200 0 20 210 0 minecraft:black_concrete

tp @a[team=seekers] 0 201 -10 0 0

scoreboard players operation .lock snoeyz.prop_selection_time = .lock snoeyz.options.prop_selection_time
scoreboard players set .lock snoeyz.gamestate 0

scoreboard players enable @a[team=props] snoeyz.prop.amethyst_cluster
scoreboard players enable @a[team=props] snoeyz.prop.anvil
scoreboard players enable @a[team=props] snoeyz.prop.barrel
scoreboard players enable @a[team=props] snoeyz.prop.campfire
scoreboard players enable @a[team=props] snoeyz.prop.candle
scoreboard players enable @a[team=props] snoeyz.prop.composter
scoreboard players enable @a[team=props] snoeyz.prop.crafting_table
scoreboard players enable @a[team=props] snoeyz.prop.flowering_azaleas
scoreboard players enable @a[team=props] snoeyz.prop.iron_trapdoor
scoreboard players enable @a[team=props] snoeyz.prop.lantern
scoreboard players enable @a[team=props] snoeyz.prop.torch