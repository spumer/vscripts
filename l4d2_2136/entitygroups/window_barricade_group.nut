//-------------------------------------------------------
// Autogenerated from 'window_barricade.vmf'
//-------------------------------------------------------
WindowBarricade <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.button,
			EntityGroup.SpawnTables.boards_upgrade_02,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.boards_build_snd_2,
			EntityGroup.SpawnTables.hint_branch_barricaded,
			EntityGroup.SpawnTables.unnamed2,
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.boards_build_snd_1,
			EntityGroup.SpawnTables.template_boards_upgrade_3,
			EntityGroup.SpawnTables.hint_branch,
			EntityGroup.SpawnTables.relay_build_sounds,
			EntityGroup.SpawnTables.use_target,
			EntityGroup.SpawnTables.hint_melee,
			EntityGroup.SpawnTables.hint,
			EntityGroup.SpawnTables.relay_build_barricade,
			EntityGroup.SpawnTables.button,
			EntityGroup.SpawnTables.trigger_reset_relay,
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
			template_boards_upgrade_3 = 
			{
				SpawnInfo =
				{
					classname = "point_script_template"
					spawnflags = "2"
					targetname = "template_boards_upgrade_3"
					Template01 = "boards_upgrade_02"
					origin = Vector( 2, 16, 1 )
					connections =
					{
						OnEntitySpawned =
						{
							cmd1 = "boards_upgrade_02Sethealth25000-1"
						}
					}
				}
			}
			relay_build_barricade = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "relay_build_barricade"
					origin = Vector( 1, 0, 1 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "template_boards_upgrade_3ForceSpawn0.1-1"
							cmd2 = "boards_upgrade_02Kill0-1"
							cmd3 = "relay_build_soundsTrigger0-1"
							cmd4 = "hintFireUser401"
						}
					}
				}
			}
			use_target = 
			{
				SpawnInfo =
				{
					classname = "point_script_use_target"
					model = "button"
					origin = Vector( 5, 0, 28 )
					targetname = "use_target"
					vscripts = "usetargets/window"
					connections =
					{
						OnUser1 =
						{
							cmd1 = "relay_build_barricadeTrigger0-1"
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
					disableshadows = "1"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "0.5"
					glowcolor = "103 146 14"
					glowrange = "160"
					glowrangemin = "0"
					glowstate = "3"
					LagCompensate = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_buildables/plank_barricade01_button.mdl"
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
					targetname = "button"
					updatechildren = "0"
					origin = Vector( -1, 0, 0 )
				}
			}
			boards_upgrade_02 = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					axis = "0 0 0, 0 0 0"
					body = "0"
					disableshadows = "0"
					distance = "90"
					dmg = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					hardware = "1"
					health = "0"
					model = "models/props_buildables/plank_barricade01.mdl"
					opendir = "0"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "0"
					spawnflags = "6144"
					spawnpos = "0"
					speed = "200"
					targetname = "boards_upgrade_02"
					origin = Vector( 0, 0, 0 )
					connections =
					{
						OnBreak =
						{
							cmd1 = "use_targetRunScriptCodeNeedsRepairs()0-1"
							cmd2 = "hint_meleeFireUser40-1"
						}
					}
				}
			}
			unnamed = 
			{
				SpawnInfo =
				{
					classname = "script_trigger_multiple"
					allowghost = "0"
					allowincap = "0"
					entireteam = "0"
					origin = Vector( 0, 1.5, 47.5 )
					spawnflags = "2"
					StartDisabled = "0"
					wait = "1"
					extent = Vector( 12, 35.5, 56.5 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "use_targetRunScriptCodeWindowBlocked()0-1"
							cmd2 = "trigger_reset_relayTrigger0-1"
						}
						OnEndTouchAll =
						{
							cmd1 = "use_targetRunScriptCodeWindowUnblocked()0-1"
							cmd2 = "trigger_reset_relayCancelPending0-1"
						}
					}
				}
			}
			unnamed1 = 
			{
				SpawnInfo =
				{
					classname = "logic_auto"
					spawnflags = "1"
					origin = Vector( 4, 24, 88 )
					connections =
					{
						OnMapSpawn =
						{
							cmd1 = "relay_build_soundsEnable1-1"
						}
					}
				}
			}
			boards_build_snd_2 = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "Wood.Bullet1Impact"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					spawnflags = "48"
					targetname = "boards_build_snd_2"
					origin = Vector( 4, 0, 56 )
				}
			}
			boards_build_snd_1 = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "Wood.ImpactHard"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					spawnflags = "48"
					targetname = "boards_build_snd_1"
					origin = Vector( 4, 0, 72 )
				}
			}
			relay_build_sounds = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					spawnflags = "0"
					StartDisabled = "1"
					targetname = "relay_build_sounds"
					origin = Vector( 4, 24, 26 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "boards_build_snd_2PlaySound0.1-1"
							cmd2 = "boards_build_snd_2PlaySound0.4-1"
							cmd3 = "boards_build_snd_2PlaySound0.7-1"
							cmd4 = "boards_build_snd_1PlaySound0-1"
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
					hint_caption = "Build barricades to block infected"
					hint_color = "255 255 255"
					hint_display_limit = "2"
					hint_forcecaption = "1"
					hint_icon_offscreen = "icon_tip"
					hint_icon_offset = "0"
					hint_icon_onscreen = "use_binding"
					hint_instance_type = "3"
					hint_name = "window_barricade_lesson"
					hint_nooffscreen = "1"
					hint_pulseoption = "0"
					hint_range = "120"
					hint_shakeoption = "0"
					hint_static = "0"
					hint_suppress_rest = "1"
					hint_target = "button"
					hint_timeout = "5"
					targetname = "hint"
					origin = Vector( -8, 6, 66 )
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
					origin = Vector( -4, -22, 63.5484 )
					connections =
					{
						OnFalse =
						{
							cmd1 = "!selfKill0-1"
							cmd2 = "hintFireUser40-1"
							cmd3 = "hint_meleeFireUser40-1"
						}
						OnTrue =
						{
							cmd1 = "!selfKill0.1-1"
							cmd2 = "hint_branch_barricadedTest0.1-1"
						}
					}
				}
			}
			unnamed2 = 
			{
				SpawnInfo =
				{
					classname = "logic_auto"
					spawnflags = "1"
					origin = Vector( -4, -22, 63.5484 )
					connections =
					{
						OnMapSpawn =
						{
							cmd1 = "hint_branchTest0-1"
						}
					}
				}
			}
			hint_branch_barricaded = 
			{
				SpawnInfo =
				{
					classname = "logic_branch"
					InitialValue = "$barricade_start_on"
					targetname = "hint_branch_barricaded"
					origin = Vector( 8, -22, 63.5484 )
					connections =
					{
						OnFalse =
						{
							cmd1 = "!selfKill0-1"
							cmd2 = "hint_meleeFireUser40-1"
						}
						OnTrue =
						{
							cmd1 = "hintFireUser40-1"
							cmd2 = "!selfKill0.1-1"
						}
					}
				}
			}
			hint_melee = 
			{
				SpawnInfo =
				{
					classname = "env_instructor_hint"
					hint_allow_nodraw_target = "1"
					hint_alphaoption = "0"
					hint_auto_start = "1"
					hint_caption = "Melee weapons can quickly break down barricades"
					hint_color = "255 255 255"
					hint_display_limit = "2"
					hint_forcecaption = "1"
					hint_icon_offscreen = "icon_tip"
					hint_icon_offset = "0"
					hint_icon_onscreen = "icon_tip"
					hint_instance_type = "3"
					hint_name = "window_barricade_lesson"
					hint_nooffscreen = "1"
					hint_pulseoption = "0"
					hint_range = "130"
					hint_shakeoption = "0"
					hint_static = "0"
					hint_suppress_rest = "1"
					hint_target = "button"
					hint_timeout = "10"
					targetname = "hint_melee"
					origin = Vector( -8, 8, 64 )
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
			trigger_reset_relay = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					spawnflags = "0"
					targetname = "trigger_reset_relay"
					origin = Vector( 4, 24, 67.8778 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "use_targetRunScriptCodeWindowUnblocked()5-1"
						}
					}
				}
			}
		} // SpawnTables

		ReplaceParmDefaults =
		{
			"$barricade_start_on" : "0"
			"$button_start_off" : "0"
			"$show_hint" : "0"
		}
	} // EntityGroup
} // WindowBarricade

RegisterEntityGroup( "WindowBarricade", WindowBarricade )
