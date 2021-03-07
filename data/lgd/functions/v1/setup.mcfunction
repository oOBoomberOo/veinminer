#declare storage lgd:storage

#>
# @internal
#declare objective lgd.var

#>
# @public
#declare objective lgd.input

#>
# @public
#declare objective lgd.result

scoreboard objectives add lgd.var dummy
scoreboard objectives add lgd.input dummy
scoreboard objectives add lgd.result dummy

#>
# @internal
#declare score_holder #const.scaling_factor
scoreboard players set #const.scaling_factor lgd.var 1000