//-------------------------------------------------------
// Autogenerated from 'wrongway_barrier.vmf'
//-------------------------------------------------------
WrongwayBarrier <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.unnamed,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.survivor_filter,
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
			unnamed = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					fademaxdist = "192"
					fademindist = "128"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_placeable/wrong_way.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					origin = Vector( -3.8147e-006, 5.54676e-006, 0 )
				}
			}
			unnamed1 = 
			{
				SpawnInfo =
				{
					classname = "script_trigger_push"
					alternateticksfix = "0"
					filtername = "survivor_filter"
					origin = Vector( -40.01, 0, 128.01 )
					pushdir = Vector( 0, 0, 0 )
					spawnflags = "1"
					speed = "500"
					StartDisabled = "0"
					triggeronstarttouch = "0"
					extent = Vector( 40, 64, 128 )
				}
			}
			survivor_filter = 
			{
				SpawnInfo =
				{
					classname = "filter_activator_team"
					filterteam = "2"
					Negated = "Allow entities that match criteria"
					targetname = "survivor_filter"
					origin = Vector( -8, 0, 128 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // WrongwayBarrier

RegisterEntityGroup( "WrongwayBarrier", WrongwayBarrier )
