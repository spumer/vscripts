//////////////////
// This is the Gnomehunter "complete example" of all the code in the basic tutorial
//    For use in c5m2_park

ModeSpawns <-
[
	 ["ExampleGnome"],
	 ["ExampleGnomeLocker"]
]

ModeState <-
{
	StartActive = true

	CarryingGnome = false
	lockerEntity = null
	gnomeEntity = null
	gnomeInLocker = false

	currentStage = -1 // initialize to -1 since we'll increment it each time GnomeStage() gets called and we want to start at 0
}

ModeOptions <-
{
	WanderingZombieDensityModifier = 0
	BoomerLimit  = 0
	ChargerLimit = 0
	HunterLimit  = 0
	JockeyLimit  = 0
	SpitterLimit = 0
	SmokerLimit  = 0
	MaxSpecials  = 0
	CommonLimit  = 20
	MegaMobSize	 = 30
	TankLimit    = 0
}

function OnGameplayStart()
{
	// Teleport players out of the start room to their start positions
	if (!TeleportPlayersToStartPoints( "playerstart_*" ) )
		printl(" ** TeleportPlayersToStartPoints: Spawn point count or player count incorrect! Verify that there are 4 of each.")

	 // Install the slowpoll function
	ScriptedMode_AddSlowPoll( LockerGnomeSlowPoll )
}

// define any extra object types we are going to allow to be picked up... in this case, the Gnome
function CanPickupObject( object )
{
	if ( object.GetName().find( "gnome" ) )
	{
		return true
	}
	return false
}

function LockerGnomeSlowPoll()
{
	//printl(" ** locker gnome slow poll:" + Time() )

	// if the gnome is already in the locker return
	if( SessionState.gnomeInLocker )
	{
		return
	}

	local INSIDE_LOCKER_DIST = 21
	local NEAR_LOCKER_DIST = 256

	// is the gnome close to the locker?
	local ent = Entities.FindByNameWithin( null, SessionState.gnomeEntity.GetName(), SessionState.lockerEntity.GetOrigin(), NEAR_LOCKER_DIST )

	if( ent ) // We're close!
	{
		// is the gnome inside the locker?
		local dist = ( SessionState.lockerEntity.GetOrigin() - SessionState.gnomeEntity.GetOrigin() ).Length()

		if( dist <= INSIDE_LOCKER_DIST )
		{
			// We're in the locker!  Close it and kill() the gnome
			SessionState.gnomeInLocker = true
			SessionState.gnomeEntity.Kill()

			// play the gnome stored sound
			EmitSoundOn( "Gallery.GnomeFTW", SessionState.lockerEntity )

			// Display some ticker text confirming the rescue of the gnome
			Ticker_NewStr("You saved the gnome! Kill all remaining zombies to win!")

			EntFire( SessionState.lockerEntity.GetName(), "setanimation", "close" )
		}
		else
		{
			EntFire( SessionState.lockerEntity.GetName(), "setanimation", "open" )
		}
	}
}

function GnomeSpawnCB( entity, rarity )
{
	printl(" **** GnomeSpawnCB: I have spawned! My entity is: " + entity + " and my name is: " + entity.GetName() )
	
	entity.ConnectOutput( "OnPlayerPickup", "PickedUp" ) // fires the function GnomePickedUp when OnPlayerPickup fires
	entity.ConnectOutput( "OnPhysGunDrop", "Dropped" ) // fires the function GnomeDropped when OnPhysGunDrop fires

	entity.PrecacheScriptSound( "Lilpeanut.GALLERY_HIT" )
	entity.PrecacheScriptSound( "Lilpeanut.GALLERY_SPAWN" )

	entity.PrecacheScriptSound( "Gallery.GnomeFTW" )


	// store the gnome entity
	SessionState.gnomeEntity = entity
	
	// create a script scope on the gnome
	entity.ValidateScriptScope()

	// get the gnome's script scope
	local gnomeScope = entity.GetScriptScope()

	// inject our pickup function into the gnome
	gnomeScope.PickedUp <- function()
	{
		printl(" ** Gnome picked up!")
		EmitSoundOn( "Lilpeanut.GALLERY_SPAWN", self )

		g_ModeScript.GnomePickedUp()
	}

	gnomeScope.Dropped <- function()
	{
		printl(" ** Gnome dropped!")
		EmitSoundOn( "Lilpeanut.GALLERY_HIT", self )

		g_ModeScript.GnomeDropped()
	}
}

function LockerSpawnCB( entity, rarity )
{
	SessionState.lockerEntity = entity
	//g_ModeScript.ModeState.lockerEntity = entity
}

function OnEntityGroupRegistered( name, group )
{
	printl(" ** Registering: " + name )
	
	if( name == "ExampleGnome" )
	{
		group.GetEntityGroup().SpawnTables[ "gnome" ].PostPlaceCB <- GnomeSpawnCB
	}
	else if( name == "ExampleGnomeLocker" )
	{
		group.GetEntityGroup().SpawnTables[ "locker" ].PostPlaceCB <- LockerSpawnCB
	}
}

function GnomePickedUp()
{
	Ticker_NewStr("Take the gnome to the locker up the stairs and then kill all zombies to win!")

	printl(" ** game mode: Gnome picked up")
	SessionState.CarryingGnome = true
}

function GnomeDropped()
{
	printl(" ** game mode: Gnome dropped")
	SessionState.CarryingGnome = false
}

// stages
FIRST_STAGE		<- 0
SECOND_STAGE	<- 1
THIRD_STAGE		<- 2
FOURTH_STAGE	<- 3

// Gnome stage handler
function GetNextStage()
{
	// determine which stage we should be on
	if( SessionState.gnomeInLocker )
	{
		SessionState.currentStage = FOURTH_STAGE
	}
	else
	{
		SessionState.currentStage++
	}
	
	printl(" ** GnomeStage() called!  We are on stage: " + SessionState.currentStage )

	switch ( SessionState.currentStage )
	{
		case FIRST_STAGE: // setup stage
			SessionOptions.ScriptedStageType = STAGE_SETUP
			SessionOptions.ScriptedStageValue = 10 // seconds to stay in this stage
			break

		case SECOND_STAGE: // common zombie attack!
			SessionOptions.ScriptedStageType = STAGE_PANIC
			SessionOptions.ScriptedStageValue = 1

			// display ticker string based on gnome state
			if( SessionState.gnomeInLocker )
				Ticker_NewStr( "Here come the infected! You must kill them all to win!" )
			else
				Ticker_NewStr( "Here come the infected! Save the gnome and kill infected to win!" )
			break

		case THIRD_STAGE: // reset back to FIRST_STAGE if the gnome hasn't been put in the locker
			SessionOptions.ScriptedStageType = STAGE_DELAY
			SessionOptions.ScriptedStageValue = 10 // delay for 10 seconds

			SessionState.currentStage = FIRST_STAGE // reset our stage back to 0

			Ticker_NewStr( "Phew... you cleared out all the zombies." )
			break

		case FOURTH_STAGE: // you win!  the game will restart after a few moments
			SessionOptions.ScriptedStageType = STAGE_RESULTS
			Ticker_NewStr( "You saved the gnome!  Good job. Resetting..." )
			break
	}
}

// HUD setup
function SetupModeHUD( )
{
	ModeHUD <-
	{
		Fields = 
		{
			gamename    = { slot = HUD_MID_TOP, name = "mode name", dataval = "Gnome Hunter!" }
		}
	}

	// Set up a message ticker that will be displayed below the ScriptedMode HUD
	Ticker_AddToHud( ModeHUD, "Find the gnome! (Hint: it is glowing green)" )

	// load the ModeHUD table
	HUDSetLayout( ModeHUD )
} 