//-------------------------------------------------------
// Autogenerated from 'resource_locker.vmf'
//-------------------------------------------------------
ResourceLocker <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.resource_locker_1_closed_model,
			EntityGroup.SpawnTables.resource_locker_1_open_model,
			EntityGroup.SpawnTables.resource_locker_1_present_4,
			EntityGroup.SpawnTables.resource_locker_1_present_5,
			EntityGroup.SpawnTables.resource_locker_1_present_3,
			EntityGroup.SpawnTables.resource_locker_1_present_2,
			EntityGroup.SpawnTables.resource_locker_1_present_1,
			EntityGroup.SpawnTables.button_locker,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.button_locker,
			EntityGroup.SpawnTables.usetarget_locker,
			EntityGroup.SpawnTables.button_resource_locker_open_sound1,
			EntityGroup.SpawnTables.button_resource_locker_open_sound,
			EntityGroup.SpawnTables.resource_locker_1_closed_model,
			EntityGroup.SpawnTables.resource_locker_1_present_3,
			EntityGroup.SpawnTables.resource_locker_1_present_4,
			EntityGroup.SpawnTables.button_resource_locker_award_sound,
			EntityGroup.SpawnTables.resource_locker_1_present_1,
			EntityGroup.SpawnTables.resource_locker_1_present_5,
			EntityGroup.SpawnTables.resource_locker_1_present_2,
			EntityGroup.SpawnTables.button_resource_locker_award_relay,
			EntityGroup.SpawnTables.resource_locker_1_open_model,
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
			resource_locker_1_closed_model = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props/cs_militia/footlocker01_closed.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					targetname = "resource_locker_1_closed_model"
					origin = Vector( 0.168735, 0.564598, -1.04904e-005 )
				}
			}
			resource_locker_1_open_model = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props/cs_militia/footlocker01_open.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					StartDisabled = "1"
					targetname = "resource_locker_1_open_model"
					origin = Vector( 0.168735, 0.564598, -1.04904e-005 )
				}
			}
			button_resource_locker_award_sound = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "WAM.PointScored"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					spawnflags = "48"
					targetname = "button_resource_locker_award_sound"
					origin = Vector( 18.0087, 0, 24 )
				}
			}
			resource_locker_1_present_4 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 270, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_collectables/backpack.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "1"
					targetname = "resource_locker_1_present_4"
					origin = Vector( -0.9913, -1, -10 )
					connections =
					{
						OnUser1 =
						{
							cmd1 = "!selfKill0-1"
							cmd2 = "usetarget_lockerRunScriptCodeAwardLockerResource()0-1"
							cmd3 = "button_resource_locker_award_soundPlaySound0-1"
						}
					}
				}
			}
			resource_locker_1_present_5 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 270, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_collectables/backpack.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "1"
					targetname = "resource_locker_1_present_5"
					origin = Vector( 0.00870001, 12, -10 )
					connections =
					{
						OnUser1 =
						{
							cmd1 = "!selfKill0-1"
							cmd2 = "usetarget_lockerRunScriptCodeAwardLockerResource()0-1"
							cmd3 = "button_resource_locker_award_soundPlaySound0-1"
						}
					}
				}
			}
			resource_locker_1_present_3 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 90, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_collectables/backpack.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "1"
					targetname = "resource_locker_1_present_3"
					origin = Vector( 0.00870001, 4, 5.99999 )
					connections =
					{
						OnUser1 =
						{
							cmd1 = "!selfKill0-1"
							cmd2 = "usetarget_lockerRunScriptCodeAwardLockerResource()0-1"
							cmd3 = "button_resource_locker_award_soundPlaySound0-1"
						}
					}
				}
			}
			resource_locker_1_present_2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 270, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_collectables/backpack.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "1"
					targetname = "resource_locker_1_present_2"
					origin = Vector( -0.9913, -1, 5.99999 )
					connections =
					{
						OnUser1 =
						{
							cmd1 = "!selfKill0-1"
							cmd2 = "usetarget_lockerRunScriptCodeAwardLockerResource()0-1"
							cmd3 = "button_resource_locker_award_soundPlaySound0-1"
						}
					}
				}
			}
			resource_locker_1_present_1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 90, 0 )
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_collectables/backpack.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "1"
					targetname = "resource_locker_1_present_1"
					origin = Vector( -0.9913, -2, 14 )
					connections =
					{
						OnUser1 =
						{
							cmd1 = "usetarget_lockerRunScriptCodeAwardLockerResource()0-1"
							cmd2 = "!selfKill0-1"
							cmd3 = "button_resource_locker_award_soundPlaySound0-1"
						}
					}
				}
			}
			button_resource_locker_award_relay = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					spawnflags = "0"
					targetname = "button_resource_locker_award_relay"
					origin = Vector( 22.0087, 22, -3 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "resource_locker_1_present_1Enable0-1"
							cmd2 = "resource_locker_1_present_2Enable0-1"
							cmd3 = "resource_locker_1_present_3Enable0-1"
							cmd4 = "resource_locker_1_present_4Enable0-1"
							cmd5 = "resource_locker_1_present_5Enable0-1"
							cmd6 = "resource_locker_1_present_5FireUser11.8-1"
							cmd7 = "resource_locker_1_present_4FireUser11.4-1"
							cmd8 = "resource_locker_1_present_3FireUser11.1-1"
							cmd9 = "resource_locker_1_present_2FireUser10.8-1"
							cmd10 = "resource_locker_1_present_1FireUser10.5-1"
							cmd11 = "button_lockerKill2-1"
						}
					}
				}
			}
			button_resource_locker_open_sound = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "Trunk.Open"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					spawnflags = "48"
					targetname = "button_resource_locker_open_sound"
					origin = Vector( 18.0087, -17, 1.99999 )
				}
			}
			button_resource_locker_open_sound1 = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "Gallery.GnomeFTW"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					spawnflags = "48"
					targetname = "button_resource_locker_open_sound"
					origin = Vector( 18.0087, -17, 20 )
				}
			}
			usetarget_locker = 
			{
				SpawnInfo =
				{
					classname = "point_script_use_target"
					model = "button_locker"
					origin = Vector( -2, 35.01, -3.01 )
					targetname = "usetarget_locker"
					vscripts = "usetargets/resource_locker_use_target"
					connections =
					{
						OnUser1 =
						{
							cmd1 = "button_resource_locker_award_relayTrigger0.2-1"
							cmd2 = "button_resource_locker_open_soundPlaySound0-1"
							cmd3 = "resource_locker_1_closed_modelKill0-1"
							cmd4 = "resource_locker_1_open_modelEnable0-1"
						}
					}
				}
			}
			button_locker = 
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
					glowbackfacemult = ".2"
					glowcolor = "121 202 0"
					glowrange = "128"
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
					solid = "6"
					spawnflags = "0"
					targetname = "button_locker"
					updatechildren = "0"
					origin = Vector( 14.0087, 0, -2.00001 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // ResourceLocker

RegisterEntityGroup( "ResourceLocker", ResourceLocker )
