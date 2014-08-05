//-------------------------------------------------------
// Autogenerated from 'gascan_helicopter.vmf'
//-------------------------------------------------------
GascanHelicopter <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.gascan_drop_chopper,
			EntityGroup.SpawnTables.gascan_drop_chopper_can,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.gascan_drop_chopper_train_path_6,
			EntityGroup.SpawnTables.gascan_drop_chopper_can_drop_counter,
			EntityGroup.SpawnTables.gascan_drop_chopper_can_drop_destructor,
			EntityGroup.SpawnTables.gascan_drop_chopper_script,
			EntityGroup.SpawnTables.gascan_drop_chopper_train_path_2,
			EntityGroup.SpawnTables.gascan_drop_chopper_train_path_1,
			EntityGroup.SpawnTables.gascan_drop_chopper_train_path_7,
			EntityGroup.SpawnTables.gascan_drop_chopper_start_relay,
			EntityGroup.SpawnTables.gascan_drop_chopper_template,
			EntityGroup.SpawnTables.gascan_drop_chopper_train_path_3,
			EntityGroup.SpawnTables.gascan_drop_chopper_sound,
			EntityGroup.SpawnTables.gascan_drop_chopper_can_drop_timer,
			EntityGroup.SpawnTables.gascan_drop_chopper_train_path_5,
			EntityGroup.SpawnTables.gascan_drop_chopper_can_template,
			EntityGroup.SpawnTables.gascan_drop_chopper_train_path_4,
			EntityGroup.SpawnTables.gascan_drop_chopper_can_drop_case,
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
			gascan_drop_chopper = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 270, 0 )
					body = "0"
					DefaultAnim = "landed"
					disablereceiveshadows = "0"
					disableshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "3250"
					fademindist = "3050"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowstate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/hybridphysx/river_helicoptor.mdl"
					parentname = "gascan_drop_chopper_train"
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
					StartDisabled = "0"
					targetname = "gascan_drop_chopper"
					updatechildren = "0"
					origin = Vector( 6.81641, -3.82269, -19.9991 )
				}
			}
			gascan_drop_chopper_train_path_1 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "gascan_drop_chopper_train_path_2"
					targetname = "gascan_drop_chopper_train_path_1"
					origin = Vector( 188, -412.004, 128 )
				}
			}
			gascan_drop_chopper_train_path_2 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "gascan_drop_chopper_train_path_3"
					targetname = "gascan_drop_chopper_train_path_2"
					origin = Vector( 808, -412.004, 128 )
				}
			}
			gascan_drop_chopper_train_path_3 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "gascan_drop_chopper_train_path_4"
					targetname = "gascan_drop_chopper_train_path_3"
					origin = Vector( 2280, -412.004, 128 )
					connections =
					{
						OnPass =
						{
							cmd1 = "gascan_drop_chopper_can_drop_timerEnable0-1"
						}
					}
				}
			}
			gascan_drop_chopper_train_path_4 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "gascan_drop_chopper_train_path_5"
					targetname = "gascan_drop_chopper_train_path_4"
					origin = Vector( 4456, -412.004, 128 )
				}
			}
			gascan_drop_chopper_train_path_5 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "gascan_drop_chopper_train_path_6"
					targetname = "gascan_drop_chopper_train_path_5"
					origin = Vector( 5848, -412.004, 128 )
				}
			}
			gascan_drop_chopper_train_path_6 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					target = "gascan_drop_chopper_train_path_7"
					targetname = "gascan_drop_chopper_train_path_6"
					origin = Vector( 6472, -412.004, 128 )
					connections =
					{
						OnPass =
						{
							cmd1 = "!activatorKill0.05-1"
							cmd2 = "gascan_drop_chopper_scriptRunScriptCodeg_RoundState.GascanHelicopter.HelicopterEnd()0-1"
						}
					}
				}
			}
			gascan_drop_chopper_start_relay = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					spawnflags = "0"
					targetname = "gascan_drop_chopper_start_relay"
					origin = Vector( 188, -412.004, 164 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "gascan_drop_chopper_templateForceSpawn0-1"
							cmd2 = "gascan_drop_chopper_trainStartForward0.2-1"
							cmd3 = "gascan_drop_chopper_soundPlaySound0-1"
						}
					}
				}
			}
			gascan_drop_chopper_template = 
			{
				SpawnInfo =
				{
					classname = "point_script_template"
					spawnflags = "2"
					targetname = "gascan_drop_chopper_template"
					Template01 = "gascan_drop_chopper"
					Template02 = "gascan_drop_chopper_train"
					Template03 = "gascan_drop_chopper_can_maker_1"
					Template04 = "gascan_drop_chopper_can_maker_2"
					Template05 = "gascan_drop_chopper_can_maker_3"
					Template06 = "gascan_drop_chopper_can_maker_4"
					origin = Vector( 188, -412.004, 182 )
				}
			}
			gascan_drop_chopper_sound = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "c2.outro.chopperleave"
					pitch = "100"
					pitchstart = "100"
					radius = "4779"
					spawnflags = "48"
					targetname = "gascan_drop_chopper_sound"
					origin = Vector( 188, -412.004, 146.746 )
				}
			}
			gascan_drop_chopper_train_path_7 = 
			{
				SpawnInfo =
				{
					classname = "path_track"
					angles = Vector( 0, 0, 0 )
					orientationtype = "1"
					targetname = "gascan_drop_chopper_train_path_7"
					origin = Vector( 6520, -412.004, 128 )
				}
			}
			gascan_drop_chopper_can_maker_1 = 
			{
				SpawnInfo =
				{
					classname = "env_entity_maker"
					angles = Vector( 0, 0, 0 )
					EntityTemplate = "gascan_drop_chopper_can_template"
					parentname = "gascan_drop_chopper_train"
					PostSpawnDirection = "0 290 0"
					PostSpawnDirectionVariance = "20"
					PostSpawnSpeed = "200"
					spawnflags = "0"
					targetname = "gascan_drop_chopper_can_maker_1"
					origin = Vector( 214.816, -430.823, -43.7193 )
				}
			}
			gascan_drop_chopper_can_template = 
			{
				SpawnInfo =
				{
					classname = "point_script_template"
					spawnflags = "2"
					targetname = "gascan_drop_chopper_can_template"
					Template01 = "gascan_drop_chopper_can"
					origin = Vector( 238.526, -402.45, -50.7193 )
				}
			}
			gascan_drop_chopper_can = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 0 )
					BreakableType = "0"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "3"
					inertiaScale = "1.0"
					massScale = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/props_junk/gascan001a.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "256"
					targetname = "gascan_drop_chopper_can"
					origin = Vector( 235.276, -416.004, -48 )
				}
			}
			gascan_drop_chopper_can_maker_2 = 
			{
				SpawnInfo =
				{
					classname = "env_entity_maker"
					angles = Vector( 0, 0, 0 )
					EntityTemplate = "gascan_drop_chopper_can_template"
					parentname = "gascan_drop_chopper_train"
					PostSpawnDirection = "0 308 0"
					PostSpawnDirectionVariance = "20"
					PostSpawnSpeed = "200"
					spawnflags = "0"
					targetname = "gascan_drop_chopper_can_maker_2"
					origin = Vector( 278.816, -414.823, -43.7193 )
				}
			}
			gascan_drop_chopper_can_maker_4 = 
			{
				SpawnInfo =
				{
					classname = "env_entity_maker"
					angles = Vector( 0, 0, 0 )
					EntityTemplate = "gascan_drop_chopper_can_template"
					parentname = "gascan_drop_chopper_train"
					PostSpawnDirection = "0 117 0"
					PostSpawnDirectionVariance = "20"
					PostSpawnSpeed = "200"
					spawnflags = "0"
					targetname = "gascan_drop_chopper_can_maker_4"
					origin = Vector( 198.816, -382.823, -43.7193 )
				}
			}
			gascan_drop_chopper_can_maker_3 = 
			{
				SpawnInfo =
				{
					classname = "env_entity_maker"
					angles = Vector( 0, 0, 0 )
					EntityTemplate = "gascan_drop_chopper_can_template"
					parentname = "gascan_drop_chopper_train"
					PostSpawnDirection = "0 99 0"
					PostSpawnDirectionVariance = "20"
					PostSpawnSpeed = "200"
					spawnflags = "0"
					targetname = "gascan_drop_chopper_can_maker_3"
					origin = Vector( 262.816, -350.823, -43.7193 )
				}
			}
			gascan_drop_chopper_can_drop_timer = 
			{
				SpawnInfo =
				{
					classname = "logic_timer"
					LowerRandomBound = ".4"
					spawnflags = "0"
					StartDisabled = "1"
					targetname = "gascan_drop_chopper_can_drop_timer"
					UpperRandomBound = "1.3"
					UseRandomTime = "1"
					origin = Vector( 220.116, -406.531, 29.2807 )
					connections =
					{
						OnTimer =
						{
							cmd1 = "gascan_drop_chopper_can_drop_casePickRandomShuffle0-1"
							cmd2 = "gascan_drop_chopper_can_drop_counterAdd10-1"
						}
					}
				}
			}
			gascan_drop_chopper_can_drop_case = 
			{
				SpawnInfo =
				{
					classname = "logic_case"
					targetname = "gascan_drop_chopper_can_drop_case"
					origin = Vector( 246.816, -404.24, 29.2807 )
					connections =
					{
						OnCase04 =
						{
							cmd1 = "gascan_drop_chopper_can_maker_4ForceSpawn0-1"
						}
						OnCase02 =
						{
							cmd1 = "gascan_drop_chopper_can_maker_2ForceSpawn0-1"
						}
						OnCase01 =
						{
							cmd1 = "gascan_drop_chopper_can_maker_1ForceSpawn0-1"
						}
						OnCase03 =
						{
							cmd1 = "gascan_drop_chopper_can_maker_3ForceSpawn0-1"
						}
					}
				}
			}
			gascan_drop_chopper_train = 
			{
				SpawnInfo =
				{
					classname = "func_tracktrain"
					bank = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					dmg = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					height = "4"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					MoveSoundMaxPitch = "200"
					MoveSoundMaxTime = "0"
					MoveSoundMinPitch = "60"
					MoveSoundMinTime = "0"
					orientationtype = "1"
					origin = Vector( 188, -412, 103 )
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					spawnflags = "523"
					speed = "0"
					startspeed = "500"
					target = "gascan_drop_chopper_train_path_1"
					targetname = "gascan_drop_chopper_train"
					velocitytype = "0"
					volume = "10"
					wheels = "50"
				}
			}
			gascan_drop_chopper_script = 
			{
				SpawnInfo =
				{
					classname = "logic_script"
					Group00 = "gascan_drop_chopper_start_relay"
					targetname = "gascan_drop_chopper_script"
					vscripts = "gascan_helicopter"
					origin = Vector( 198.512, -368.004, 48 )
				}
			}
			gascan_drop_chopper_can_drop_destructor = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					targetname = "gascan_drop_chopper_can_drop_destructor"
					origin = Vector( 224, -384.004, 48 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "gascan_drop_chopper_can_drop_caseKill0-1"
							cmd2 = "gascan_drop_chopper_can_drop_timerKill0-1"
						}
					}
				}
			}
			gascan_drop_chopper_can_drop_counter = 
			{
				SpawnInfo =
				{
					classname = "math_counter"
					max = "4"
					targetname = "gascan_drop_chopper_can_drop_counter"
					origin = Vector( 223.197, -389.823, 29.2807 )
					connections =
					{
						OnHitMax =
						{
							cmd1 = "gascan_drop_chopper_can_drop_timerDisable0-1"
							cmd2 = "gascan_drop_chopper_can_drop_counterSetValue00-1"
						}
					}
				}
			}
		} // SpawnTables
	} // EntityGroup
} // GascanHelicopter

RegisterEntityGroup( "GascanHelicopter", GascanHelicopter )
