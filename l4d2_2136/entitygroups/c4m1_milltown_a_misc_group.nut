//-------------------------------------------------------
// Autogenerated from 'c4m1_milltown_a_misc.vmf'
//-------------------------------------------------------
C4m1MilltownAMisc <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed2,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.unnamed2,
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.attrib9,
			EntityGroup.SpawnTables.attrib8,
			EntityGroup.SpawnTables.attrib7,
			EntityGroup.SpawnTables.attrib6,
			EntityGroup.SpawnTables.attrib5,
			EntityGroup.SpawnTables.attrib4,
			EntityGroup.SpawnTables.attrib3,
			EntityGroup.SpawnTables.attrib2,
			EntityGroup.SpawnTables.attrib1,
			EntityGroup.SpawnTables.attrib,
			EntityGroup.SpawnTables.nav_blocker8,
			EntityGroup.SpawnTables.nav_blocker7,
			EntityGroup.SpawnTables.nav_blocker6,
			EntityGroup.SpawnTables.nav_blocker5,
			EntityGroup.SpawnTables.nav_blocker4,
			EntityGroup.SpawnTables.nav_blocker3,
			EntityGroup.SpawnTables.nav_blocker2,
			EntityGroup.SpawnTables.nav_blocker1,
			EntityGroup.SpawnTables.nav_blocker,
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
			attrib = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "352 192 160"
					mins = "-352 -192 -160"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( -288, 6336, 120 )
				}
			}
			unnamed = 
			{
				SpawnInfo =
				{
					classname = "logic_auto"
					spawnflags = "1"
					origin = Vector( -288, 6336, 152 )
					connections =
					{
						OnMapSpawn =
						{
							cmd1 = "attribKill2-1"
							cmd2 = "nav_blockerBlockNav0-1"
						}
					}
				}
			}
			nav_blocker = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 292, 192, 76 )
					origin = Vector( -100, 5760, 180 )
				}
			}
			attrib1 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "292 192 16"
					mins = "-292 -192 -16"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( -100, 5760, 120 )
				}
			}
			attrib2 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "252 192 304"
					mins = "-252 -192 -16"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( -644, 5760, 120 )
				}
			}
			nav_blocker1 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 252, 192, 160 )
					origin = Vector( -644, 5760, 264 )
				}
			}
			nav_blocker2 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 224, 116, 32 )
					origin = Vector( -160, 4276, 136 )
				}
			}
			attrib3 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "224 116 16"
					mins = "-224 -116 -16"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( -160, 4276, 120 )
				}
			}
			nav_blocker3 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 132, 76, 32 )
					origin = Vector( -252, 4596, 136 )
				}
			}
			attrib4 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "132 76 16"
					mins = "-132 -76 -16"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( -252, 4596, 120 )
				}
			}
			nav_blocker4 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 112, 88, 32 )
					origin = Vector( 2396, 2264, 136 )
				}
			}
			attrib5 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "112 88 16"
					mins = "-112 -88 -16"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( 2396, 2264, 120 )
				}
			}
			nav_blocker5 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 132, 216, 32 )
					origin = Vector( 2640, 2392, 136 )
				}
			}
			attrib6 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "132 216 16"
					mins = "-132 -216 -16"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( 2640, 2392, 120 )
				}
			}
			nav_blocker6 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 74, 218, 32 )
					origin = Vector( 1586, 4414, 250 )
				}
			}
			attrib7 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "74 218 16"
					mins = "-74 -218 -16"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( 1586, 4414, 233.273 )
				}
			}
			nav_blocker7 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 78, 98, 32 )
					origin = Vector( 1434, 4534, 249.273 )
				}
			}
			attrib8 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "78 98 16"
					mins = "-78 -98 -16"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( 1434, 4534, 233.273 )
				}
			}
			attrib9 = 
			{
				SpawnInfo =
				{
					classname = "point_nav_attribute_region"
					maxs = "74 701 32"
					mins = "-74 -701 -32"
					spawnflags = "8194"
					targetname = "attrib"
					origin = Vector( -990, 4285, 251.273 )
				}
			}
			nav_blocker8 = 
			{
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					affectsFlow = "1"
					targetname = "nav_blocker"
					teamToBlock = "-1"
					extent = Vector( 74, 701, 48 )
					origin = Vector( -990, 4285, 272 )
				}
			}
			unnamed1 = 
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
					model = "models/props_unique/caboose01_shelf.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					origin = Vector( -39, 6152, 131 )
				}
			}
			unnamed2 = 
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
					model = "models/props_unique/caboose01_shelf.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					skin = "0"
					solid = "6"
					origin = Vector( -164.105, 6431.64, 138.212 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // C4m1MilltownAMisc

RegisterEntityGroup( "C4m1MilltownAMisc", C4m1MilltownAMisc )
