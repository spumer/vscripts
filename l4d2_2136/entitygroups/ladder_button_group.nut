//-------------------------------------------------------
// Autogenerated from 'ladder_button.vmf'
//-------------------------------------------------------
LadderButton <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.ladder_1_model,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.hint_branch,
			EntityGroup.SpawnTables.ladder_1_button,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.hint,
			EntityGroup.SpawnTables.ladder_1_model,
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
			ladder_1_button = 
			{
				SpawnInfo =
				{
					classname = "point_script_use_target"
					model = "ladder_1_model"
					origin = Vector( 0, 0, 16 )
					targetname = "ladder_1_button"
					vscripts = "usetargets/ladder_button"
					connections =
					{
						OnUser1 =
						{
							cmd1 = "!selfKill0.21"
							cmd2 = "!selfDisable0.11"
							cmd3 = "!selfRunScriptCodeBuildLadder()01"
							cmd4 = "ladder_1_modelKill0.21"
							cmd5 = "hintFireUser401"
						}
					}
				}
			}
			ladder_1_model = 
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
					glowcolor = "194 223 94"
					glowrange = "300"
					glowrangemin = "0"
					glowstate = "3"
					LagCompensate = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_vehicles/train_ladder.mdl"
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
					targetname = "ladder_1_model"
					updatechildren = "0"
					origin = Vector( -3.8147e-006, 0, 0 )
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
					hint_caption = "Build the laddder to gain access to the roof"
					hint_color = "255 255 255"
					hint_display_limit = "2"
					hint_forcecaption = "1"
					hint_icon_offscreen = "icon_tip"
					hint_icon_offset = "0"
					hint_icon_onscreen = "use_binding"
					hint_instance_type = "2"
					hint_name = "ladder_button_lesson"
					hint_nooffscreen = "0"
					hint_pulseoption = "0"
					hint_range = "300"
					hint_shakeoption = "0"
					hint_static = "0"
					hint_suppress_rest = "1"
					hint_target = "ladder_1_model"
					hint_timeout = "0"
					targetname = "hint"
					origin = Vector( 8, 16, 42.2918 )
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
					origin = Vector( -7.10297, 18, 42.2918 )
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
					origin = Vector( -7.10297, 18, 42.2918 )
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
} // LadderButton

RegisterEntityGroup( "LadderButton", LadderButton )
