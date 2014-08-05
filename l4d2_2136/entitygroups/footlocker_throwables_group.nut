//-------------------------------------------------------
// Autogenerated from 'footlocker_throwables.vmf'
//-------------------------------------------------------
FootlockerThrowables <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.footlocker,
			EntityGroup.SpawnTables.button,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.button_footlocker,
			EntityGroup.SpawnTables.template_throwables,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.footlocker,
			EntityGroup.SpawnTables.hint_branch,
			EntityGroup.SpawnTables.hint,
			EntityGroup.SpawnTables.button,
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
			footlocker = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "1"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					LagCompensate = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_waterfront/footlocker01.mdl"
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
					targetname = "footlocker"
					updatechildren = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			throwable = 
			{
				SpawnInfo =
				{
					classname = "weapon_molotov_spawn"
					angles = Vector( 0, 0, 0 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "throwable"
					origin = Vector( 0, 9, -6 )
				}
			}
			throwable1 = 
			{
				SpawnInfo =
				{
					classname = "weapon_molotov_spawn"
					angles = Vector( 0, 0, 0 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "throwable"
					origin = Vector( 0, 4, -6 )
				}
			}
			throwable2 = 
			{
				SpawnInfo =
				{
					classname = "weapon_pipe_bomb_spawn"
					angles = Vector( 0, 0, 0 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "throwable"
					origin = Vector( -1, -5, -6 )
				}
			}
			throwable3 = 
			{
				SpawnInfo =
				{
					classname = "weapon_pipe_bomb_spawn"
					angles = Vector( 0, 0, 0 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					targetname = "throwable"
					origin = Vector( 0, -14, -6 )
				}
			}
			template_throwables = 
			{
				SpawnInfo =
				{
					classname = "point_script_template"
					spawnflags = "2"
					targetname = "template_throwables"
					Template01 = "throwable"
					origin = Vector( 1, -2, 8 )
					connections =
					{
						OnEntitySpawned =
						{
							cmd1 = "!selfKill0-1"
						}
					}
				}
			}
			button = 
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
					glowcolor = "121 202 0"
					glowrange = "240"
					glowrangemin = "0"
					glowstate = "3"
					LagCompensate = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_buildables/buildable_button.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					targetname = "button"
					updatechildren = "0"
					origin = Vector( 16, 0, -4 )
					connections =
					{
						OnUser1 =
						{
							cmd1 = "!selfEnable0.5-1"
							cmd2 = "!selfDisable0-1"
						}
					}
				}
			}
			button_footlocker = 
			{
				SpawnInfo =
				{
					classname = "point_script_use_target"
					model = "button"
					origin = Vector( 1, 15, 8 )
					targetname = "button_footlocker"
					vscripts = "usetargets/throwable_locker"
					connections =
					{
						OnUser1 =
						{
							cmd1 = "footlockerSetAnimationopening0.11"
							cmd2 = "template_throwablesForceSpawn01"
							cmd3 = "buttonKill0.11"
							cmd4 = "hintFireUser401"
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
					hint_caption = "You can spend 2 supplies on this or save for something else..."
					hint_color = "255 255 255"
					hint_display_limit = "2"
					hint_forcecaption = "1"
					hint_icon_offscreen = "icon_tip"
					hint_icon_offset = "0"
					hint_icon_onscreen = "use_binding"
					hint_instance_type = "2"
					hint_name = "footlocker_throwables_lesson"
					hint_nooffscreen = "1"
					hint_pulseoption = "0"
					hint_range = "120"
					hint_shakeoption = "0"
					hint_static = "0"
					hint_suppress_rest = "1"
					hint_target = "footlocker"
					hint_timeout = "5"
					targetname = "hint"
					origin = Vector( 0, -16, 21 )
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
					origin = Vector( 0, -16, 21 )
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
					origin = Vector( 0, -16, 21 )
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
} // FootlockerThrowables

RegisterEntityGroup( "FootlockerThrowables", FootlockerThrowables )
