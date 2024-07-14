# Generated with MC-Build

# reset advancement
advancement revoke @s only nightrunner:used_heartfruit_plus
# Apply temporary health
# Store current health
execute as @s store result score @s Nightrunner_CheckCurrentAbsorptionAmount run data get entity @s AbsorptionAmount
# Add temp_health on top of the current temp health
scoreboard players add @s Nightrunner_CheckCurrentAbsorptionAmount 3
# Check if the new temp health is higher than the max_addition
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 6.. run scoreboard players set @s Nightrunner_CheckCurrentAbsorptionAmount 6
# Give the player lvl 100 absorption effect
effect give @s minecraft:absorption 1 100 true
# Set the players max absorption to the correct amount
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 1 run attribute @s minecraft:generic.max_absorption base set 1
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 2 run attribute @s minecraft:generic.max_absorption base set 2
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 3 run attribute @s minecraft:generic.max_absorption base set 3
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 4 run attribute @s minecraft:generic.max_absorption base set 4
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 5 run attribute @s minecraft:generic.max_absorption base set 5
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 6 run attribute @s minecraft:generic.max_absorption base set 6
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 7 run attribute @s minecraft:generic.max_absorption base set 7
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 8 run attribute @s minecraft:generic.max_absorption base set 8
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 9 run attribute @s minecraft:generic.max_absorption base set 9
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 10 run attribute @s minecraft:generic.max_absorption base set 10
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 11 run attribute @s minecraft:generic.max_absorption base set 11
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 12 run attribute @s minecraft:generic.max_absorption base set 12
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 13 run attribute @s minecraft:generic.max_absorption base set 13
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 14 run attribute @s minecraft:generic.max_absorption base set 14
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 15 run attribute @s minecraft:generic.max_absorption base set 15
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 16 run attribute @s minecraft:generic.max_absorption base set 16
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 17 run attribute @s minecraft:generic.max_absorption base set 17
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 18 run attribute @s minecraft:generic.max_absorption base set 18
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 19 run attribute @s minecraft:generic.max_absorption base set 19
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 20 run attribute @s minecraft:generic.max_absorption base set 20
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 21 run attribute @s minecraft:generic.max_absorption base set 21
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 22 run attribute @s minecraft:generic.max_absorption base set 22
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 23 run attribute @s minecraft:generic.max_absorption base set 23
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 24 run attribute @s minecraft:generic.max_absorption base set 24
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 25 run attribute @s minecraft:generic.max_absorption base set 25
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 26 run attribute @s minecraft:generic.max_absorption base set 26
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 27 run attribute @s minecraft:generic.max_absorption base set 27
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 28 run attribute @s minecraft:generic.max_absorption base set 28
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 29 run attribute @s minecraft:generic.max_absorption base set 29
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 30 run attribute @s minecraft:generic.max_absorption base set 30
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 31 run attribute @s minecraft:generic.max_absorption base set 31
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 32 run attribute @s minecraft:generic.max_absorption base set 32
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 33 run attribute @s minecraft:generic.max_absorption base set 33
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 34 run attribute @s minecraft:generic.max_absorption base set 34
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 35 run attribute @s minecraft:generic.max_absorption base set 35
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 36 run attribute @s minecraft:generic.max_absorption base set 36
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 37 run attribute @s minecraft:generic.max_absorption base set 37
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 38 run attribute @s minecraft:generic.max_absorption base set 38
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 39 run attribute @s minecraft:generic.max_absorption base set 39
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 40 run attribute @s minecraft:generic.max_absorption base set 40
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 41 run attribute @s minecraft:generic.max_absorption base set 41
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 42 run attribute @s minecraft:generic.max_absorption base set 42
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 43 run attribute @s minecraft:generic.max_absorption base set 43
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 44 run attribute @s minecraft:generic.max_absorption base set 44
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 45 run attribute @s minecraft:generic.max_absorption base set 45
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 46 run attribute @s minecraft:generic.max_absorption base set 46
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 47 run attribute @s minecraft:generic.max_absorption base set 47
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 48 run attribute @s minecraft:generic.max_absorption base set 48
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 49 run attribute @s minecraft:generic.max_absorption base set 49
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 50 run attribute @s minecraft:generic.max_absorption base set 50
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 51 run attribute @s minecraft:generic.max_absorption base set 51
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 52 run attribute @s minecraft:generic.max_absorption base set 52
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 53 run attribute @s minecraft:generic.max_absorption base set 53
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 54 run attribute @s minecraft:generic.max_absorption base set 54
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 55 run attribute @s minecraft:generic.max_absorption base set 55
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 56 run attribute @s minecraft:generic.max_absorption base set 56
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 57 run attribute @s minecraft:generic.max_absorption base set 57
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 58 run attribute @s minecraft:generic.max_absorption base set 58
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 59 run attribute @s minecraft:generic.max_absorption base set 59
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 60 run attribute @s minecraft:generic.max_absorption base set 60
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 61 run attribute @s minecraft:generic.max_absorption base set 61
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 62 run attribute @s minecraft:generic.max_absorption base set 62
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 63 run attribute @s minecraft:generic.max_absorption base set 63
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 64 run attribute @s minecraft:generic.max_absorption base set 64
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 65 run attribute @s minecraft:generic.max_absorption base set 65
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 66 run attribute @s minecraft:generic.max_absorption base set 66
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 67 run attribute @s minecraft:generic.max_absorption base set 67
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 68 run attribute @s minecraft:generic.max_absorption base set 68
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 69 run attribute @s minecraft:generic.max_absorption base set 69
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 70 run attribute @s minecraft:generic.max_absorption base set 70
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 71 run attribute @s minecraft:generic.max_absorption base set 71
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 72 run attribute @s minecraft:generic.max_absorption base set 72
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 73 run attribute @s minecraft:generic.max_absorption base set 73
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 74 run attribute @s minecraft:generic.max_absorption base set 74
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 75 run attribute @s minecraft:generic.max_absorption base set 75
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 76 run attribute @s minecraft:generic.max_absorption base set 76
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 77 run attribute @s minecraft:generic.max_absorption base set 77
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 78 run attribute @s minecraft:generic.max_absorption base set 78
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 79 run attribute @s minecraft:generic.max_absorption base set 79
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 80 run attribute @s minecraft:generic.max_absorption base set 80
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 81 run attribute @s minecraft:generic.max_absorption base set 81
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 82 run attribute @s minecraft:generic.max_absorption base set 82
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 83 run attribute @s minecraft:generic.max_absorption base set 83
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 84 run attribute @s minecraft:generic.max_absorption base set 84
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 85 run attribute @s minecraft:generic.max_absorption base set 85
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 86 run attribute @s minecraft:generic.max_absorption base set 86
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 87 run attribute @s minecraft:generic.max_absorption base set 87
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 88 run attribute @s minecraft:generic.max_absorption base set 88
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 89 run attribute @s minecraft:generic.max_absorption base set 89
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 90 run attribute @s minecraft:generic.max_absorption base set 90
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 91 run attribute @s minecraft:generic.max_absorption base set 91
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 92 run attribute @s minecraft:generic.max_absorption base set 92
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 93 run attribute @s minecraft:generic.max_absorption base set 93
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 94 run attribute @s minecraft:generic.max_absorption base set 94
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 95 run attribute @s minecraft:generic.max_absorption base set 95
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 96 run attribute @s minecraft:generic.max_absorption base set 96
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 97 run attribute @s minecraft:generic.max_absorption base set 97
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 98 run attribute @s minecraft:generic.max_absorption base set 98
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 99 run attribute @s minecraft:generic.max_absorption base set 99
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 100 run attribute @s minecraft:generic.max_absorption base set 100
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 101 run attribute @s minecraft:generic.max_absorption base set 101
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 102 run attribute @s minecraft:generic.max_absorption base set 102
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 103 run attribute @s minecraft:generic.max_absorption base set 103
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 104 run attribute @s minecraft:generic.max_absorption base set 104
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 105 run attribute @s minecraft:generic.max_absorption base set 105
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 106 run attribute @s minecraft:generic.max_absorption base set 106
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 107 run attribute @s minecraft:generic.max_absorption base set 107
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 108 run attribute @s minecraft:generic.max_absorption base set 108
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 109 run attribute @s minecraft:generic.max_absorption base set 109
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 110 run attribute @s minecraft:generic.max_absorption base set 110
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 111 run attribute @s minecraft:generic.max_absorption base set 111
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 112 run attribute @s minecraft:generic.max_absorption base set 112
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 113 run attribute @s minecraft:generic.max_absorption base set 113
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 114 run attribute @s minecraft:generic.max_absorption base set 114
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 115 run attribute @s minecraft:generic.max_absorption base set 115
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 116 run attribute @s minecraft:generic.max_absorption base set 116
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 117 run attribute @s minecraft:generic.max_absorption base set 117
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 118 run attribute @s minecraft:generic.max_absorption base set 118
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 119 run attribute @s minecraft:generic.max_absorption base set 119
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 120 run attribute @s minecraft:generic.max_absorption base set 120
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 121 run attribute @s minecraft:generic.max_absorption base set 121
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 122 run attribute @s minecraft:generic.max_absorption base set 122
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 123 run attribute @s minecraft:generic.max_absorption base set 123
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 124 run attribute @s minecraft:generic.max_absorption base set 124
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 125 run attribute @s minecraft:generic.max_absorption base set 125
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 126 run attribute @s minecraft:generic.max_absorption base set 126
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 127 run attribute @s minecraft:generic.max_absorption base set 127
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 128 run attribute @s minecraft:generic.max_absorption base set 128
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 129 run attribute @s minecraft:generic.max_absorption base set 129
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 130 run attribute @s minecraft:generic.max_absorption base set 130
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 131 run attribute @s minecraft:generic.max_absorption base set 131
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 132 run attribute @s minecraft:generic.max_absorption base set 132
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 133 run attribute @s minecraft:generic.max_absorption base set 133
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 134 run attribute @s minecraft:generic.max_absorption base set 134
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 135 run attribute @s minecraft:generic.max_absorption base set 135
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 136 run attribute @s minecraft:generic.max_absorption base set 136
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 137 run attribute @s minecraft:generic.max_absorption base set 137
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 138 run attribute @s minecraft:generic.max_absorption base set 138
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 139 run attribute @s minecraft:generic.max_absorption base set 139
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 140 run attribute @s minecraft:generic.max_absorption base set 140
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 141 run attribute @s minecraft:generic.max_absorption base set 141
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 142 run attribute @s minecraft:generic.max_absorption base set 142
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 143 run attribute @s minecraft:generic.max_absorption base set 143
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 144 run attribute @s minecraft:generic.max_absorption base set 144
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 145 run attribute @s minecraft:generic.max_absorption base set 145
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 146 run attribute @s minecraft:generic.max_absorption base set 146
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 147 run attribute @s minecraft:generic.max_absorption base set 147
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 148 run attribute @s minecraft:generic.max_absorption base set 148
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 149 run attribute @s minecraft:generic.max_absorption base set 149
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 150 run attribute @s minecraft:generic.max_absorption base set 150
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 151 run attribute @s minecraft:generic.max_absorption base set 151
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 152 run attribute @s minecraft:generic.max_absorption base set 152
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 153 run attribute @s minecraft:generic.max_absorption base set 153
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 154 run attribute @s minecraft:generic.max_absorption base set 154
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 155 run attribute @s minecraft:generic.max_absorption base set 155
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 156 run attribute @s minecraft:generic.max_absorption base set 156
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 157 run attribute @s minecraft:generic.max_absorption base set 157
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 158 run attribute @s minecraft:generic.max_absorption base set 158
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 159 run attribute @s minecraft:generic.max_absorption base set 159
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 160 run attribute @s minecraft:generic.max_absorption base set 160
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 161 run attribute @s minecraft:generic.max_absorption base set 161
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 162 run attribute @s minecraft:generic.max_absorption base set 162
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 163 run attribute @s minecraft:generic.max_absorption base set 163
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 164 run attribute @s minecraft:generic.max_absorption base set 164
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 165 run attribute @s minecraft:generic.max_absorption base set 165
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 166 run attribute @s minecraft:generic.max_absorption base set 166
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 167 run attribute @s minecraft:generic.max_absorption base set 167
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 168 run attribute @s minecraft:generic.max_absorption base set 168
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 169 run attribute @s minecraft:generic.max_absorption base set 169
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 170 run attribute @s minecraft:generic.max_absorption base set 170
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 171 run attribute @s minecraft:generic.max_absorption base set 171
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 172 run attribute @s minecraft:generic.max_absorption base set 172
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 173 run attribute @s minecraft:generic.max_absorption base set 173
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 174 run attribute @s minecraft:generic.max_absorption base set 174
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 175 run attribute @s minecraft:generic.max_absorption base set 175
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 176 run attribute @s minecraft:generic.max_absorption base set 176
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 177 run attribute @s minecraft:generic.max_absorption base set 177
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 178 run attribute @s minecraft:generic.max_absorption base set 178
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 179 run attribute @s minecraft:generic.max_absorption base set 179
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 180 run attribute @s minecraft:generic.max_absorption base set 180
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 181 run attribute @s minecraft:generic.max_absorption base set 181
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 182 run attribute @s minecraft:generic.max_absorption base set 182
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 183 run attribute @s minecraft:generic.max_absorption base set 183
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 184 run attribute @s minecraft:generic.max_absorption base set 184
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 185 run attribute @s minecraft:generic.max_absorption base set 185
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 186 run attribute @s minecraft:generic.max_absorption base set 186
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 187 run attribute @s minecraft:generic.max_absorption base set 187
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 188 run attribute @s minecraft:generic.max_absorption base set 188
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 189 run attribute @s minecraft:generic.max_absorption base set 189
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 190 run attribute @s minecraft:generic.max_absorption base set 190
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 191 run attribute @s minecraft:generic.max_absorption base set 191
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 192 run attribute @s minecraft:generic.max_absorption base set 192
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 193 run attribute @s minecraft:generic.max_absorption base set 193
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 194 run attribute @s minecraft:generic.max_absorption base set 194
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 195 run attribute @s minecraft:generic.max_absorption base set 195
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 196 run attribute @s minecraft:generic.max_absorption base set 196
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 197 run attribute @s minecraft:generic.max_absorption base set 197
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 198 run attribute @s minecraft:generic.max_absorption base set 198
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 199 run attribute @s minecraft:generic.max_absorption base set 199
execute if score @s Nightrunner_CheckCurrentAbsorptionAmount matches 200 run attribute @s minecraft:generic.max_absorption base set 200
# Clear effect to remove the absorption effect and only keep the max absorption
effect clear @s minecraft:absorption
# Set the player score to the correct amount
scoreboard players operation @s Nightrunner_Absorption = @s Nightrunner_CheckCurrentAbsorptionAmount