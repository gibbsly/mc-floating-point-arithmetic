#writing from input
data modify storage arr_math:main v1 set from storage arr_math:in var1
data modify storage arr_math:main v2 set from storage arr_math:in var2
data modify storage arr_math:main out set value {num:[],dec:0,base:0,pol:1}

#checks to see if base values are the same for both numbers
execute store result score v1base= arr_math.main run data get storage arr_math:main v1.base
execute store result score v2base= arr_math.main run data get storage arr_math:main v2.base
execute if score v1base= arr_math.main = v2base= arr_math.main run function arr_math:ops/add_check

scoreboard players reset * arr_math.main