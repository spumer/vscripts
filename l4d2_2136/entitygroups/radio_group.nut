//-------------------------------------------------------
// Autogenerated from 'radio.vmf'
//-------------------------------------------------------
Radio <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.radio,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.hint_branch,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.hint,
			EntityGroup.SpawnTables.door,
			EntityGroup.SpawnTables.radio,
		]
		return spawnEnts
	}

	//-------------------------------------------------------
	function GetEntityGroup()
	{
		return EntityGroup
	}

	//-------------------------------------------------------
	// Table of entities that make up this group
	//-------------------------------------------------------
	EntityGroup =
	{
		SpawnTables =
		{
			radio = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "37 171 14"
					glowrange = "172"
					glowrangemin = "0"
					glowstate = "3"
					LagCompensate = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props/terror/hamradio.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "radio"
					updatechildren = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			door = 
			{
				SpawnInfo =
				{
					classname = "func_door_rotating"
					always_fire_blocked_outputs = "0"
					angles = Vector( 0, 0, 0 )
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					distance = "90"
					dmg = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					health = "0"
					ignoredebris = "0"
					lip = "0"
					locked_sentence = "0"
					loopmovesound = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					origin = Vector( 10, -1, 8 )
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					solidbsp = "0"
					spawnflags = "4412"
					spawnpos = "0"
					speed = "100"
					targetname = "door"
					unlocked_sentence = "0"
					wait = "4"
					connections =
					{
						OnOpen =
						{
							cmd1 = "radioRunScriptCodeUsed()0-1"
							cmd2 = "radioStopGlowing0-1"
							cmd3 = "!selfKill0-1"
							cmd4 = "hintFireUser40-1"
						}
					}
				}
			}
			hint = 
			{
				SpawnInfo =
				{
					classname = "env_instructor_hint"
					hint_allow_nodraw_target = "1"
					hint_alphaoption = "0"
					hint_auto_start = "1"
					hint_binding = "+use"
					hint_caption = "Use radio to summon the rescue chopper"
					hint_color = "255 255 255"
					hint_display_limit = "0"
					hint_forcecaption = "1"
					hint_icon_offscreen = "icon_alert_red"
					hint_icon_offset = "0"
					hint_icon_onscreen = "use_binding"
					hint_instance_type = "2"
					hint_name = "radio_lesson"
					hint_nooffscreen = "0"
					hint_pulseoption = "0"
					hint_range = "95"
					hint_shakeoption = "0"
					hint_static = "0"
					hint_suppress_rest = "1"
					hint_target = "radio"
					hint_timeout = "0"
					targetname = "hint"
					origin = Vector( 0, 0, 18 )
					connections =
					{
						OnUser4 =
						{
							cmd1 = "!selfEndHint0-1"
							cmd2 = "!selfKill0.01-1"
						}
					}
				}
			}
			hint_branch = 
			{
				SpawnInfo =
				{
					classname = "logic_branch"
					InitialValue = "$show_hint"
					targetname = "hint_branch"
					origin = Vector( 0, 0, 18 )
					connections =
					{
						OnFalse =
						{
							cmd1 = "!selfKill0-1"
							cmd2 = "hintFireUser40-1"
						}
						OnTrue =
						{
							cmd1 = "!selfKill0.1-1"
						}
					}
				}
			}
			unnamed = 
			{
				SpawnInfo =
				{
					classname = "logic_auto"
					spawnflags = "1"
					origin = Vector( 0, 0, 18 )
					connections =
					{
						OnMapSpawn =
						{
							cmd1 = "hint_branchTest0-1"
						}
					}
				}
			}
		} // SpawnTables

		ReplaceParmDefaults =
		{
			"$show_hint" : "0"
		}
	} // EntityGroup
} // Radio

RegisterEntityGroup( "Radio", Radio )
