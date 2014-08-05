//-------------------------------------------------------
// Autogenerated from 'placeable_resource.vmf'
//-------------------------------------------------------
PowerupShell <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.powerup_resource,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.powerup_resource,
			EntityGroup.SpawnTables.trigger_award_resource,
			EntityGroup.SpawnTables.player_filter,
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
			powerup_resource = 
			{
				SpawnInfo =
				{
					classname = "prop_physics_multiplayer"
					angles = Vector( 0, 0, 0 )
					body = "0"
					BreakableType = "0"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "254 240 67"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					inertiaScale = "1.0"
					massScale = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/items/l4d_gift.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					physicsmode = "0"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "8448"
					targetname = "powerup_resource"
					thinkfunction = "Think"
					vscripts = "powerup_resource"
					origin = Vector( 0, 0, 0 )
				}
			}
			trigger_award_resource = 
			{
				SpawnInfo =
				{
					classname = "script_trigger_once"
					filtername = "player_filter"
					origin = Vector( 0, 0, 10 )
					parentname = "powerup_resource"
					spawnflags = "17"
					targetname = "trigger_award_resource"
					extent = Vector( 24, 24, 10.0000002451205 )
					connections =
					{                        // NEEDED for now due to bug trying to add subtables to the deep copy
						OnTrigger =
						{
					 	}
					}
				}
			}
			player_filter = 
			{
				SpawnInfo =
				{
					classname = "filter_activator_team"
					filterteam = "2"
					parentname = "powerup_resource"
//					Negated = "Allow entities that match criteria"
					targetname = "player_filter"
					origin = Vector(0,0,0)
//					origin = Vector( 0, -2.47947, 42 )
				}
			}
		}
	} // EntityGroup
} // PowerupShell

RegisterEntityGroup( "PowerupShell", PowerupShell )
